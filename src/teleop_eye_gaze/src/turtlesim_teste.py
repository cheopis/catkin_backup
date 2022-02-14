#! /usr/bin/env python2

import rospy
#from pynput.keyboard import Key, Listener
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import math
import time
from std_srvs.srv import Empty

x = 0
y = 0
yaw = 0

def poseCallback(pose_message):
    global x
    global y, yaw
    x = pose_message.x
    y = pose_message.y
    yaw = pose_message.theta

def move(speed, distance, is_foward):
    velocity_message = Twist()
    global x, y
    x0 = x
    y0 = y
    if (is_foward):
        velocity_message.linear.x = abs(speed)
    else:
        velocity_message.linear.x = -abs(speed)

    distance_moved = 0.0
    loop_rate = rospy.Rate(10)
    cmd_vel_topic = '/turtle1/cmd_vel'
    velocity_publisher = rospy.Publisher(cmd_vel_topic, Twist, queue_size=10)

    while True:
        rospy.loginfo("Turtlesim moves fowards")
        velocity_publisher.publish(velocity_message)

        loop_rate.sleep()

        distance_moved = distance_moved+abs(0.5 * math.sqrt(((x-x0)**2) + ((y-y0)**2)))
        print(distance_moved)
        if not (distance_moved < distance):
            rospy.loginfo("reached")
            break

        velocity_message.linear.x = 0
        velocity_publisher.publish(velocity_message)

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
    try:
        rospy.init_node('turtlesim_motion_pose', anonymous = True)
        
        # Declare velocity publisher
        cmd_vel_topic = '/turtle1/cmd_vel'
        velocity_publisher = rospy.Publisher(cmd_vel_topic, Twist, queue_size=10)

        position_topic = 'turtle1/pose'
        pose_subscriber = rospy.Subscriber(position_topic, Pose, poseCallback)
        time.sleep(2)
        
        #go_to_goal(1.0, 1.0)

        #setDesiredOrientation(math.radians(90))
    
    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated.")

