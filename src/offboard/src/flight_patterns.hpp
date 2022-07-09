#include <iostream>
#include <cmath>
#include <vector>
#include <geometry_msgs/PoseStamped.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2/LinearMath/Quaternion.h>
using namespace std;

#define waypoints vector<geometry_msgs::PoseStamped>
const double pi = 3.141592658979;

waypoints zig_zag(double length, double width, double height, double center_x, double center_y, double cell_size)
{
	waypoints wp;
	double start_x = center_x - length/2;
    double start_y = center_y - width/2;
    
    int cnt_x = ceil(length/cell_size);
    int cnt_y = ceil(width/cell_size);

    if (length >= width)
    {
        for (int i = 0; i < cnt_y; ++i)
            for (int j = 0; j < cnt_x; ++j)
            {
                geometry_msgs::PoseStamped tmp;
                tf2::Quaternion q;
                if (i % 2 == 0)
                {
                    q.setRPY(0, 0, 0);
                    q.normalize();
                    tmp.pose.orientation.x = q.x();
                    tmp.pose.orientation.y = q.y();
                    tmp.pose.orientation.z = q.z();
                    tmp.pose.orientation.w = q.w();
                    
                    tmp.pose.position.x = min(start_x + cell_size * (0.5 + j), center_x + length/2);
                    tmp.pose.position.y = min(start_y + cell_size * (0.5 + i), center_y + width/2);
                	tmp.pose.position.z = height;
                }
                else
                {
                    q.setRPY(0, 0, pi);
                    q.normalize();
                    tmp.pose.orientation.x = q.x();
                    tmp.pose.orientation.y = q.y();
                    tmp.pose.orientation.z = q.z();
                    tmp.pose.orientation.w = q.w();
                    
                    tmp.pose.position.x = max(min(start_x + cell_size * (cnt_x - 0.5 - j), center_x + length/2), center_x - length/2);
                    tmp.pose.position.y = min(start_y + cell_size * (0.5 + i), center_y + width/2);
                	tmp.pose.position.z = height;
                }
                if (j == 0 && i != 0)
                {
                    geometry_msgs::PoseStamped tmp2 = tmp;
                    q.setRPY(0, 0, pi/2);
                    q.normalize();
                    tmp2.pose.orientation.x = q.x();
                    tmp2.pose.orientation.y = q.y();
                    tmp2.pose.orientation.z = q.z();
                    tmp2.pose.orientation.w = q.w();
                    wp.push_back(tmp2);
                }
                wp.push_back(tmp);
                if (j == cnt_x - 1 && i != cnt_y - 1)
                {
                    q.setRPY(0, 0, pi/2);
                    q.normalize();
                    tmp.pose.orientation.x = q.x();
                    tmp.pose.orientation.y = q.y();
                    tmp.pose.orientation.z = q.z();
                    tmp.pose.orientation.w = q.w();
                    wp.push_back(tmp);
                }
            }
    }
    else // 事实上就是x, y调换
    {
        for (int i = 0; i < cnt_x; ++i)
            for (int j = 0; j < cnt_y; ++j)
            {
                geometry_msgs::PoseStamped tmp;
                tf2::Quaternion q;
                if (i % 2 == 0)
                {
                    q.setRPY(0, 0, pi/2);
                    q.normalize();
                    tmp.pose.orientation.x = q.x();
                    tmp.pose.orientation.y = q.y();
                    tmp.pose.orientation.z = q.z();
                    tmp.pose.orientation.w = q.w();

                    tmp.pose.position.x = min(start_x + cell_size * (0.5 + i), center_x + length/2);
                    tmp.pose.position.y = min(start_y + cell_size * (0.5 + j), center_y + width/2);
                	tmp.pose.position.z = height;
                } 
                else
                {
                    q.setRPY(0, 0, -pi/2);
                    q.normalize();
                    tmp.pose.orientation.x = q.x();
                    tmp.pose.orientation.y = q.y();
                    tmp.pose.orientation.z = q.z();
                    tmp.pose.orientation.w = q.w();

                    tmp.pose.position.x = min(start_x + cell_size * (0.5 + i), center_x + length/2);
                    tmp.pose.position.y = max(min(start_y + cell_size * (cnt_y - 0.5 - j), center_y + width/2), center_y - width/2);
                	tmp.pose.position.z = height;
                }
                if (j == 0 && i != 0)
                {
                    geometry_msgs::PoseStamped tmp2 = tmp;
                    q.setRPY(0, 0, 0);
                    q.normalize();
                    tmp2.pose.orientation.x = q.x();
                    tmp2.pose.orientation.y = q.y();
                    tmp2.pose.orientation.z = q.z();
                    tmp2.pose.orientation.w = q.w();
                    wp.push_back(tmp2);
                }
                wp.push_back(tmp);
                if (j == cnt_y - 1 && i != cnt_x - 1)
                {
                    q.setRPY(0, 0, 0);
                    q.normalize();
                    tmp.pose.orientation.x = q.x();
                    tmp.pose.orientation.y = q.y();
                    tmp.pose.orientation.z = q.z();
                    tmp.pose.orientation.w = q.w();
                    wp.push_back(tmp);
                }
            }
    }
    return wp;
}

