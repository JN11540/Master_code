#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from std_msgs.msg import Int16

def talker():
    pub_str = rospy.Publisher('chatter_str', String, queue_size=10)
    pub_int = rospy.Publisher('chatter_int', Int16, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        hello_str = 1
        # a = 0
        pub_int.publish(hello_str)
        # pub_int.publish(a)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

