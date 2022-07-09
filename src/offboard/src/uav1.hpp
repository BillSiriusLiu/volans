#pragma once

#include <ros/ros.h>
#include <Eigen/Eigen>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/PositionTarget.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2/LinearMath/Quaternion.h>
#include <nav_msgs/Path.h>
#include "std_msgs/String.h"
#include "flight_patterns.hpp"

#include <iostream>
#include <string>
using namespace std;

class Uav
{
public:
    int code;
    waypoints wp;
    int move_time_cnt;
    double height;
    double cell_size;

    // ROS communication variables
    ros::Publisher setpoint_pub;          // publisher of setpoint
    ros::Publisher position_pub;          // publisher of position
    ros::Publisher attitude_pub;          // publisher of attitude
    ros::Publisher path_pub;              // publisher of path
    ros::ServiceClient arming_client;     // service of arm
    ros::ServiceClient set_mode_client;   // service of set mode
    ros::Subscriber state_sub;            // subscriber of state
    ros::Subscriber position_sub;         // subscriber of position

    // ROS msgs
    mavros_msgs::State current_state;
    nav_msgs::Path uav_path;
    Eigen::VectorXd drone_pose = Eigen::VectorXd::Zero(6);                       
    Eigen::VectorXd target_pose = Eigen::VectorXd::Zero(6);          //offboard模式下，发送给飞控的期望值
    Eigen::VectorXd origin_pose = Eigen::VectorXd::Zero(6);          // the origin position when offboard
    Eigen::VectorXd target_start_pose = Eigen::VectorXd::Zero(6);    // the fist position on the circle
    static mavros_msgs::SetMode offb_set_mode, land_set_mode, loiter_set_mode;
    static mavros_msgs::CommandBool arm_cmd;
    
    enum
    {
        WAITING,		//等待offboard模式
        CHECKING,		//检查飞机状态
        PREPARE,		//起飞到第一个点
        REST,			//休息一下
        FLY,			//飞圆形路经
        FLYOVER,		//结束
        OVER,
    }fly_state = WAITING;//初始状态WAITING   could have a problem here

    Uav(int c, double h, double c_s):code(c), move_time_cnt(0), height(h), cell_size(c_s){}
    void init(ros::NodeHandle);
    void state_cb(const mavros_msgs::State::ConstPtr& msg){current_state = *msg;}
    void pos_cb(const geometry_msgs::PoseStamped::ConstPtr &msg){
        tf2::Quaternion q(msg->pose.orientation.x,
                          msg->pose.orientation.y,
                          msg->pose.orientation.z,
                          msg->pose.orientation.w);
        double roll, pitch, yaw;
        tf2::Matrix3x3 m(q);
        m.getRPY(roll, pitch, yaw);
        drone_pose[0] = msg->pose.position.x;
        drone_pose[1] = msg->pose.position.y;
        drone_pose[2] = msg->pose.position.z;
        drone_pose[3] = roll;
        drone_pose[4] = pitch;
        drone_pose[5] = yaw;
    }

    bool judge_reach(Eigen::VectorXd);
    void offboard_on();
    void plan_flight(waypoints);
    void flystate_update();
    void publish_path();
    void publish_setpoint(const Eigen::VectorXd&);
    void publish_position(geometry_msgs::PoseStamped);//
    void publish_attitude(geometry_msgs::PoseStamped);//
};
// static variables init
mavros_msgs::SetMode Uav::offb_set_mode;
mavros_msgs::SetMode Uav::land_set_mode;
mavros_msgs::SetMode Uav::loiter_set_mode;
mavros_msgs::CommandBool Uav::arm_cmd;

void Uav::init(ros::NodeHandle nh)
{
    string name = "uav" + to_string(code);

    state_sub = nh.subscribe<mavros_msgs::State>(name + "/mavros/state", 10, &Uav::state_cb, this);
    position_sub = nh.subscribe<geometry_msgs::PoseStamped>(name + "/mavros/local_position/pose", 100, &Uav::pos_cb, this);
    setpoint_pub = nh.advertise<mavros_msgs::PositionTarget>("/mavros/setpoint_raw/local", 10);
    position_pub = nh.advertise<geometry_msgs::PoseStamped>(name + "/mavros/setpoint_position/local", 10);
    attitude_pub = nh.advertise<geometry_msgs::PoseStamped>(name + "/mavros/setpoint_attitude/attitude", 10);
    arming_client = nh.serviceClient<mavros_msgs::CommandBool>(name + "/mavros/cmd/arming");
    set_mode_client = nh.serviceClient<mavros_msgs::SetMode>(name + "/mavros/set_mode");
    path_pub = nh.advertise<nav_msgs::Path>(name + "_path", 10, true);

    offb_set_mode.request.custom_mode = "OFFBOARD";
    land_set_mode.request.custom_mode = "AUTO.LAND";
    loiter_set_mode.request.custom_mode = "AUTO.LOITER";
    arm_cmd.request.value = true;

    uav_path.header.frame_id = "odom";
    uav_path.header.stamp = ros::Time::now();
}

