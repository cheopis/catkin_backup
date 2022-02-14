#!/usr/bin/env python2
import rospy
import tf
import gaze_aplication
from threading import Thread

eye = False
head = True

def eyeMovement(euler):
    if euler[2] > 1.8:
            print('right')
    elif euler[2] < 1.4:
            print('left') 
    elif euler[0] < -1.6:
            print('up')
    elif euler[0] > -1.4:
            print('down')
            

def headMovement(euler):
    if euler[1] > 0.6:
            print('right')
    elif euler[1] < -0.6:
            print('left') 
    elif euler[0] < -2.0:
            print('up')
    elif euler[0] > -1.0:
            print('down')

def gazeMoveMouse(m, trans):
    trans_px = map(lambda x: int((x+0.13)*m_to_pixel), trans)
    

def mainTF():
    while not rospy.is_shutdown():
        try:
            if eye:
                (trans, rot) = tf_listener.lookupTransform('/gaze/world_gaze0', '/base_link', rospy.Time(0))
            elif head:
                (trans, rot) = tf_listener.lookupTransform('gaze/head_pose_estimated0', '/base_link', rospy.Time(0))
            euler  =  tf.transformations.euler_from_quaternion(rot)
            gazeMoveMouse(trans, eye, head)
            
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue

        rospy.Rate(1.0).sleep() 

if __name__ == '__main__':
    rospy.init_node('gaze_aplication', anonymous=True)
    tf_listener = tf.TransformListener()

    m_to_pixel = 3779.5275590551

    rate = rospy.Rate(10)

    #Thread(target = gaze_aplication.startApp).start() 
    #Thread(target = mainTF).start()
    mainTF()
       
