#!/usr/bin/env python
# -*- coding: utf-8 -*-
#author : bingo
#email  : bingobin.lw@gmail.com
#description  :  px4 controlled by keyboard 
import rospy
from geometry_msgs.msg import Twist
import sys, select, termios, tty
import rospy
from mavros_msgs.msg import OverrideRCIn, State
from mavros_msgs.srv import CommandBool, CommandTOL, SetMode
from std_msgs.msg import Float32, String
import time
import math

msg = """
%%%%%%%%%%%%%%%%%%%%%%%
command_cotrol
%%%%%%%%%%%%%%%%%%%%%%%
0 : ARM
1 : TAKEOFF
2 : OFFBOARDS
3 : LAND
c : CIRCULAR
s : SQUARE
---------------------------

CTRL-C to quit

"""
mavros_state = State()
armServer = rospy.ServiceProxy('/uav1/mavros/cmd/arming', CommandBool)
setModeServer = rospy.ServiceProxy('/uav1/mavros/set_mode', SetMode)

mission = ""
mission_pub = rospy.Publisher('/uav1/mission', String, queue_size = 100)


def __init__():
	rospy.init_node('PX4_control' ,anonymous=True)
	rospy.Subscriber("/uav1/mavros/state", State, mavros_state_callback)
	print("Initialized")

def mavros_state_callback(msg):
	global mavros_state
	mavros_state = msg
#	if mavros_state.armed == 0 :
#		print("disarm")

def getKey():
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

def command_control():
	if key == '0':
		if armServer(True) :
			print("Vehicle arming succeed!")
		else:
			print("Vehicle arming failed!")
	elif key == '1':
		if setModeServer(custom_mode='AUTO.TAKEOFF'):
			print("Vehicle takeoff succeed!")
		else:
			print("Vehicle takeoff failed!")
	elif key == '2':
		if setModeServer(custom_mode='OFFBOARD'):
			print("Vehicle offboard succeed!")
		else:
			print("Vehicle offboard failed!")
	elif key == '3':
		if setModeServer(custom_mode='AUTO.LAND'):
			print("Vehicle land succeed!")
		else:
			print("Vehicle land failed!")
	elif key == 'c':
		if setModeServer(custom_mode='OFFBOARD'):
			mission_pub.publish("circular")
			mission = "circular"
			print("Mission circular sent!")
		else:
			print("Vehicle offboard failed!")
	elif key == 's':
		if setModeServer(custom_mode='OFFBOARD'):
			mission_pub.publish("square")
			mission = "square"
			print("Mission square sent!")
		else:
			print("Vehicle offboard failed!")

if __name__=="__main__":
	settings = termios.tcgetattr(sys.stdin)
	print (msg)
	__init__()
	
	while(1):
		key= getKey()
		command_control()

		if (key == '\x03'):
			break

	termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
