#pragma once

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <nav_msgs/Path.h>
#include "std_msgs/String.h"
#include "uav.hpp"

#include <iostream>
#include <string>
using namespace std;

class Uav_local;

class Uav_global: public Uav
{
public:
    Uav_local* uav_local;
    waypoints interest;

    Uav_global(int c, double h, double c_s):Uav(c, h, c_s){}
    void plan_flight(waypoints);
    void flystate_update();
};

class Uav_local: public Uav
{
public:
    string mission = "";
    ros::Subscriber mission_sub;
    Uav_global* uav_global;

    Uav_local(int c, double h, double c_s, Uav_global* u_g):Uav(c, h, c_s), uav_global(u_g){}

    void mission_cb(const std_msgs::String::ConstPtr &msg){mission = msg->data.c_str();}
    void init_mission(ros::NodeHandle);
    void follow();
    void flystate_update();
};

void Uav_global::plan_flight(waypoints wps)
{
    wp = wps;
    geometry_msgs::PoseStamped tmp;
    tmp = wp[0];
    tmp.pose.position.x -= cell_size/2;
    tmp.pose.position.y -= cell_size/2;
    tmp.pose.position.z = uav_local->height;
    /*
    tf2::Quaternion q;
    q.setRPY(0, 0, pi);
    q.normalize();
    tmp.pose.orientation.x = q.x();
    tmp.pose.orientation.y = q.y();
    tmp.pose.orientation.z = q.z();
    tmp.pose.orientation.w = q.w();
    */
    uav_local->wp.push_back(tmp);
}

void Uav_global::flystate_update()
{
    switch(fly_state)
	{
		case WAITING:
			if(current_state.mode != "OFFBOARD")//等待offboard模式
			{   
                target_pose = drone_pose;
                origin_pose = drone_pose;    
                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);
                //ROS_INFO("Waiting for OFFBOARD command...");
			}
			else
			{
                target_pose = origin_pose;
                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);
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
            if (abs(drone_pose.pose.position.z - height) > 1)
            {
                geometry_msgs::PoseStamped tmp = origin_pose;
                tmp.pose.position.z = height;
                publish_position(tmp);
                publish_attitude(tmp);
                //position_pub.publish(tmp);
                //attitude_pub.publish(tmp);
            }
            else
            {
                target_pose = wp[0]; //起飞到轨迹的第一个
                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);
                if (judge_reach(target_pose))
			        fly_state = REST;
            }
			if(current_state.mode != "OFFBOARD")				//如果在准备中途中切换到onboard，则跳到WAITING
				fly_state = WAITING;
			break;
		case REST:	// wait for other drones in position
            if (uav_local->fly_state == FLY || uav_local->fly_state == REST)
            {
                move_time_cnt = 0;
			    fly_state = FLY;
            }
			//if(current_state.mode != "OFFBOARD")				//如果在REST途中切换到onboard，则跳到WAITING
			//	fly_state = WAITING;
			break;
		case FLY:
			{
                target_pose = wp[move_time_cnt];
                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);

                if (judge_reach(target_pose))
                {
                    cout << "global reach during fly" << endl;
                    if (rand()%10 < 3) // could have some problems
                    {
                        cout << "found interesting cell at (" << target_pose.pose.position.x << " " <<
                                target_pose.pose.position.y << ")" << endl;
                        interest.push_back(target_pose);
                    }
                    ++move_time_cnt;
                }
                if (move_time_cnt == wp.size())
                    fly_state = FLYOVER;

				//if(current_state.mode != "OFFBOARD")			//如果在飞圆形中途中切换到onboard，则跳到WAITING
				//	fly_state = WAITING;
			}
			break;
		case FLYOVER:
			{
                target_pose.pose.position.x = origin_pose.pose.position.x;
				target_pose.pose.position.y = origin_pose.pose.position.y;
				target_pose.pose.position.z = height;

                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);

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

