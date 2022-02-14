#! /usr/bin/env python2
# Reads the eye-gaze transform published by rt_gene and publishes it in a topic for joint_state_publisher

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

head = []
eye_r = []
eye_t = []

def poseCallback(pose_message):
    global x
    global y, yaw
    x = pose_message.x
    y = pose_message.y
    yaw = pose_message.theta

def euler_from_quaternion(x, y, z, w):
    t0 = +2.0 * (w * x + y * z)
    t1 = +1.0 - 2.0 * (x * x + y * y)
    roll_x = math.atan2(t0, t1)
     
    t2 = +2.0 * (w * y - z * x)
    t2 = +1.0 if t2 > +1.0 else t2
    t2 = -1.0 if t2 < -1.0 else t2
    pitch_y = math.asin(t2)
     
    t3 = +2.0 * (w * z + x * y)
    t4 = +1.0 - 2.0 * (y * y + z * z)
    yaw_z = math.atan2(t3, t4)
     
    return roll_x, pitch_y, yaw_z # in radians

def rtGeneCallBack(tf):
    global head, eye_r, eye_t
    frame = tf.transforms[0].header.frame_id

    if frame == "kinect2_link":
        eye_t = tf.transforms[0].transform.translation
        eye_rotation = tf.transforms[0].transform.rotation
        eye_r = euler_from_quaternion(eye_rotation.x, eye_rotation.y, eye_rotation.z, eye_rotation.w)

def findMovement():
    global head, eye_r, eye_t
    vel_linear = 0
    vel_angular = 0
    while eye_r == []:
        Event().wait(1.0)

    if eye_r[0] > 0.7 and eye_r[2] < 0:
            #print('mov -theta')
            vel_angular = -1
    elif eye_r[0] < -0.7 and eye_r[2] < 0:
            #print('mov +theta') 
            vel_angular = 1
    elif abs(eye_r[0]) > 2.5 and eye_r[2] > 1.3:
            #print('mov foward')
            vel_linear = 1
    elif eye_r[1] < 1.2:
            #print('mov backwards')
            vel_linear = -1
    else:
            #print('no mov')
            vel_linear = 0
            vel_angular = 0
        
    return vel_linear,vel_angular   

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
    rospy.init_node('teste', anonymous = True)
    
    # Declare velocity publisher
    velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=1)
    # Subscribers
    pose_subscriber = rospy.Subscriber('turtle1/pose', Pose, poseCallback)
    eye_subscriber = rospy.Subscriber('/tf', TFMessage, rtGeneCallBack)

    while not rospy.is_shutdown():
       linear, angular = findMovement()

       velocity_message = Twist()
       velocity_message.linear.x = linear
       velocity_message.angular.z = angular
       velocity_publisher.publish(velocity_message)