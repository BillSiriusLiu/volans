/**
 * @file offb_node.cpp
 * @brief Offboard control example node, written with MAVROS version 0.19.x, PX4 Pro Flight
 * Stack and tested in Gazebo SITL
 */

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include "back_and_forth.hpp"
#include <nav_msgs/Path.h>

#include <iostream>
#include <string>
#include <tf2/LinearMath/Quaternion.h>
using namespace std;

mavros_msgs::State current_state_0;
mavros_msgs::State current_state_1;
void state_cb_0(const mavros_msgs::State::ConstPtr& msg){current_state_0 = *msg;}
void state_cb_1(const mavros_msgs::State::ConstPtr& msg){current_state_1 = *msg;}

geometry_msgs::PoseStamped pos_drone_0;
geometry_msgs::PoseStamped pos_drone_1;                        
void pos_cb_0(const geometry_msgs::PoseStamped::ConstPtr &msg){pos_drone_0 = *msg;}
void pos_cb_1(const geometry_msgs::PoseStamped::ConstPtr &msg){pos_drone_1 = *msg;}

ros::Publisher local_pos_pub_0;
ros::ServiceClient arming_client_0;
ros::ServiceClient set_mode_client_0;
ros::Publisher uav0_path_pub;

ros::Publisher local_pos_pub_1;
ros::ServiceClient arming_client_1;
ros::ServiceClient set_mode_client_1;
ros::Publisher uav1_path_pub;

geometry_msgs::PoseStamped pos_target_0;//offboard模式下，发送给飞控的期望值
geometry_msgs::PoseStamped pos_target_1;

double height = 50;
double height_1 = 30;
double length = 200; // should be 700
double width = 200; // should be 700
double c_high = 100;
double c_low = 60;

double MoveTimeCnt = 0;
double MoveTimeCnt_0 = 0;
double MoveTimeCnt_1 = 0;
int now = 0;
int now_1 = 0;
bool in_flight_1 = 0;

double velocity = 0.5; // real velocity is velocity multiply by 2(update rate)
double period = 1000.0;   //减小数值可增大飞圆形的速度

nav_msgs::Path uav0_path;
nav_msgs::Path uav1_path;

geometry_msgs::PoseStamped origin_pos_drone_0; // the origin position when offboard
geometry_msgs::PoseStamped start_pos_target_0; // the fist position on the circle

geometry_msgs::PoseStamped origin_pos_drone_1; // the origin position when offboard
geometry_msgs::PoseStamped start_pos_target_1; // the fist position on the circle

enum
{
    WAITING,		//等待offboard模式
	CHECKING,		//检查飞机状态
	PREPARE,		//起飞到第一个点
	REST,			//休息一下
	FLY,			//飞圆形路经
	FLYOVER,		//结束
    OVER,
}FlyState_0 = WAITING, FlyState_1 = WAITING;//初始状态WAITING

mavros_msgs::SetMode offb_set_mode, land_set_mode;
mavros_msgs::CommandBool arm_cmd;

