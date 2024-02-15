#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from std_msgs.msg import Int16
from rgbd_object_detection.msg import test_msg

def talker():
    pub_msg = rospy.Publisher('chatter', test_msg, queue_size=10)
    pub_str = rospy.Publisher('chatter_str', String, queue_size=10)
    pub_int = rospy.Publisher('chatter_int', Int16, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        a = 1.23
        b = 4.56
        msg = test_msg()
        msg.id = "(%s," %a, "%s)" %b
        msg.value = 0
        pub_msg.publish(msg)

        hello_str = "%s" %a, "%s" %b
        print(hello_str)
        a = 0
        pub_str.publish(hello_str)
        pub_int.publish(a)

        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass