#! /usr/bin/env python2

import rospy
import keyboard
from geometry_msgs.msg import Twist
from trajectory_msgs.msg import JointTrajectory

rospy.init_node('teleop_youbot_robot')

platformPublisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
move_robot = Twist()

while not rospy.is_shutdown():
    key = keyboard.getKey()
    if key == 'w':
        move_robot.linear.x = 0.5
        move_robot.linear.y = 0.0
        move_robot.angular.z = 0.0
        platformPublisher.publish(move_robot)

    elif key == 's':
        move_robot.linear.x = -0.5
        move_robot.linear.y = 0.0
        move_robot.angular.z = 0.0
        platformPublisher.publish(move_robot)

    elif key == 'a':
        move_robot.linear.x = 0.0
        move_robot.linear.y = 0.5
        move_robot.angular.z = 0.0
        platformPublisher.publish(move_robot)

    elif key == 'd':
        move_robot.linear.x = 0.0
        move_robot.linear.y = -0.5
        move_robot.angular.z = 0.0
        platformPublisher.publish(move_robot)

    elif key == 'q':
        move_robot.linear.x = 0.0
        move_robot.linear.y = 0.0
        move_robot.angular.z = 0.5
        platformPublisher.publish(move_robot)

    elif key == 'e':
        move_robot.linear.x = 0.0
        move_robot.linear.y = 0.0
        move_robot.angular.z = -0.5
        platformPublisher.publish(move_robot)
    
    elif key == ' ':
        move_robot.linear.x = 0.0
        move_robot.linear.y = 0.0
        move_robot.angular.z = 0.0
        platformPublisher.publish(move_robot)

    elif key == 'p':
        rospy.signal_shutdown("teleop_youbot_robot")