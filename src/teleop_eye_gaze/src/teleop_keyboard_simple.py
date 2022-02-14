#! /usr/bin/env python2

import rospy
import keyboard
from geometry_msgs.msg import Twist

rospy.init_node('teleop_keyboard')

pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

move = Twist()

while not rospy.is_shutdown():
    key = keyboard.getKey()
    if key == 'w':
        move.linear.x = 0.5
        move.angular.z = 0.0
        pub.publish(move)

    elif key == 's':
        move.linear.x = -0.5
        move.angular.z = 0.0
        pub.publish(move)

    elif key == 'a':
        move.linear.x = 0.0
        move.angular.z = 0.5
        pub.publish(move)

    elif key == 'd':
        move.linear.x = 0.0
        move.angular.z = -0.5
        pub.publish(move)

    elif key == 'p':
        rospy.signal_shutdown("teleop")