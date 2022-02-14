#! /usr/bin/env python2

import rospy
import keyboard
from geometry_msgs.msg import Twist
from trajectory_msgs.msg import JointTrajectory

rospy.init_node('teleop_youbot_robot')

armPublisher = rospy.Publisher('/arm_1/arm_controller/command', JointTrajectory, queue_size=1)
gripperPublisher = rospy.Publisher('/arm_1/gripper_controller/command', JointTrajectory, queue_size=1)
move_arm = JointTrajectory()