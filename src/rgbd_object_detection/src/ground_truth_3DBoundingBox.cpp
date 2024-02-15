#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/Point.h>
#include <cmath>
#include <Eigen/Core>
#include <Eigen/Geometry>
#include <Eigen/Dense>
#include <opencv2/opencv.hpp>
#include <vector>

int main(int argc, char** argv) {
  ros::init(argc, argv, "showline");
  ros::NodeHandle n;
  ros::Rate r(10);

  // float point_[3]={};
  // float point_;
  // n.getParam("/point/w", point_);
  // std::cout << round(point_*1000)/1000 << std::endl;
  // std::cout << "123" << std::endl;

  ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 10);
  visualization_msgs::Marker whitechair_line_list;
  visualization_msgs::Marker brownchair_line_list;

  
  
  whitechair_line_list.header.frame_id = "map";
  whitechair_line_list.lifetime = ros::Duration(0.5);
  whitechair_line_list.ns = "whitechair";
  whitechair_line_list.action = visualization_msgs::Marker::ADD;
  whitechair_line_list.pose.orientation.w = 0.2;
  whitechair_line_list.id = 1;
  whitechair_line_list.type = visualization_msgs::Marker::LINE_LIST;
  whitechair_line_list.scale.x = 0.02;
  // Line list is red
  whitechair_line_list.color.r = 1.0;
  whitechair_line_list.color.a = 1.0;
  geometry_msgs::Point p;
  p.x = 1.14;
  p.y = -0.14;
  p.z = 0;
  geometry_msgs::Point p1;
  p1.x = 1.625;
  p1.y = -0.365;
  p1.z = 0;
  geometry_msgs::Point p2;
  p2.x = 1.815;
  p2.y = 0.075;
  p2.z = 0;
  geometry_msgs::Point p3;
  p3.x = 1.33;
  p3.y = 0.3;
  p3.z = 0;
  geometry_msgs::Point p4;
  p4.x = 1.14;
  p4.y = -0.14;
  p4.z = 0.845;
  geometry_msgs::Point p5;
  p5.x = 1.625;
  p5.y = -0.365;
  p5.z = 0.845;
  geometry_msgs::Point p6;
  p6.x = 1.815;
  p6.y = 0.075;
  p6.z = 0.845;
  geometry_msgs::Point p7;
  p7.x = 1.33;
  p7.y = 0.3;
  p7.z = 0.845;
  
  whitechair_line_list.points.push_back(p);
  whitechair_line_list.points.push_back(p1);
  whitechair_line_list.points.push_back(p1);
  whitechair_line_list.points.push_back(p2);
  whitechair_line_list.points.push_back(p2);
  whitechair_line_list.points.push_back(p3);
  whitechair_line_list.points.push_back(p3);
  whitechair_line_list.points.push_back(p);
  
  whitechair_line_list.points.push_back(p4);
  whitechair_line_list.points.push_back(p5);
  whitechair_line_list.points.push_back(p5);
  whitechair_line_list.points.push_back(p6);
  whitechair_line_list.points.push_back(p6);
  whitechair_line_list.points.push_back(p7);
  whitechair_line_list.points.push_back(p7);
  whitechair_line_list.points.push_back(p4);

  whitechair_line_list.points.push_back(p4);
  whitechair_line_list.points.push_back(p);
  whitechair_line_list.points.push_back(p5);
  whitechair_line_list.points.push_back(p1);
  whitechair_line_list.points.push_back(p6);
  whitechair_line_list.points.push_back(p2);
  whitechair_line_list.points.push_back(p7);
  whitechair_line_list.points.push_back(p3);

  brownchair_line_list.header.frame_id = "map";
  brownchair_line_list.lifetime = ros::Duration(0.5);
  brownchair_line_list.ns = "brownchair";
  brownchair_line_list.action = visualization_msgs::Marker::ADD;
  brownchair_line_list.pose.orientation.w = 0.2;
  brownchair_line_list.id = 2;
  brownchair_line_list.type = visualization_msgs::Marker::LINE_LIST;
  brownchair_line_list.scale.x = 0.02;
  // Line list is red
  brownchair_line_list.color.r = 1.0;
  brownchair_line_list.color.a = 1.0;
  geometry_msgs::Point w;
  w.x = 1.825;
  w.y = 0.635;
  w.z = 0;
  geometry_msgs::Point w1;
  w1.x = 2.22;
  w1.y = 0.445;
  w1.z = 0;
  geometry_msgs::Point w2;
  w2.x = 2.415;
  w2.y = 0.85;
  w2.z = 0;
  geometry_msgs::Point w3;
  w3.x = 2.02;
  w3.y = 1.04;
  w3.z = 0;
  geometry_msgs::Point w4;
  w4.x = 1.825;
  w4.y = 0.635;
  w4.z = 0.82;
  geometry_msgs::Point w5;
  w5.x = 2.22;
  w5.y = 0.445;
  w5.z = 0.82;
  geometry_msgs::Point w6;
  w6.x = 2.415;
  w6.y = 0.85;
  w6.z = 0.82;
  geometry_msgs::Point w7;
  w7.x = 2.02;
  w7.y = 1.04;
  w7.z = 0.82;
  
  brownchair_line_list.points.push_back(w);
  brownchair_line_list.points.push_back(w1);
  brownchair_line_list.points.push_back(w1);
  brownchair_line_list.points.push_back(w2);
  brownchair_line_list.points.push_back(w2);
  brownchair_line_list.points.push_back(w3);
  brownchair_line_list.points.push_back(w3);
  brownchair_line_list.points.push_back(w);
  
  brownchair_line_list.points.push_back(w4);
  brownchair_line_list.points.push_back(w5);
  brownchair_line_list.points.push_back(w5);
  brownchair_line_list.points.push_back(w6);
  brownchair_line_list.points.push_back(w6);
  brownchair_line_list.points.push_back(w7);
  brownchair_line_list.points.push_back(w7);
  brownchair_line_list.points.push_back(w4);

  brownchair_line_list.points.push_back(w4);
  brownchair_line_list.points.push_back(w);
  brownchair_line_list.points.push_back(w5);
  brownchair_line_list.points.push_back(w1);
  brownchair_line_list.points.push_back(w6);
  brownchair_line_list.points.push_back(w2);
  brownchair_line_list.points.push_back(w7);
  brownchair_line_list.points.push_back(w3);

  while (ros::ok()) {
    marker_pub.publish(whitechair_line_list);
    marker_pub.publish(brownchair_line_list);
    whitechair_line_list.header.stamp = ros::Time::now();
    brownchair_line_list.header.stamp = ros::Time::now();
    r.sleep();
  }

  return 0;
}

