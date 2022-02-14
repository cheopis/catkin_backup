#! /usr/bin/env python2

import rospy
import roslib
roslib.load_manifest('teleop_eye_gaze')
from tf2_msgs.msg import TFMessage
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import turtlesim.srv
import math
import time
from std_srvs.srv import Empty
import tf
from threading import Event


def poseCallback(pose_message):
    global x
    global y, yaw
    x = pose_message.x
    y = pose_message.y
    yaw = pose_message.theta

def go_to_goal(x_goal, y_goal):
    global x
    global y, yaw

    velocity_message = Twist()
    cmd_vel_topic = '/turtle1/cmd_vel'

    while(True):
        K_linear = 0.5
        distance = abs(math.sqrt(((x_goal - x)**2) + ((y_goal - y)**2)))

        linear_speed = distance * K_linear

        K_angular = 4.0
        desired_angle_goal = math.atan2(y_goal-y,x_goal-x)
        angular_speed = (desired_angle_goal - yaw) * K_angular

        velocity_message.linear.x = linear_speed
        velocity_message.angular.z = angular_speed

        velocity_publisher.publish(velocity_message)
        print('x = ', x ,',  y = ', y)

        if distance < 0.1:
            break


if __name__ == '__main__':
    rospy.init_node('teleop_pose_control', anonymous = True)

    # 
    tf_listener = tf.TransformListener()

    # Turtlesim publisher and subscriber
    velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=1)
    pose_subscriber = rospy.Subscriber('turtle1/pose', Pose, poseCallback)

    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        try:
            (trans, rot) = tf_listener.lookupTransform('/gaze/world_gaze0', '/base_link', rospy.Time(0))
            #(trans, rot) = tf_listener.lookupTransform('gaze/head_pose_estimated0', '/base_link', rospy.Time(0))

            euler = tf.transformations.euler_from_quaternion(rot)

            eyeMovement(euler)
            #headMovement(euler)  
            

        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue

        rate.sleep()