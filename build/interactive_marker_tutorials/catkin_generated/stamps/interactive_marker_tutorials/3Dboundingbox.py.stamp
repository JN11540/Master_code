#!/usr/bin/env python

"""
Copyright (c) 2011, Willow Garage, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Willow Garage, Inc. nor the names of its
      contributors may be used to endorse or promote products derived from
      this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
"""

import rospy

from interactive_markers.interactive_marker_server import *
from visualization_msgs.msg import *
from math import sqrt

positions = list()
color_changes = False


def processFeedback( feedback ):
    global color_changes
    if feedback.event_type == InteractiveMarkerFeedback.BUTTON_CLICK:
        color_changes = True
        print(color_changes)
        # server.applyChanges()
    
def makeBoxControl( msg ):
    print(color_changes)
    control = InteractiveMarkerControl()
    control.always_visible = True
    # control.orientation_mode = InteractiveMarkerControl.VIEW_FACING
    # control.interaction_mode = InteractiveMarkerControl.MOVE_PLANE
    control.interaction_mode = InteractiveMarkerControl.BUTTON
    control.independent_marker_orientation = True

    marker = Marker()

    marker.type = Marker.CUBE
    marker.scale.x = msg.scale
    marker.scale.y = msg.scale
    marker.scale.z = msg.scale
    if (color_changes == False):
        marker.color.r = 0.65+0.7*msg.pose.position.x
        marker.color.g = 0.65+0.7*msg.pose.position.y
        marker.color.b = 0.65+0.7*msg.pose.position.z
        marker.color.a = 1.0
    else:
        marker.color.r = 1.0
        marker.color.a = 1.0

    control.markers.append( marker )
    msg.controls.append( control )
    interactive_result_pub_.publish(msg)
    return msg

def makeCube():
    # server = InteractiveMarkerServer("cube")
    side_length = 2
    step = 1.0/ side_length
    count = 0

    for i in range(side_length):
        x = -0.5 + step * i
        for j in range(side_length):
            y = -0.5 + step * j
            for k in range(side_length):
                z = step * k
                marker = InteractiveMarker()
                
                marker.header.frame_id = "map"
                marker.scale = step

                marker.pose.position.x = x
                marker.pose.position.y = y
                marker.pose.position.z = z

                positions.append( [x,y,z] )

                marker.name = str(count)
                c = makeBoxControl(marker)

                server.insert( c, processFeedback )
                count += 1
                server.applyChanges()

if __name__=="__main__":
    rospy.init_node("cube")

    server = InteractiveMarkerServer("cube")
    interactive_result_pub_ = rospy.Publisher("interactive_object_map", InteractiveMarker, queue_size=10)

    rospy.loginfo("initializing..")
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        makeCube()
        rate.sleep()

    rospy.spin()

