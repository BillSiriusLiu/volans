#include <iostream>
#include <cmath>
#include <vector>
#include <Eigen/Eigen>
using namespace std;

#define waypoints vector<Eigen::VectorXd> // xyzrpy
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
                Eigen::VectorXd tmp(6);
                if (i % 2 == 0)
                {                    
                    tmp[0] = min(start_x + cell_size * (0.5 + j), center_x + length/2);
                    tmp[1] = min(start_y + cell_size * (0.5 + i), center_y + width/2);
                	tmp[2] = height;
                    tmp[3] = 0;
                    tmp[4] = 0;
                    tmp[5] = 0;
                }
                else
                {   
                    tmp[0] = max(min(start_x + cell_size * (cnt_x - 0.5 - j), center_x + length/2), center_x - length/2);
                    tmp[1] = min(start_y + cell_size * (0.5 + i), center_y + width/2);
                	tmp[2] = height;
                    tmp[3] = 0;
                    tmp[4] = 0;
                    tmp[5] = pi;
                }
                if (j == 0 && i != 0)
                {
                    Eigen::VectorXd tmp2(6);
                    tmp2 = tmp;
                    tmp2[5] = pi/2;
                    wp.push_back(tmp2);
                }
                wp.push_back(tmp);
                if (j == cnt_x - 1 && i != cnt_y - 1)
                {
                    tmp[5] = pi/2;
                    wp.push_back(tmp);
                }
            }
    }
    else // 事实上就是x, y调换
    {
        for (int i = 0; i < cnt_x; ++i)
            for (int j = 0; j < cnt_y; ++j)
            {
                Eigen::VectorXd tmp(6);
                if (i % 2 == 0)
                {
                    tmp[0] = min(start_x + cell_size * (0.5 + i), center_x + length/2);
                    tmp[1] = min(start_y + cell_size * (0.5 + j), center_y + width/2);
                	tmp[2] = height;
                    tmp[3] = 0;
                    tmp[4] = 0;
                    tmp[5] = pi/2;
                } 
                else
                {
                    tmp[0] = min(start_x + cell_size * (0.5 + i), center_x + length/2);
                    tmp[1] = max(min(start_y + cell_size * (cnt_y - 0.5 - j), center_y + width/2), center_y - width/2);
                	tmp[2] = height;
                    tmp[3] = 0;
                    tmp[4] = 0;
                    tmp[5] = -pi/2;
                }
                if (j == 0 && i != 0)
                {
                    Eigen::VectorXd tmp2(6);
                    tmp2 = tmp;
                    tmp2[5] = 0;
                    wp.push_back(tmp2);
                }
                wp.push_back(tmp);
                if (j == cnt_y - 1 && i != cnt_x - 1)
                {
                    tmp[5] = 0;
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
        Eigen::VectorXd tmp(6);
        tmp[0] = center_x + radius * cos(omega + pi);
        tmp[1] = center_y + radius * sin(omega + pi);
        tmp[2] = height;
        tmp[3] = 0;
        tmp[4] = pi/6;
        tmp[5] = omega;
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
        Eigen::VectorXd tmp(6);
        tmp[2] = height;
        tmp[3] = 0;
        tmp[4] = pi/6;
        
		if (i < rate/4)
        {
            tmp[0] = center_x - length/2 + velocity * i;
            tmp[1] = center_y - length/2;            
            tmp[5] = pi/2;
			wp.push_back(tmp);
        }
		else if(i < rate/2)
        {
            tmp[0] = center_x + length/2;
            tmp[1] = center_y - length/2 + velocity * (i - rate/4);
            tmp[5] = pi;
			wp.push_back(tmp);
        }
		else if (i < rate * 3/4)
        {
			tmp[0] = center_x + length/2 - velocity * (i - rate/2);
            tmp[1] = center_y + length/2;
            tmp[5] = pi * 3/2;
            wp.push_back(tmp);
        }
		else
        {
            tmp[0] = center_x - length/2;
            tmp[1] = center_y + length/2 - velocity * (i - rate * 3/4);
            tmp[5] = 0;
			wp.push_back(tmp);
        }
	}
	return wp;
}