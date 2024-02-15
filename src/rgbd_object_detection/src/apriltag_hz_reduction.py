#!/usr/bin/python3
import rospy
from apriltag_ros.msg import AprilTagDetectionArray

apriltad_msg = AprilTagDetectionArray()

def callback(data):
    # print(data.detections[0].id[0])
    apriltad_msg.detections = data.detections
    # print(apriltad_msg)

if __name__=='__main__':
    #init
    rospy.init_node('Apriltag_hz_reduction')
    rate = rospy.Rate(0.2)
    rospy.Subscriber("/tag_detections", AprilTagDetectionArray, callback)
    pub = rospy.Publisher('/tag_detections_hz_reduction', AprilTagDetectionArray, queue_size=10)

    while not rospy.is_shutdown():
        rospy.loginfo("hi")
        pub.publish(apriltad_msg)
        rate.sleep()