void Uav::publish_setpoint(const Eigen::VectorXd& pos_sp)
{
    //cout << "publish setpoint" << endl;
    mavros_msgs::PositionTarget pos_setpoint;
    //Bitmask toindicate which dimensions should be ignored (1 means ignore,0 means not ignore; Bit 10 must set to 0)
    //Bit 1:x, bit 2:y, bit 3:z, bit 4:vx, bit 5:vy, bit 6:vz, bit 7:ax, bit 8:ay, bit 9:az, bit 10:is_force_sp, bit 11:yaw, bit 12:yaw_rate
    //Bit 10 should set to 0, means is not force sp
    pos_setpoint.type_mask = 0b100111111000;  // 100 111 111 000  xyz + yaw

    pos_setpoint.coordinate_frame = 1;

    pos_setpoint.position.x = pos_sp[0];
    pos_setpoint.position.y = pos_sp[1];
    pos_setpoint.position.z = pos_sp[2];

    pos_setpoint.yaw = pos_sp[5];
    //cout << pos_setpoint << endl;
    setpoint_pub.publish(pos_setpoint);
}

void Uav::publish_position(geometry_msgs::PoseStamped pose)
{
    geometry_msgs::PoseStamped tmp;
    tmp.header.stamp = ros::Time::now();
    tmp.pose.position.x = pose.pose.position.x;
    tmp.pose.position.y = pose.pose.position.y;
    tmp.pose.position.z = pose.pose.position.z;
    tmp.pose.orientation.x = pose.pose.orientation.x;
    tmp.pose.orientation.y = pose.pose.orientation.y;
    tmp.pose.orientation.z = pose.pose.orientation.z;
    tmp.pose.orientation.w = pose.pose.orientation.w;
    position_pub.publish(tmp);
    attitude_pub.publish(tmp);
}

void Uav::publish_attitude(geometry_msgs::PoseStamped pose)
{
    return;
    geometry_msgs::PoseStamped tmp;
    tmp.header.stamp = ros::Time::now();
    tmp.pose.position.x = pose.pose.position.x;
    tmp.pose.position.y = pose.pose.position.y;
    tmp.pose.position.z = pose.pose.position.z;
    tmp.pose.orientation.x = pose.pose.orientation.x;
    tmp.pose.orientation.y = pose.pose.orientation.y;
    tmp.pose.orientation.z = pose.pose.orientation.z;
    tmp.pose.orientation.w = pose.pose.orientation.w;
    attitude_pub.publish(tmp);
}

bool Uav::judge_reach(Eigen::VectorXd pose)
{
    if (abs(drone_pose[0] - pose[0]) < 1 && abs(drone_pose[1] - pose[1]) < 1 && abs(drone_pose[2] - pose[2]) < 1
            //&& abs(drone_pose[3] - pose[3]) < pi/6 && abs(drone_pose[4] - pose[4]) < pi/6
            && abs(drone_pose[5] - pose[5]) < pi/6)
        return true;
    return false;
}

void Uav::offboard_on()
{
   if( current_state.mode != "OFFBOARD"){
        if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
            ROS_INFO("Offboard enabled");
        }
        else
            cout << "offboard failed" << endl;
    }
    else {
        if( !current_state.armed){
            if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                ROS_INFO("Vehicle armed");
            }
        }
    }
}

void Uav::plan_flight(waypoints wps)
{
    wp = wps;
}

