#pragma once

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/PositionTarget.h>
#include <mavros_msgs/MountControl.h>
#include <mavros_msgs/MountConfigure.h>
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
    ros::Publisher mount_pub;             // publisher of mount
    ros::Publisher path_pub;              // publisher of path
    ros::ServiceClient arming_client;     // service of arm
    ros::ServiceClient set_mode_client;   // service of set mode
    ros::Subscriber state_sub;            // subscriber of state
    ros::Subscriber position_sub;         // subscriber of position
    //ros::Subscriber mount_sub;            // subscriber of mount

    // ROS msgs
    mavros_msgs::State current_state;
    nav_msgs::Path uav_path;
    geometry_msgs::PoseStamped drone_pose;                       
    geometry_msgs::PoseStamped target_pose; //offboard模式下，发送给飞控的期望值
    geometry_msgs::PoseStamped origin_pose; // the origin position when offboard
    geometry_msgs::PoseStamped target_start_pose; // the fist position on the circle
    static mavros_msgs::SetMode offb_set_mode, land_set_mode, loiter_set_mode;
    static mavros_msgs::CommandBool arm_cmd;
    static mavros_msgs::MountConfigure mount_config;

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
    void pos_cb(const geometry_msgs::PoseStamped::ConstPtr &msg){drone_pose = *msg;}    
    
    bool judge_reach(geometry_msgs::PoseStamped);
    void offboard_on();
    void plan_flight(waypoints);
    void flystate_update();
    void publish_path();
    void publish_position(geometry_msgs::PoseStamped);
    void publish_attitude(geometry_msgs::PoseStamped);
};
// static variables init
mavros_msgs::SetMode Uav::offb_set_mode;
mavros_msgs::SetMode Uav::land_set_mode;
mavros_msgs::SetMode Uav::loiter_set_mode;
mavros_msgs::CommandBool Uav::arm_cmd;
mavros_msgs::MountConfigure Uav::mount_config;

void Uav::init(ros::NodeHandle nh)
{
    string name = "/uav" + to_string(code);

    mount_pub = nh.advertise<mavros_msgs::MountControl>(name + "/mavros/mount_control/command", 10);
    setpoint_pub = nh.advertise<mavros_msgs::PositionTarget>(name + "/mavros/setpoint_raw/local", 10);
    state_sub = nh.subscribe<mavros_msgs::State>(name + "/mavros/state", 10, &Uav::state_cb, this);
    position_sub = nh.subscribe<geometry_msgs::PoseStamped>(name + "/mavros/local_position/pose", 100, &Uav::pos_cb, this);
    position_pub = nh.advertise<geometry_msgs::PoseStamped>(name + "/mavros/setpoint_position/local", 10);
    attitude_pub = nh.advertise<geometry_msgs::PoseStamped>(name + "/mavros/setpoint_attitude/attitude", 10);
    arming_client = nh.serviceClient<mavros_msgs::CommandBool>(name + "/mavros/cmd/arming");
    set_mode_client = nh.serviceClient<mavros_msgs::SetMode>(name + "/mavros/set_mode");
    //mount_client = nh.serviceClient<mavros_msgs::MountConfigure>(name + "/mavros/mount_control/configure");
    path_pub = nh.advertise<nav_msgs::Path>(name + "_path", 10, true);
    

    offb_set_mode.request.custom_mode = "OFFBOARD";
    land_set_mode.request.custom_mode = "AUTO.LAND";
    loiter_set_mode.request.custom_mode = "AUTO.LOITER";
    arm_cmd.request.value = true;
    mount_config.request.stabilize_roll = true;
    mount_config.request.stabilize_pitch = true;
    mount_config.request.stabilize_yaw = true;

    uav_path.header.frame_id = "odom";
    uav_path.header.stamp = ros::Time::now();
}

void Uav::publish_position(geometry_msgs::PoseStamped pose)
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
    position_pub.publish(tmp);
    attitude_pub.publish(tmp);
}