void FlyState_update()
{
	switch(FlyState_0)
	{
		case WAITING:
			if(current_state_0.mode != "OFFBOARD")//等待offboard模式
			{
				pos_target_0.pose.position.x = pos_drone_0.pose.position.x;
				pos_target_0.pose.position.y = pos_drone_0.pose.position.y;
				pos_target_0.pose.position.z = pos_drone_0.pose.position.z;
				origin_pos_drone_0.pose.position.x = pos_drone_0.pose.position.x;
				origin_pos_drone_0.pose.position.y = pos_drone_0.pose.position.y;
                origin_pos_drone_0.pose.position.z = pos_drone_0.pose.position.z;
                local_pos_pub_0.publish(pos_target_0);
			}
			else
			{
                pos_target_0.pose.position.x = origin_pos_drone_0.pose.position.x;
				pos_target_0.pose.position.y = origin_pos_drone_0.pose.position.y;
                pos_target_0.pose.position.z = origin_pos_drone_0.pose.position.z;
                local_pos_pub_0.publish(pos_target_0);
				FlyState_0 = CHECKING;
                cout << "0 enter CHECKING" << endl;
            }
			break;
		case CHECKING:
			if(pos_drone_0.pose.position.x == 0 && pos_drone_0.pose.position.y == 0) 			//没有位置信息则执行降落模式
			{
				cout << "Check error, make sure have local location" <<endl;
                if( set_mode_client_0.call(land_set_mode) &&
                        land_set_mode.response.mode_sent){
                    ROS_INFO("0 land set");
                }
				FlyState_0 = WAITING;
			}
			else
			{
				FlyState_0 = PREPARE;
				MoveTimeCnt_0 = 0;
			}
			cout << "0 CHECKING" <<endl;
			break;
		case PREPARE:											//起飞到圆轨迹的第一个点
            if (abs(pos_drone_0.pose.position.z - height) > 1)
            {
                pos_target_0.pose.position.x = origin_pos_drone_0.pose.position.x;
                pos_target_0.pose.position.y = origin_pos_drone_0.pose.position.y;
                pos_target_0.pose.position.z = height;
            }
            else
            {
                pos_target_0.pose.position.x = setpoints[0][0];
                pos_target_0.pose.position.y = setpoints[0][1];
                pos_target_0.pose.position.z = height;
            }

            local_pos_pub_0.publish(pos_target_0);

			if(abs(pos_drone_0.pose.position.x - setpoints[0][0]) < 1)
			{
				FlyState_0 = REST;
				//MoveTimeCnt_0 = 0;
			}
			if(current_state_0.mode != "OFFBOARD")				//如果在准备中途中切换到onboard，则跳到WAITING
				FlyState_0 = WAITING;
			break;
		case REST:	// why does it have to rest?
			pos_target_0.pose.position.x = setpoints[0][0];
            pos_target_0.pose.position.y = setpoints[0][1];
            pos_target_0.pose.position.z = height;

            local_pos_pub_0.publish(pos_target_0);
			
            MoveTimeCnt_0 += 1;

			if(MoveTimeCnt_0 >= 100)
			{
				MoveTimeCnt = 0;
                MoveTimeCnt_0 = 0;
                if (FlyState_1 == FLY || FlyState_1 == REST)
				    FlyState_0 = FLY;
			}
			if(current_state_0.mode != "OFFBOARD")				//如果在REST途中切换到onboard，则跳到WAITING
				FlyState_0 = WAITING;
            //cout << "0 REST" << endl;
			break;
		case FLY:
			{
				if (abs(pos_drone_0.pose.position.x - setpoints[now][0]) < 1 && abs(pos_drone_0.pose.position.y - setpoints[now][1]) < 1)
                {
                    if (rand()%10 < 3)
                    {
                        cout << "found interesting cell at (" << setpoints[now][0] << " " << setpoints[now][1] << ")" << endl;
                        interest.push(now);
                    }
                    ++now;
                }
                if (now == cnt)
                {
                    FlyState_0 = FLYOVER;
                    break;
                }
				pos_target_0.pose.position.x = setpoints[now][0];
				pos_target_0.pose.position.y = setpoints[now][1];
				pos_target_0.pose.position.z = height; 

                local_pos_pub_0.publish(pos_target_0);
				if(current_state_0.mode != "OFFBOARD")			//如果在飞圆形中途中切换到onboard，则跳到WAITING
					FlyState_0 = WAITING;
			}
            
            //cout << "from (" << pos_drone_0.pose.position.x << "," << pos_drone_0.pose.position.y << ")" << endl
            //        << "to (" << pos_target_0.pose.position.x << "," << pos_target_0.pose.position.y << ")" << endl;
			break;
		case FLYOVER:
			{
                pos_target_0.pose.position.x = origin_pos_drone_0.pose.position.x;
				pos_target_0.pose.position.y = origin_pos_drone_0.pose.position.y;
				pos_target_0.pose.position.z = height;

                local_pos_pub_0.publish(pos_target_0);

                if (abs(pos_drone_0.pose.position.x - origin_pos_drone_0.pose.position.x) < 1 
                        || abs(pos_drone_0.pose.position.y - origin_pos_drone_0.pose.position.y) < 1)
                {
                    if( set_mode_client_0.call(land_set_mode) &&
                            land_set_mode.response.mode_sent)
                        ROS_INFO("0 land set");
				    FlyState_0 = OVER;
                }
			}
			//cout << "FLYOVER" <<endl;
			break;
		default:
            cout << "0 flight over" << endl;
    }		
    
    switch(FlyState_1)
	{
		case WAITING:
			if(current_state_1.mode != "OFFBOARD")//等待offboard模式
			{
				pos_target_1.pose.position.x = pos_drone_1.pose.position.x;
				pos_target_1.pose.position.y = pos_drone_1.pose.position.y;
				pos_target_1.pose.position.z = pos_drone_1.pose.position.z;
				origin_pos_drone_1.pose.position.x = pos_drone_1.pose.position.x;
				origin_pos_drone_1.pose.position.y = pos_drone_1.pose.position.y;
                origin_pos_drone_1.pose.position.z = pos_drone_1.pose.position.z;
                local_pos_pub_1.publish(pos_target_1);
			}
			else
			{
                pos_target_1.pose.position.x = origin_pos_drone_1.pose.position.x;
				pos_target_1.pose.position.y = origin_pos_drone_1.pose.position.y;
                pos_target_1.pose.position.z = origin_pos_drone_1.pose.position.z;
                local_pos_pub_1.publish(pos_target_1);
				FlyState_1 = CHECKING;
                cout << "1 enter CHECKING" << endl;
			}
			//cout << "1 WAITING" <<endl;
			break;
		case CHECKING:
			if(pos_drone_1.pose.position.x == 0 && pos_drone_1.pose.position.y == 0) 			//没有位置信息则执行降落模式
			{
				cout << "Check error, make sure have local location" <<endl;
                if( set_mode_client_1.call(land_set_mode) &&
                        land_set_mode.response.mode_sent){
                    ROS_INFO("1 land set");
                }
				FlyState_1 = WAITING;
			}
			else
			{
				FlyState_1 = PREPARE;
				MoveTimeCnt_1 = 0;
			}
			cout << "1 CHECKING" <<endl;
			break;
		case PREPARE:											//起飞到圆轨迹的第一个点
			if (abs(pos_drone_1.pose.position.z - height_1) > 1)
            {
                pos_target_1.pose.position.x = origin_pos_drone_1.pose.position.x;
                pos_target_1.pose.position.y = origin_pos_drone_1.pose.position.y;
                pos_target_1.pose.position.z = height_1;
            }
            else
            {
                pos_target_1.pose.position.x = setpoints_1[0][0];
                pos_target_1.pose.position.y = setpoints_1[0][1];
                pos_target_1.pose.position.z = height_1;
            }
            
            local_pos_pub_1.publish(pos_target_1);

			if(abs(pos_drone_1.pose.position.x - setpoints_1[0][0]) < 1)
			{
				FlyState_1 = REST;
				//MoveTimeCnt_1 = 0;
			}
			if(current_state_1.mode != "OFFBOARD")				//如果在准备中途中切换到onboard，则跳到WAITING
				FlyState_1 = WAITING;
			break;
		case REST:	// why does it have to rest?
			pos_target_1.pose.position.x = setpoints_1[0][0];
            pos_target_1.pose.position.y = setpoints_1[0][1];
            pos_target_1.pose.position.z = height_1;
			
            local_pos_pub_1.publish(pos_target_1);
			MoveTimeCnt_1 += 1;

			if(MoveTimeCnt_1 >= 100)
			{
				MoveTimeCnt = 0;
                MoveTimeCnt_1 = 0;
                if (FlyState_0 == FLY || FlyState_0 == REST)
				    FlyState_1 = FLY;
			}
			//if(current_state_1.mode != "OFFBOARD")				//如果在REST途中切换到onboard，则跳到WAITING
			//	FlyState_1 = WAITING;
            //cout << "1 REST" << endl;
			break;
		case FLY:
			{
                if (interest.empty())
                {
                    if (FlyState_0 == FLYOVER || FlyState_0 == OVER)
                    {
                        cout << "1 fly over" << endl;
                        FlyState_1 = FLYOVER;
                    }
                    pos_target_1.pose.position.x = setpoints[now][0] - c_high/2;
                    pos_target_1.pose.position.y = setpoints[now][1] - c_high/2;
                    pos_target_1.pose.position.z = height_1;

                    break;
                }
                else
                {
                    if (!in_flight_1)
                    {
                        int inter = interest.front();
                        now_1 = 0;
                        in_flight_1 = 1;
                        cal_local_uav(100, setpoints[inter][0], setpoints[inter][1], c_low);
                        cout << "moving to new interesting cell (" <<  setpoints[inter][0] << "," << setpoints[inter][1] << ")" << endl;
                    }

                    if (abs(pos_drone_1.pose.position.x - setpoints_1[now_1][0]) < 1 
                            && abs(pos_drone_1.pose.position.y - setpoints_1[now_1][1]) < 1)
                        ++now_1;
                    if (now_1 == cnt_1)
                    {
                        interest.pop();
                        in_flight_1 = 0;
                        cout << "scan over" << endl;
                        break;
                    }
                    pos_target_1.pose.position.x = setpoints_1[now_1][0];
				    pos_target_1.pose.position.y = setpoints_1[now_1][1];
				    pos_target_1.pose.position.z = height_1; 
                    
                    cout << "on mission from (" << pos_drone_1.pose.position.x << "," << pos_drone_1.pose.position.y << ")" << endl
                            << "to (" << setpoints_1[now_1][0] << "," << setpoints_1[now_1][1] << ")" << endl;
                }

                local_pos_pub_1.publish(pos_target_1);
				//if(current_state_1.mode != "OFFBOARD")			//如果在飞圆形中途中切换到onboard，则跳到WAITING
				//	FlyState_1 = WAITING;
			}
			cout << "1 FLY" <<endl;
			break;
		case FLYOVER:
			{
                pos_target_1.pose.position.x = origin_pos_drone_1.pose.position.x;
				pos_target_1.pose.position.y = origin_pos_drone_1.pose.position.y;
				pos_target_1.pose.position.z = height_1;

                local_pos_pub_1.publish(pos_target_1);

                if (abs(pos_drone_1.pose.position.x - origin_pos_drone_1.pose.position.x) < 1 
                        || abs(pos_drone_1.pose.position.y - origin_pos_drone_1.pose.position.y) < 1)
                {
                    if( set_mode_client_1.call(land_set_mode) &&
                            land_set_mode.response.mode_sent)
                        ROS_INFO("1 land set");
				    FlyState_1 = OVER;
                }
            }
			//cout << "FLYOVER" <<endl;
			break;
		default:
			cout << "1 flight over" << endl;
	}	
    
}	