void Uav::flystate_update()
{
    switch(fly_state)
	{
		case WAITING:
			if(current_state.mode != "OFFBOARD")//等待offboard模式
			{   
                target_pose = drone_pose;
                origin_pose = drone_pose;    
                publish_setpoint(target_pose);
                //ROS_INFO("Waiting for OFFBOARD command...");
			}
			else
			{
                target_pose = origin_pose;
                publish_setpoint(target_pose);
				fly_state = CHECKING;
                //ROS_INFO("OFFBOARD command recieved!");
            }
			break;
		case CHECKING:
			if(drone_pose[0] == 0 && drone_pose[1] == 0) 			//没有位置信息则执行降落模式
			{
				cout << "Check error, make sure have local location" <<endl;
                if( set_mode_client.call(land_set_mode) &&
                        land_set_mode.response.mode_sent){
                    ROS_INFO("land set");
                }
				fly_state = WAITING;
			}
			else
				fly_state = PREPARE;
			break;
		case PREPARE:
            target_pose = origin_pose;
            target_pose[2] = 5; //起飞到轨迹的第一个

            publish_setpoint(target_pose);

            if (judge_reach(target_pose))
			    fly_state = REST;
            
			if(current_state.mode != "OFFBOARD")				//如果在准备中途中切换到onboard，则跳到WAITING
				fly_state = WAITING;
			break;
		case REST:	// wait for other drones in position
            move_time_cnt = 0;
			fly_state = FLY;

			if(current_state.mode != "OFFBOARD")				//如果在REST途中切换到onboard，则跳到WAITING
				fly_state = WAITING;
			break;
		case FLY:
			{
                target_pose = wp[move_time_cnt];
                publish_setpoint(target_pose);

                if (judge_reach(target_pose))
                    ++move_time_cnt;
                
                if (move_time_cnt == wp.size())
                    fly_state = FLYOVER;

				if(current_state.mode != "OFFBOARD")			//如果在飞圆形中途中切换到onboard，则跳到WAITING
					fly_state = WAITING;
			}
			break;
		case FLYOVER:
			{
                target_pose = origin_pose;
                target_pose[2] = 5;
                publish_setpoint(target_pose);

                if (judge_reach(target_pose))
                {
                    if( set_mode_client.call(land_set_mode) &&
                            land_set_mode.response.mode_sent)
                        ROS_INFO("land set");
				    fly_state = OVER;
                }
			}
			break;
		default:
            cout << "flight over" << endl;
    }
} 

void Uav::publish_path()
{
    geometry_msgs::PoseStamped pose;
    ros::Time current_time = ros::Time::now();
    
    pose.pose.position.x = drone_pose[0];
    pose.pose.position.y = drone_pose[1];
    pose.pose.position.z = drone_pose[2];
    tf2::Quaternion q;
    q.setRPY(drone_pose[3], drone_pose[4], drone_pose[5]);
    pose.pose.orientation.x = q.x();
    pose.pose.orientation.y = q.y();
    pose.pose.orientation.z = q.z();
    pose.pose.orientation.w = q.w();

    pose.header.frame_id = "odom";
    pose.header.stamp = current_time;
    
    uav_path.poses.push_back(pose);
    path_pub.publish(uav_path);
}

void set_value(Eigen::VectorXd a, Eigen::VectorXd b)
{
    for (int i = 0; i < a.size(); ++i)
        a[i] = b[i];
}              // publisher of path
    ros::ServiceClient arming_client;     // service of arm
    ros::ServiceClient set_mode_client;   // service of set mode
    ros::Subscriber state_sub;            // subscriber of state
    ros::Subscriber position_sub;         // subscriber of position

    // ROS msgs
    mavros_msgs::State current_state;
    nav_msgs::Path uav_path;
    Eigen::VectorXd drone_pose = Eigen::VectorXd::Zero(6);                       
    Eigen::VectorXd target_pose = Eigen::VectorXd::Zero(6);          //offboard模式下，发送给飞控的期望值
    Eigen::VectorXd origin_pose = Eigen::VectorXd::Zero(6);          // the origin position when offboard
    Eigen::VectorXd target_start_pose = Eigen::VectorXd::Zero(6);    // the fist position on the circle
    static mavros_msgs::SetMode offb_set_mode, land_set_mode, loiter_set_mode;
    static mavros_msgs::CommandBool arm_cmd;
    
    enum
    {
        WAITING,		//等待offboard模式
        CHECKING,		//检查飞机状态
        PREPARE,		//起飞到第一个点
        REST,			//休息一下
        FLY,			//飞圆形路经
        FLYOVER,		//结束
        OVER,
    }fly_state = WAITING;//初始状态WAITING   could have a problem here

    Uav(int c, double h, double c_s):code(c), move_time_cnt(0), height(h), cell_size(c_s){}
    void init(ros::NodeHandle);
    void state_cb(const mavros_msgs::State::ConstPtr& msg){current_state = *msg;}
    void pos_cb(const geometry_msgs::PoseStamped::ConstPtr &msg){
        tf2::Quaternion q(msg->pose.orientation.x,
                          msg->pose.orientation.y,
                          msg->pose.orientation.z,
                          msg->pose.orientation.w);
        double roll, pitch, yaw;
        tf2::Matrix3x3 m(q);
        m.getRPY(roll, pitch, yaw);
        drone_pose[0] = msg->pose.position.x;
        drone_pose[1] = msg->pose.position.y;
        drone_pose[2] = msg->pose.position.z;
        drone_pose[3] = roll;
        drone_pose[4] = pitch;
        drone_pose[5] = yaw;
    }

    bool judge_reach(Eigen::VectorXd);
    void offboard_on();
    void plan_flight(waypoints);
    void flystate_update();
    void publish_path();
    void publish_setpoint(const Eigen::VectorXd&);
    void publish_position(geometry_msgs::PoseStamped);//
    void publish_attitude(geometry_msgs::PoseStamped);//
};
// static variables init
mavros_msgs::SetMode Uav::offb_set_mode;
mavros_msgs::SetMode Uav::land_set_mode;
mavros_msgs::SetMode Uav::loiter_set_mode;
mavros_msgs::CommandBool Uav::arm_cmd;

