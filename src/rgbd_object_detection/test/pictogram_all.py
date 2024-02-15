#!/usr/bin/python3

import rospy
import math
from jsk_rviz_plugins.msg import Pictogram, PictogramArray
from visualization_msgs.msg import *
from random import random, choice
rospy.init_node("pictogram_all_sample")
p = rospy.Publisher("/pictogram_array", PictogramArray, queue_size=10)

r = rospy.Rate(1)
actions = [Pictogram.JUMP, Pictogram.JUMP_ONCE, Pictogram.ADD, 
           Pictogram.ROTATE_X, Pictogram.ROTATE_Y, Pictogram.ROTATE_Z]
pictograms = ["user",
            #   "fa-running",
              ]

counter = 0
while not rospy.is_shutdown():
    initial_x = -int(math.sqrt(len(pictograms)))/2
    arr = PictogramArray()
    # marker_array = MarkerArray()

    arr.header.frame_id = "map"
    arr.header.stamp = rospy.Time.now()
    
    for character in pictograms:
        msg = Pictogram()
        msg.header.frame_id = "map"
        msg.action = Pictogram.ROTATE_Y
        msg.header.stamp = rospy.Time.now()

        msg.pose.position.x = 1
        msg.pose.position.y = 1
        msg.pose.position.z = 0.3
        msg.pose.orientation.w = 0.7
        msg.pose.orientation.x = 0
        msg.pose.orientation.y = -0.7
        msg.pose.orientation.z = 0
        msg.size = 1
        msg.color.r = 255 / 255.0
        msg.color.g = 165 / 255.0
        # msg.color.b = 238 / 255.0
        msg.color.a = 1.0
        msg.character = character
        arr.pictograms.append(msg)
        # marker_array.markers.append(msg)

        # text_marker = Marker()
        # text_marker.header.frame_id = "map"
        # text_marker.action = Marker.ADD
        # text_marker.ns = "disinfection_tag"
        # text_marker.id = 1
        # text_marker.lifetime = rospy.Duration(1)
        # text_marker.type = Marker.TEXT_VIEW_FACING
        # text_marker.scale.z = 0.2
        # text_marker.pose.position = 2
        # text_marker.color.r = 1.0
        # text_marker.color.a = 1.0
        # text_marker.text = "Need Disinfection"
        # arr.pictograms.append(text_marker)

    p.publish(arr)
    # p.publish(marker_array)
    # r.sleep()
    counter = counter + 1
    if len(pictograms) == counter:
        counter = 0