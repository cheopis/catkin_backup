#! /usr/bin/env python2

import rospy
import roslib
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import turtlesim.srv
import math
import time
from std_srvs.srv import Empty
import tf
from threading import Event

cal_euler = (0,0,0)

def poseCallback(pose_message):
    global x
    global y, yaw
    x = pose_message.x
    y = pose_message.y
    yaw = pose_message.theta

def headMovement(euler):

    vel_linear = 0
    vel_angular = 0

    if euler[1] > 0.6:
            #print('mov -theta')
            vel_angular = -1
    elif euler[1] < -0.6:
            #print('mov +theta') 
            vel_angular = 1
    elif euler[0] < -2.0:
            #print('mov foward')
            vel_linear = 1
    elif euler[0] > -1.0:
            #print('mov backwards')
            vel_linear = -1
    else:
            #print('no mov')
            vel_linear = 0
            vel_angular = 0

    velocity_message = Twist()
    velocity_message.linear.x = vel_linear
    velocity_message.angular.z = vel_angular
    velocity_publisher.publish(velocity_message)

def eyeMovement(euler):

    vel_linear = 0
    vel_angular = 0

    if euler[2] > 1.8:
            #print('mov -theta')
            vel_angular = -1
    elif euler[2] < 1.4:
            #print('mov +theta') 
            vel_angular = 1
    elif euler[0] < -1.6:
            #print('mov foward')
            vel_linear = 1
    elif euler[0] > -1.4:
            #print('mov backwards')
            vel_linear = -1
    else:
            #print('no mov')
            vel_linear = 0
            vel_angular = 0

    velocity_message = Twist()
    velocity_message.linear.x = vel_linear
    velocity_message.angular.z = vel_angular
    velocity_publisher.publish(velocity_message)

def calibration(euler):
    global cal_euler
    cal_euler = cal_euler + euler
    print(cal_euler)





if __name__ == '__main__':
    rospy.init_node('teleop_angle_control', anonymous = True)

    tf_listener = tf.TransformListener()

    # Declare velocity publisher
    velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=1)
    # Subscribers
    pose_subscriber = rospy.Subscriber('turtle1/pose', Pose, poseCallback)

    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        try:
            #(trans, rot) = tf_listener.lookupTransform('/gaze/world_gaze0', '/base_link', rospy.Time(0))
            (trans, rot) = tf_listener.lookupTransform('gaze/head_pose_estimated0', '/base_link', rospy.Time(0))

            euler = tf.transformations.euler_from_quaternion(rot)

            #calibration(euler)

            #eyeMovement(euler)
            headMovement(euler)  
            

        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue

        rate.sleep()
