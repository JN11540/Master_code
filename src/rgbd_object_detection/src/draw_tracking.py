#!/usr/bin/python3

import rospy
import random
import numpy as np

import message_filters
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from geometry_msgs.msg import Pose, PoseStamped, TransformStamped, Point, Quaternion, PoseWithCovarianceStamped
from tf.transformations import quaternion_from_euler, euler_from_quaternion, translation_from_matrix, quaternion_from_matrix, compose_matrix, quaternion_matrix, rotation_matrix
from sensor_msgs.msg import PointCloud2
from hdl_people_tracking.msg import ClusterArray
from hdl_people_tracking.msg import TrackArray

class Visualiser:
    def __init__(self):
        # self.fig = plt.figure(figsize=(6,6))
        self.fig,self.ax=plt.subplots(1,1)
        self.line2, = plt.plot([], [], 'b', markersize=1, linewidth=0.5)
        self.line1, = plt.plot([], [], 'r', markersize=2, linewidth=0.5)
        self.x_data1, self.y_data1 = [] , []
        self.x_data2, self.y_data2 = [] , []
        self.est_x, self.est_y = 0,0
        self.mea_x, self.mea_y = 0,0
        plt.legend([self.line1, self.line2], ["Kalman filter", "Observation values"])
        self.ax.set_xlabel("x-axis")
        self.ax.set_ylabel("y-axis")
        cid = self.fig.canvas.mpl_connect('button_press_event', self.onclick)
        
    def onclick(self, event):
        # print('button=%d, x=%d, y=%d, xdata=%f, ydata=%f' %
        #   (event.button, event.x, event.y, event.xdata, event.ydata))
        print("clear data")
        self.x_data1, self.y_data1 = [] , []
        self.x_data2, self.y_data2 = [] , []
    def plot_init(self):
        # plt.xlim(-200, 30)
        # plt.ylim(-200, 30)
        plt.xlim(-1, 3)
        plt.ylim(-3, 3)
        return self.line2

    # def getYaw(self, pose):
    #     quaternion = (pose.orientation.x, pose.orientation.y, pose.orientation.z,
    #             pose.orientation.w)
    #     euler = tf.transformations.euler_from_quaternion(quaternion)
    #     yaw = euler[2] 
    #     return yaw

    def estimate_callback(self, robot_data):
        if (robot_data.tracks != []):
            position_est = robot_data.tracks[0].pos
            self.est_x = position_est.x
            self.est_y = position_est.y
            self.x_data1.append(self.est_x)
            self.y_data1.append(self.est_y)

        # if (robot_data.clusters != []):
        #     print(robot_data.clusters[0].centroid)

        # print(robot_data.clusters.[0].centroid.x,robot_data.clusters.[0].centroid.y,robot_data.clusters.[0].centroid.z)


        # if self.est_x==0 and self.est_y==0:
        #     self.est_x = robot_data.pose.pose.position.x*100
        #     self.est_y = robot_data.pose.pose.position.y*100
        #     self.tmp_x = self.est_x
        #     self.tmp_y = self.est_y
        # else:
        #     if (self.tmp_x == robot_data.pose.pose.position.x) and (self.tmp_y == robot_data.pose.pose.position.y):
        #         return

        #     if abs(self.est_x - robot_data.pose.pose.position.x*100) > 25 or abs(self.est_y - robot_data.pose.pose.position.y*100) > 25 :
        #         factor = 0.01
        #     else:
        #         factor = 0.15
        #         self.est_x = factor * (robot_data.pose.pose.position.x*100) + (1-factor) * self.est_x
        #         self.est_y = factor * (robot_data.pose.pose.position.y*100) + (1-factor) * self.est_y

        #     self.tmp_x = robot_data.pose.pose.position.x
        #     self.tmp_y = robot_data.pose.pose.position.y

    def measurement_callback(self, robot_data):
        if (robot_data.clusters != []):
            centroid = robot_data.clusters[0].centroid
        
            self.mea_x = centroid.x
            self.mea_y = centroid.y
            self.x_data2.append(self.mea_x)
            self.y_data2.append(self.mea_y)

    def update_plot(self, frame):
        self.line2.set_data(self.x_data2, self.y_data2)
        self.line1.set_data(self.x_data1, self.y_data1)
        return self.line2

if __name__ == '__main__':
    rospy.init_node('draw_xy')
    rate = rospy.Rate(10) # 10hz or 100 ms
    vis = Visualiser()
    
    while not rospy.is_shutdown():
        rospy.Subscriber("/hdl_people_tracking_nodelet/tracks", TrackArray, vis.estimate_callback)
        rospy.Subscriber("/hdl_people_detection_nodelet/clusters", ClusterArray, vis.measurement_callback)
        ani =animation.FuncAnimation(fig=vis.fig, func=vis.update_plot, init_func=vis.plot_init)
        plt.show()
        rate.sleep()
    rospy.spin()


    # robot = message_filters.Subscriber("turtlebot02/map2odom", PoseWithCovarianceStamped)
    # desktop_camera = message_filters.Subscriber("/desktop_detection", AprilTagDetectionArray)
    # time_sync = message_filters.ApproximateTimeSynchronizer([robot, desktop_camera], 10, 0.1, allow_headerless=True)
    # time_sync.registerCallback(vis.odom_callback)