void Uav::init(ros::NodeHandle nh)
{
    string name = "uav" + to_string(code);

    state_sub = nh.subscribe<mavros_msgs::State>(name + "/mavros/state", 10, &Uav::state_cb, this);
    position_sub = nh.subscribe<geometry_msgs::PoseStamped>(name + "/mavros/local_position/pose", 100, &Uav::pos_cb, this);
    setpoint_pub = nh.advertise<mavros_msgs::PositionTarget>("/mavros/setpoint_raw/local", 10);
    position_pub = nh.advertise<geometry_msgs::PoseStamped>(name + "/mavros/setpoint_position/local", 10);
    attitude_pub = nh.advertise<geometry_msgs::PoseStamped>(name + "/mavros/setpoint_attitude/attitude", 10);
    arming_client = nh.serviceClient<mavros_msgs::CommandBool>(name + "/mavros/cmd/arming");
    set_mode_client = nh.serviceClient<mavros_msgs::SetMode>(name + "/mavros/set_mode");
    path_pub = nh.advertise<nav_msgs::Path>(name + "_path", 10, true);

    offb_set_mode.request.custom_mode = "OFFBOARD";
    land_set_mode.request.custom_mode = "AUTO.LAND";
    loiter_set_mode.request.custom_mode = "AUTO.LOITER";
    arm_cmd.request.value = true;

    uav_path.header.frame_id = "odom";
    uav_path.header.stamp = ros::Time::now();
}

void Uav::publish_setpoint(const Eigen::VectorXd& pos_sp)
{
    //cout << "publish setpoint" << endl;
    mavros_msgs::PositionTarget pos_setpoint;
    //Bitmask toindicate which dimensions should be ignored (1 means ignore,0 means not ignore; Bit 10 must set to 0)
    //Bit 1:x, bit 2:y, bit 3:z, bit 4:vx, bit 5:vy, bit 6:vz, bit 7:ax, bit 8:ay, bit 9:az, bit 10:is_force_sp, bit 11:yaw, bit 12:yaw_rate
    //Bit 10 should set to 0, means is not force sp
    pos_setpoint.type_mask = 0b100111111000;  // 100 111 111 000  xyz + yaw

    pos_setpoint.coordinate_frame = 1;

    pos_setpoint.position.x = pos_sp[0];
    pos_setpoint.position.y = pos_sp[1];
    pos_setpoint.position.z = pos_sp[2];

    pos_setpoint.yaw = pos_sp[5];
    //cout << pos_setpoint << endl;
    setpoint_pub.publish(pos_setpoint);
}

void Uav::publish_position(geometry_msgs::PoseStamped pose)
{
    geometry_msgs::PoseStamped tmp;
    tmp.header.stamp = ros::Time::now();
    tmp.pose.position.x = pose.pose.position.x;
    tmp.pose.position.y = pose.pose.position.y;
    tmp.pose.position.z = pose.pose.position.z;
    tmp.pose.orientation.x = pose.pose.orientation.x;
    tmp.pose.orientation.y = pose.pose.orientation.y;
    tmp.pose.orientation.z = pose.pose.orientation.z;
    tmp.pose.orientation.w = pose.pose.orientation.w;
    position_pub.publish(tmp);
    attitude_pub.publish(tmp);
}

void Uav::publish_attitude(geometry_msgs::PoseStamped pose)
{
    return;
    geometry_msgs::PoseStamped tmp;
    tmp.header.stamp = ros::Time::now();
    tmp.pose.position.x = pose.pose.position.x;
    tmp.pose.position.y = pose.pose.position.y;
    tmp.pose.position.z = pose.pose.position.z;
    tmp.pose.orientation.x = pose.pose.orientation.x;
    tmp.pose.orientation.y = pose.pose.orientation.y;
    tmp.pose.orientation.z = pose.pose.orientation.z;
    tmp.pose.orientation.w = pose.pose.orientation.w;
    attitude_pub.publish(tmp);
}

