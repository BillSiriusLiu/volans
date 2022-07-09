/*
 * @file offb_node.cpp
 * @brief Offboard control example node, written with MAVROS version 0.19.x, PX4 Pro Flight
 * Stack and tested in Gazebo SITL
 */
#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include "uav.hpp"
#include "uav_local.hpp"
#include <nav_msgs/Path.h>

#include <iostream>
#include "std_msgs/String.h"
using namespace std;

double height_h = 10; // 50
double height_l = 5; // 30
double length = 20; // should be 700
double width = 20; // should be 700
double c_high = 5; // 100
double c_low = 2; // 60

Uav_global uav0(0, height_h, c_high);
Uav_local uav1(1, height_l, c_low, &uav0);

//double velocity = 0.5; // real velocity is velocity multiply by 2(update rate)
//double period = 1000.0;   //减小数值可增大飞圆形的速度

void FlyState_update()
{
    uav0.flystate_update();
    uav1.flystate_update();
}	

int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh0;
    ros::NodeHandle nh1;
    
    uav0.uav_local = &uav1;
    uav0.init(nh0);
    uav1.init(nh1);
    uav1.init_mission(nh1);

    //nh.param<double>("height", height);
   	//nh.param<double>("length", length);
    //nh.param<double>("width", width);

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

    // wait for FCU connection
    while(ros::ok() && !uav0.current_state.connected && !uav1.current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }

    srand((unsigned int)time(NULL)); // random seed for generation of interested area
    
    uav0.plan_flight(zig_zag(length, width, height_h, 0, 0, c_high));
    
    while(ros::ok()){
        uav0.offboard_on();
        uav1.offboard_on();

        FlyState_update();
        
        uav0.publish_path();
        uav1.publish_path();

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