waypoints circular(double radius, double center_x, double center_y, double height,int rate = 1000)
{
	waypoints wp;
	for (int i = 0; i < rate; ++i)
	{
		double omega = 2 * pi * i/rate;
        geometry_msgs::PoseStamped tmp;
        tmp.pose.position.x = center_x + radius * cos(omega + pi);
        tmp.pose.position.y = center_y + radius * sin(omega + pi);
        tmp.pose.position.z = height;
        
        tf2::Quaternion q;
		q.setRPY(0, pi/6, omega);
        q.normalize();
        tmp.pose.orientation.x = q.x();
        tmp.pose.orientation.y = q.y();
        tmp.pose.orientation.z = q.z();
        tmp.pose.orientation.w = q.w();
		wp.push_back(tmp);
	}
	return wp;
}

waypoints square(double length, double center_x, double center_y, double height, int rate = 1000)
{
	waypoints wp;
	double velocity = length * 4/rate;
	for (int i = 0; i < rate; ++i)
	{
        tf2::Quaternion q;
        geometry_msgs::PoseStamped tmp;
        tmp.pose.position.z = height;
        
		if (i < rate/4)
        {
            q.setRPY(0, pi/6, pi/2);
            q.normalize();
            tmp.pose.position.x = center_x - length/2 + velocity * i;
            tmp.pose.position.y = center_y - length/2;            
            tmp.pose.orientation.x = q.x();
            tmp.pose.orientation.y = q.y();
            tmp.pose.orientation.z = q.z();
            tmp.pose.orientation.w = q.w();

			wp.push_back(tmp);
        }
		else if(i < rate/2)
        {
            q.setRPY(0, pi/6, pi);
            q.normalize();
            tmp.pose.position.x = center_x + length/2;
            tmp.pose.position.y = center_y - length/2 + velocity * (i - rate/4);
            tmp.pose.orientation.x = q.x();
            tmp.pose.orientation.y = q.y();
            tmp.pose.orientation.z = q.z();
            tmp.pose.orientation.w = q.w();

			wp.push_back(tmp);
        }
		else if (i < rate * 3/4)
        {
            q.setRPY(0, pi/6, pi * 3/2);
            q.normalize();
			tmp.pose.position.x = center_x + length/2 - velocity * (i - rate/2);
            tmp.pose.position.y = center_y + length/2;
            tmp.pose.orientation.x = q.x();
            tmp.pose.orientation.y = q.y();
            tmp.pose.orientation.z = q.z();
            tmp.pose.orientation.w = q.w();

            wp.push_back(tmp);
        }
		else
        {
            q.setRPY(0, pi/6, 0);
            q.normalize();
            tmp.pose.position.x = center_x - length/2;
            tmp.pose.position.y = center_y + length/2 - velocity * (i - rate * 3/4);
            tmp.pose.orientation.x = q.x();
            tmp.pose.orientation.y = q.y();
            tmp.pose.orientation.z = q.z();
            tmp.pose.orientation.w = q.w();
            
			wp.push_back(tmp);
        }
	}
	return wp;
}