bool Uav::judge_reach(Eigen::VectorXd pose)
{
    if (abs(drone_pose[0] - pose[0]) < 1 && abs(drone_pose[1] - pose[1]) < 1 && abs(drone_pose[2] - pose[2]) < 1
            //&& abs(drone_pose[3] - pose[3]) < pi/6 && abs(drone_pose[4] - pose[4]) < pi/6
            && abs(drone_pose[5] - pose[5]) < pi/6)
        return true;
    return false;
}

void Uav::offboard_on()
{
   if( current_state.mode != "OFFBOARD"){
        if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
            ROS_INFO("Offboard enabled");
        }
        else
            cout << "offboard failed" << endl;
    }
    else {
        if( !current_state.armed){
            if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                ROS_INFO("Vehicle armed");
            }
        }
    }
}

void Uav::plan_flight(waypoints wps)
{
    wp = wps;
}

void Uav::flystate_update()
{
    switch(fly_state)
	{
		case WAITING:
			if(current_state.mode != "OFFBOARD")//等待offboard模式
			{   
                target_pose = drone_pose;
                origin_pose = drone_pose;    
                publish_setpoint(target_pose);
                //ROS_INFO("Waiting for OFFBOARD command...");
			}
			else
			{
                target_pose = origin_pose;
                publish_setpoint(target_pose);
				fly_state = CHECKING;
                //ROS_INFO("OFFBOARD command recieved!");
            }
			break;
		case CHECKING:
			if(drone_pose[0] == 0 && drone_pose[1] == 0) 			//没有位置信息则执行降落模式
			{
				cout << "Check error, make sure have local location" <<endl;
                if( set_mode_client.call(land_set_mode) &&
                        land_set_mode.response.mode_sent){
                    ROS_INFO("land set");
                }
				fly_state = WAITING;
			}
			else
				fly_state = PREPARE;
			break;
		case PREPARE:
            target_pose = origin_pose;
            target_pose[2] = 5; //起飞到轨迹的第一个

            publish_setpoint(target_pose);

            if (judge_reach(target_pose))
			    fly_state = REST;
            
			if(current_state.mode != "OFFBOARD")				//如果在准备中途中切换到onboard，则跳到WAITING
				fly_state = WAITING;
			break;
		case REST:	// wait for other drones in position
            move_time_cnt = 0;
			fly_state = FLY;

			if(current_state.mode != "OFFBOARD")				//如果在REST途中切换到onboard，则跳到WAITING
				fly_state = WAITING;
			break;
		case FLY:
			{
                target_pose = wp[move_time_cnt];
                publish_setpoint(target_pose);

                if (judge_reach(target_pose))
                    ++move_time_cnt;
                
                if (move_time_cnt == wp.size())
                    fly_state = FLYOVER;

				if(current_state.mode != "OFFBOARD")			//如果在飞圆形中途中切换到onboard，则跳到WAITING
					fly_state = WAITING;
			}
			break;
		case FLYOVER:
			{
                target_pose = origin_pose;
                target_pose[2] = 5;
                publish_setpoint(target_pose);

                if (judge_reach(target_pose))
                {
                    if( set_mode_client.call(land_set_mode) &&
                            land_set_mode.response.mode_sent)
                        ROS_INFO("land set");
				    fly_state = OVER;
                }
			}
			break;
		default:
            cout << "flight over" << endl;
    }
} 

void Uav::publish_path()
{
    geometry_msgs::PoseStamped pose;
    ros::Time current_time = ros::Time::now();
    
    pose.pose.position.x = drone_pose[0];
    pose.pose.position.y = drone_pose[1];
    pose.pose.position.z = drone_pose[2];
    tf2::Quaternion q;
    q.setRPY(drone_pose[3], drone_pose[4], drone_pose[5]);
    pose.pose.orientation.x = q.x();
    pose.pose.orientation.y = q.y();
    pose.pose.orientation.z = q.z();
    pose.pose.orientation.w = q.w();

    pose.header.frame_id = "odom";
    pose.header.stamp = current_time;
    
    uav_path.poses.push_back(pose);
    path_pub.publish(uav_path);
}

void set_value(Eigen::VectorXd a, Eigen::VectorXd b)
{
    for (int i = 0; i < a.size(); ++i)
        a[i] = b[i];
}