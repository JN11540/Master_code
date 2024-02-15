#include "ros/ros.h"
#include "std_msgs/String.h"
#include <rgbd_object_detection/talker.h>
#include <rgbd_object_detection/talker_1.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/exact_time.h>
#include <message_filters/sync_policies/approximate_time.h>

void chatterCallback(const rgbd_object_detection::talker::ConstPtr& msg, const rgbd_object_detection::talker_1::ConstPtr& msg_1)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());
  ROS_INFO("I heard: [%d]", msg_1->data);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
//   ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);
  message_filters::Subscriber<rgbd_object_detection::talker> sub(n, "chatter", 1);
  message_filters::Subscriber<rgbd_object_detection::talker_1> sub_1(n, "chatter_1", 1);

  typedef message_filters::sync_policies::ApproximateTime<rgbd_object_detection::talker, rgbd_object_detection::talker_1> MySyncPolicy;
  message_filters::Synchronizer<MySyncPolicy> sync_(MySyncPolicy(10), sub, sub_1);
  sync_.registerCallback(boost::bind(&chatterCallback, _1, _2));
  ros::spin();
  return 0;
}