int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh;

    ros::Subscriber state_sub_0 = nh.subscribe<mavros_msgs::State>
            ("uav0/mavros/state", 10, state_cb_0);
    ros::Subscriber position_sub_0 = nh.subscribe<geometry_msgs::PoseStamped>
            ("uav0/mavros/local_position/pose", 100, pos_cb_0);
    local_pos_pub_0 = nh.advertise<geometry_msgs::PoseStamped>
            ("uav0/mavros/setpoint_position/local", 10);
    arming_client_0 = nh.serviceClient<mavros_msgs::CommandBool>
            ("uav0/mavros/cmd/arming");
    set_mode_client_0 = nh.serviceClient<mavros_msgs::SetMode>
            ("uav0/mavros/set_mode");
    uav0_path_pub = nh.advertise<nav_msgs::Path>("uav0_path", 10, true);

    ros::Subscriber state_sub_1 = nh.subscribe<mavros_msgs::State>
            ("uav1/mavros/state", 10, state_cb_1);
    ros::Subscriber position_sub_1 = nh.subscribe<geometry_msgs::PoseStamped>
            ("uav1/mavros/local_position/pose", 100, pos_cb_1);
    local_pos_pub_1 = nh.advertise<geometry_msgs::PoseStamped>
            ("uav1/mavros/setpoint_position/local", 10);
    arming_client_1 = nh.serviceClient<mavros_msgs::CommandBool>
            ("uav1/mavros/cmd/arming");
    set_mode_client_1 = nh.serviceClient<mavros_msgs::SetMode>
            ("uav1/mavros/set_mode");
    uav1_path_pub = nh.advertise<nav_msgs::Path>("uav1_path", 10, true);
    
    nh.param<double>("height", height);
   	nh.param<double>("length", length);
    nh.param<double>("width", width);

    uav0_path.header.frame_id = "odom";
    uav0_path.header.stamp = ros::Time::now();
    uav1_path.header.frame_id = "odom";
    uav1_path.header.stamp = ros::Time::now();

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

    // wait for FCU connection
    while(ros::ok() && !current_state_0.connected && !current_state_1.connected){
        ros::spinOnce();
        rate.sleep();
    }

    mavros_msgs::SetMode offb_set_mode, land_set_mode, loiter_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";
    land_set_mode.request.custom_mode = "AUTO.LAND";
    loiter_set_mode.request.custom_mode = "AUTO.LOITER";

    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;

    ros::Time last_request_0 = ros::Time::now();
    ros::Time last_request_1 = ros::Time::now();

    srand((unsigned int)time(NULL)); // random seed for generation of interested area
    cal_global_uav(length, width, 0, 0, 100);
    
    while(ros::ok()){
        if( current_state_0.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request_0 > ros::Duration(5.0))){
            if( set_mode_client_0.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO("0 Offboard enabled");
            }
            else
                cout << "0 offboard failed" << endl;
            last_request_0 = ros::Time::now();
        } 
        else {
            if( !current_state_0.armed &&
                (ros::Time::now() - last_request_0 > ros::Duration(5.0))){
                if( arming_client_0.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("0 Vehicle armed");
                }
                last_request_0 = ros::Time::now();
            }
        }
        
        if( current_state_1.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request_1 > ros::Duration(5.0))){
            if( set_mode_client_1.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO("1 Offboard enabled");
            }
            else
                cout << "1 offboard failed" << endl;
            last_request_1 = ros::Time::now();
        } 
        else {
            if( !current_state_1.armed &&
                (ros::Time::now() - last_request_1 > ros::Duration(5.0))){
                if( arming_client_1.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("1 Vehicle armed");
                }
                last_request_1 = ros::Time::now();
            }
        }
        
        FlyState_update();
        
        geometry_msgs::PoseStamped pose;
        ros::Time current_time = ros::Time::now();

        pose.header.frame_id = "odom";
        pose.header.stamp = current_time;
        pose.pose.position.x = pos_drone_0.pose.position.x;
        pose.pose.position.y = pos_drone_0.pose.position.y;
        pose.pose.position.z = pos_drone_0.pose.position.z;

        uav0_path.poses.push_back(pose);
        uav0_path_pub.publish(uav0_path);
        cout << pos_drone_0.pose.orientation.x << " " << pos_drone_0.pose.orientation.y << " " << pos_drone_0.pose.orientation.z;
        cout << " " << pos_drone_0.pose.orientation.w << endl;

        pose.header.frame_id = "odom";
        pose.header.stamp = current_time;
        pose.pose.position.x = pos_drone_1.pose.position.x;
        pose.pose.position.y = pos_drone_1.pose.position.y;
        pose.pose.position.z = pos_drone_1.pose.position.z;
        
        uav1_path.poses.push_back(pose);
        uav1_path_pub.publish(uav1_path);

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
