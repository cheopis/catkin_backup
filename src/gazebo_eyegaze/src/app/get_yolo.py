#!/usr/bin/env python2  
from logging import exception

from matplotlib.pyplot import get
import rospy
from darknet_ros_msgs.msg import BoundingBoxes, ObjectCount
import yolo_app
from threading import Thread, Event
import aux
import json

class yolo_subscriber:
    def __init__(self):
        self.box_sub = rospy.Subscriber('/darknet_ros/bounding_boxes', BoundingBoxes, self.boxCallback)
        self.count_sub = rospy.Subscriber('/darknet_ros/found_object', ObjectCount, self.countCallback)

    def boxCallback(self,data):
        self.boxes = data.bounding_boxes
        self.getBoxParam()

    def countCallback(self,data):
        self.count = data.count

    def getBoxParam(self):
        names = {'names': []}
        try:
            for i in range(self.count):
                names['names'].append(self.boxes[i].Class)
            with open('data.json', 'w') as json_file:
                json.dump(names, json_file)
        except:
            pass

def listener():
    rospy.init_node('topic_subscriber')
    box = yolo_subscriber()
    box.getBoxParam()
    print('yaya')
    rospy.spin()


if __name__ == '__main__':
    Thread(target = yolo_app.startApp).start() 
    #Thread(target = listener).start()
    listener()
    