void Uav_local::init_mission(ros::NodeHandle nh)
{
    string name = "/uav" + to_string(code);
    mission_sub = nh.subscribe(name + "/mission", 10, &Uav_local::mission_cb, this);
}

void Uav_local::follow()
{
    geometry_msgs::PoseStamped tmp;
    tmp = uav_global->drone_pose;
    tmp.pose.position.x -= uav_global->cell_size/2;
    tmp.pose.position.y -= uav_global->cell_size/2;
    tmp.pose.position.z = height;

    publish_position(tmp);
    publish_attitude(tmp);
    //position_pub.publish(tmp);
    //attitude_pub.publish(tmp);
}

void Uav_local::flystate_update()
{
    switch(fly_state)
	{
		case WAITING:
			if(current_state.mode != "OFFBOARD")//等待offboard模式
			{   
                target_pose = drone_pose;
                origin_pose = drone_pose;    
                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);
                //ROS_INFO("Waiting for OFFBOARD command...");
			}
			else
			{
                target_pose = origin_pose;
                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);
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
            if (abs(drone_pose.pose.position.z - height) > 1)
            {
                geometry_msgs::PoseStamped tmp = origin_pose;
                tmp.pose.position.z = height;
                publish_position(tmp);
                publish_attitude(tmp);
                //position_pub.publish(tmp);
                //attitude_pub.publish(tmp);
            }
            else
            {
                target_pose = wp[0]; //起飞到轨迹的第一个
                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);
                if (judge_reach(target_pose))
			        fly_state = REST;
            }
            
			//if(current_state.mode != "OFFBOARD")				//如果在准备中途中切换到onboard，则跳到WAITING
			//	fly_state = WAITING;
			break;
		case REST:	// wait for other drones in position
            if (uav_global->fly_state == FLY || uav_global->fly_state == REST)
            {
                move_time_cnt = 0;
			    fly_state = FLY;
            }

			//if(current_state.mode != "OFFBOARD")				//如果在REST途中切换到onboard，则跳到WAITING
			//	fly_state = WAITING;
			break;
		case FLY:
			{
                if (mission != "")
                {
                    waypoints wp_mission;
                    cout << "mission is " << mission << endl;
                    if (mission == "circular")
                        wp_mission = circular(5, drone_pose.pose.position.x, drone_pose.pose.position.y, 10);
                    if (mission == "square")
                        wp_mission = square(5, drone_pose.pose.position.x, drone_pose.pose.position.y, 5);
                    wp.insert(wp.begin() + move_time_cnt, wp_mission.begin(), wp_mission.end());
                    mission = "";
                }
                if (!uav_global->interest.empty())
                {
                    waypoints tmp = zig_zag(uav_global->cell_size, uav_global->cell_size, height,
                            uav_global->interest[0].pose.position.x, uav_global->interest[0].pose.position.y, cell_size);
                    wp.insert(wp.end(), tmp.begin(), tmp.end());
                    uav_global->interest.erase(uav_global->interest.begin());
                }

                if (move_time_cnt == wp.size() && (uav_global->fly_state == FLYOVER || uav_global->fly_state == OVER))
                {
                    fly_state = FLYOVER;
                    break;
                }
                else if (move_time_cnt == wp.size())
                {
                    wp.clear();
                    move_time_cnt = 0;
                    follow();
                    break;
                }

                target_pose = wp[move_time_cnt];
                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);

                if (judge_reach(target_pose))
                    ++move_time_cnt;

				//if(current_state.mode != "OFFBOARD")			//如果在飞圆形中途中切换到onboard，则跳到WAITING
				//	fly_state = WAITING;
			}
			break;
		case FLYOVER:
			{
                target_pose.pose.position.x = origin_pose.pose.position.x;
				target_pose.pose.position.y = origin_pose.pose.position.y;
				target_pose.pose.position.z = height;

                publish_position(target_pose);
                publish_attitude(target_pose);
                //position_pub.publish(target_pose);
                //attitude_pub.publish(target_pose);

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