void Uav::publish_attitude(geometry_msgs::PoseStamped pose)
{
    tf2::Quaternion q(pose.pose.orientation.x,
                      pose.pose.orientation.y,
                      pose.pose.orientation.z,
                      pose.pose.orientation.w);

    double roll, pitch, yaw;
    tf2::Matrix3x3 m(q);
    m.getRPY(roll, pitch, yaw);

    mavros_msgs::PositionTarget pos_setpoint;
    pos_setpoint.header.stamp = ros::Time::now();
    //Bitmask toindicate which dimensions should be ignored (1 means ignore,0 means not ignore; Bit 10 must set to 0)
    //Bit 1:x, bit 2:y, bit 3:z, bit 4:vx, bit 5:vy, bit 6:vz, bit 7:ax, bit 8:ay, bit 9:az, bit 10:is_force_sp, bit 11:yaw, bit 12:yaw_rate
    //Bit 10 should set to 0, means is not force sp
    pos_setpoint.type_mask = 0b100111111000;  // 100 111 111 000  xyz + yaw

    // FRAME_LOCAL_NED = 1; FRAME_LOCAL_OFFSET_NED = 7; FRAME_BODY_NED = 8 ;FRAME_BODY_OFFSET_NED = 9
    pos_setpoint.coordinate_frame = 1;

    pos_setpoint.position.x = pose.pose.position.x;
    pos_setpoint.position.y = pose.pose.position.y;
    pos_setpoint.position.z = pose.pose.position.z;
    
    pos_setpoint.yaw = yaw;
    
    this->setpoint_pub.publish(pos_setpoint);

    mavros_msgs::MountControl mc;
    mc.header.stamp = ros::Time::now();
    mc.mode = 2;
    mc.pitch = pitch;
    mc.roll = roll;
    mc.yaw = yaw;

    //mount_client.call(mount_config);
    //this->mount_pub.publish(mc);
}

bool Uav::judge_reach(geometry_msgs::PoseStamped pose)
{
    tf2::Quaternion q1(drone_pose.pose.orientation.x, drone_pose.pose.orientation.y, 
                       drone_pose.pose.orientation.z, drone_pose.pose.orientation.w);
    tf2::Quaternion q2(pose.pose.orientation.x, pose.pose.orientation.y, 
                       pose.pose.orientation.z, pose.pose.orientation.w);
    
    double roll1, roll2, pitch1, pitch2, yaw1, yaw2;
    tf2::Matrix3x3 m1(q1);
    tf2::Matrix3x3 m2(q2);
    m1.getRPY(roll1, pitch1, yaw1);
    m2.getRPY(roll2, pitch2, yaw2);

    if (abs(drone_pose.pose.position.x - pose.pose.position.x) < 1 
            && abs(drone_pose.pose.position.y - pose.pose.position.y) < 1
            && abs(drone_pose.pose.position.z - pose.pose.position.z) < 1
            && abs(roll1 - roll2) < pi/12 && abs(pitch1 - pitch2) < pi/12
            && abs(yaw1 - yaw2) < pi/12)
        return true;
    return false;
}

void Uav::offboard_on()
{
   if( current_state.mode != "OFFBOARD"){
        if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
            //ROS_INFO("Offboard enabled");
        }
        else
            cout << "offboard failed" << endl;
    }
    else {
        if( !current_state.armed){
            if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
            //    ROS_INFO("Vehicle armed");
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
                position_pub.publish(target_pose);
                ROS_INFO("Waiting for OFFBOARD command...");
			}
			else
			{
                target_pose = origin_pose;
                position_pub.publish(target_pose);
				fly_state = CHECKING;
                ROS_INFO("OFFBOARD command recieved!");
            }
			break;
		case CHECKING:
			if(drone_pose.pose.position.x == 0 && drone_pose.pose.position.y == 0) 			//没有位置信息则执行降落模式
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
            target_pose.pose.position.x =  origin_pose.pose.position.x; //起飞到轨迹的第一个
            target_pose.pose.position.y =  origin_pose.pose.position.y;
            target_pose.pose.position.z = 5;
            position_pub.publish(target_pose);

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
                position_pub.publish(target_pose);

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
                target_pose.pose.position.x = origin_pose.pose.position.x;
				target_pose.pose.position.y = origin_pose.pose.position.y;
				target_pose.pose.position.z = 5;

                position_pub.publish(target_pose);

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
    
    pose = drone_pose;
    pose.header.frame_id = "odom";
    pose.header.stamp = current_time;
    
    uav_path.poses.push_back(pose);
    path_pub.publish(uav_path);
}