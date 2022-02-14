#! /usr/bin/env python2

import rospy
from tf2_msgs.msg import TFMessage
from scipy.spatial.transform import Rotation as R
from threading import Event
import math

head = []
eye_r = []
eye_t = []

def euler_from_quaternion(x, y, z, w):
        """
        Convert a quaternion into euler angles (roll, pitch, yaw)
        roll is rotation around x in radians (counterclockwise)
        pitch is rotation around y in radians (counterclockwise)
        yaw is rotation around z in radians (counterclockwise)
        """
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
        quat = [eye_rotation.x, eye_rotation.y, eye_rotation.z, eye_rotation.w]
        r = R.from_quat([quat])
        eye_r = r.as_euler('xyz')
        #eye_r = euler_from_quaternion(eye_rotation.x, eye_rotation.y, eye_rotation.z, eye_rotation.w)
        #print(eye_r)

    elif frame == "gaze/head_pose_estimated0":
        head_rotation = tf.transforms[0].transform.rotation
        head_quat = [head_rotation.x, head_rotation.y, head_rotation.z, head_rotation.w]
        r = R.from_quat([head_quat])
        head = r.as_euler('xyz', degrees=True)

def findMovement():
    global head, eye_r, eye_t
    vel_linear = 0
    vel_angular = 0
    print('empty list')
    while eye_r == []:
        Event().wait(1.0)
    print('msg send')

    try:
        if eye_r[0,0] > 0.7 and eye_r[0,2] < 0:
            #print('mov -theta')
            vel_angular = -1
        elif eye_r[0,0] < -0.7 and eye_r[0,2] < 0:
            #print('mov +theta') 
            vel_angular = 1
        elif abs(eye_r[0,0]) > 2.5 and eye_r[0,2] > 1.3:
            #print('mov foward')
            vel_linear = 1
        elif eye_r[0,1] < 1.2:
            #print('mov backwards')
            vel_linear = -1
        else:
            #print('no mov')
            vel_linear = 0
            vel_angular = 0
    except:
        print('No gaze msg')
        
    return vel_linear,vel_angular
    


        

    


rospy.init_node('teste', anonymous=False)

eye_topic = '/tf'
eye_subscriber = rospy.Subscriber(eye_topic, TFMessage, rtGeneCallBack)

while not rospy.is_shutdown():
    findMovement()

rospy.spin()