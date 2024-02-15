#include "ros/ros.h"
#include "std_msgs/Int16.h"
#include <rgbd_object_detection/talker_1.h>
#include <sstream>
 
int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker_1");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<rgbd_object_detection::talker_1>("chatter_1", 1000);
  ros::Rate loop_rate(0.1);

  int count = 0;
  while (ros::ok())
  {
    rgbd_object_detection::talker_1 msg;
    msg.header.stamp = ros::Time::now();
    msg.data = count;

    ROS_INFO("%d", msg.data);

    chatter_pub.publish(msg);
    ros::spinOnce(); 
    loop_rate.sleep();
    ++count;
  }
  return 0;
}