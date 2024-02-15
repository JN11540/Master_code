#include "ros/ros.h"
#include "std_msgs/String.h"
#include <rgbd_object_detection/talker.h>
#include <sstream>
 
int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<rgbd_object_detection::talker>("chatter", 1000);
  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok())
  {
    rgbd_object_detection::talker msg;
    msg.header.stamp = ros::Time::now();
    std::stringstream ss;
    ss << "hello world " << count;
    msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());

    chatter_pub.publish(msg);
    ros::spinOnce(); 
    loop_rate.sleep();
    ++count;
  }
  return 0;
}