#include <iostream>
#include <cmath>
#include <queue>
using namespace std;

int cnt = 0;
int cnt_1 = 0;
// fov 2.0  640*360

double setpoints[100][2];
double setpoints_1[100][2];
queue<int> interest;

void cal_global_uav(double a, double b, double center_x, double center_y, double cell_size)
{
    double start_x = center_x - a/2;
    double start_y = center_y - b/2;
    
    int cnt_x = ceil(a/cell_size);
    int cnt_y = ceil(b/cell_size);
    cnt = cnt_x * cnt_y;

    if (a >= b)
    {
        for (int i = 0; i < cnt_y; ++i)
            for (int j = 0; j < cnt_x; ++j)
            {
                if (i % 2 == 0)
                {
                    setpoints[j + i * cnt_y][0] = start_x + cell_size/2 * (1 + j * 2);
                    setpoints[j + i * cnt_y][1] = start_y + cell_size/2 * (1 + i * 2);
                }
                else
                {
                    setpoints[j + i * cnt_y][0] = start_x + a - cell_size/2 * (1 + j * 2);
                    setpoints[j + i * cnt_y][1] = start_y + cell_size/2 * (1 + i * 2);
                }
            }
    }
    else // could be wrong
    {
        for (int i = 0; i < cnt_x; ++i)
            for (int j = 0; j < cnt_y; ++j)
            {
                if (i % 2 == 0)
                {
                    setpoints[j + i * cnt_x][0] = start_x + cell_size/2 * (1 + i * 2);
                    setpoints[j + i * cnt_x][1] = start_y + cell_size/2 * (1 + j * 2);
                }
                else
                {
                    setpoints[j + i * cnt_x][0] = start_x + cell_size/2 * (1 + i * 2);
                    setpoints[j + i * cnt_x][1] = start_y + b - cell_size/2 * (1 + j * 2);
                }
            }
    }
    setpoints_1[0][0] = setpoints[0][0] - cell_size/2;
    setpoints_1[0][1] = setpoints[0][1] - cell_size/2;
}

void cal_local_uav(double a, double center_x, double center_y, double cell_size)
{
    double start_x = center_x - a/2;
    double start_y = center_y - a/2;

    int cnt_x = ceil(a/cell_size);
    int cnt_y = cnt_x;

    cnt_1 = cnt_x * cnt_y;

    for (int i = 0; i < cnt_y; ++i)
        for (int j = 0; j < cnt_x; ++j)
        {
            if (i % 2 == 0)
            {
                setpoints_1[j + i * cnt_y][0] = start_x + cell_size/2 * (1 + j * 2);
                setpoints_1[j + i * cnt_y][1] = start_y + cell_size/2 * (1 + i * 2);
            }
            else
            {
                setpoints_1[j + i * cnt_y][0] = start_x + a - cell_size/2 * (1 + j * 2);
                setpoints_1[j + i * cnt_y][1] = start_y + cell_size/2 * (1 + i * 2);
            }
        }
}

void cal_uav_0(double a, double b, double center_x, double center_y, double cell_size)
{
    double start_x = center_x - a/2;
    double start_y = center_y - b/2;

    int cnt_x = ceil(a/cell_size);
    int cnt_y = ceil(b/cell_size);
    cnt = cnt_x * cnt_y;
    for (int i = 0; i < cnt_y; ++i)
        for (int j = 0; j < cnt_x; ++j)
        {
            if (i % 2 == 0)
            {
                setpoints[j + i * cnt_y][0] = start_x + cell_size/2 * (1 + j * 2);
                setpoints[j + i * cnt_y][1] = start_y + cell_size/2 * (1 + i * 2);
            }
            else
            {
                setpoints[j + i * cnt_y][0] = start_x + a - cell_size/2 * (1 + j * 2);
                setpoints[j + i * cnt_y][1] = start_y + cell_size/2 * (1 + i * 2);
            }
        }
}

void cal_uav_1(double a, double b, double center_x, double center_y, double cell_size)
{
    double start_x = center_x - a/2;
    double start_y = center_y - b/2;

    int cnt_x = ceil(a/cell_size);
    int cnt_y = ceil(b/cell_size);
    cnt = cnt_x * cnt_y;
    for (int i = 0; i < cnt_y; ++i)
        for (int j = 0; j < cnt_x; ++j)
        {
            if (i % 2 == 0)
            {
                setpoints_1[j + i * cnt_y][0] = start_x + cell_size/2 * (1 + j * 2);
                setpoints_1[j + i * cnt_y][1] = start_y + cell_size/2 * (1 + i * 2);
            }
            else
            {
                setpoints_1[j + i * cnt_y][0] = start_x + a - cell_size/2 * (1 + j * 2);
                setpoints_1[j + i * cnt_y][1] = start_y + cell_size/2 * (1 + i * 2);
            }
        }
}
