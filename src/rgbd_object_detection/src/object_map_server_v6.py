#!/usr/bin/python3

''' This node maintains an object-level map

Note that the initialization of objects are important

PARAMETERS:
    ground_plane_height_
    iou_thresh_
    dist_thresh_
    need_clean_thresh_
    duplicate_iou_thresh_
'''

from __future__ import print_function
import rospy
import cv2
from visualization_msgs.msg import *
from geometry_msgs.msg import Point
from geometry_msgs.msg import Pose
import numpy as np
import sys
import copy
import shapely.geometry
from shapely.geometry import Polygon
from shapely.geometry import Point
from scipy.optimize import linear_sum_assignment
from scipy.spatial import ConvexHull
from rgbd_object_detection.msg import highest_z

from tf import TransformListener
from geometry_msgs.msg import PoseStamped

point_z = []

class ObjectMarker:
    def __init__(self, points, class_text):
        self.points_ = points # stores all the points of the convex hull
        self.associated_times_ = 1 # record how many times an object has been associated
        self.occupied_ = 0 # record how many frames an object has been occupied (a person is there)
        self.need_clean_ = False # record whether an object needs disinfection
        self.class_text_ = class_text # Visualization text
        self.occupied_person_leave_ = False
        self.disinfecting_ = False


    def update_points(self, new_points):
        self.points_ = new_points

    def add_associated_times(self):
        self.associated_times_ += 1
    
    def add_occupied_times(self):
        self.occupied_ += 1
    
    def reset_occupied_times(self):
        self.occupied_ = 0

    def set_need_clean(self):
        self.need_clean_ = True

    def reset_need_clean(self):
        self.need_clean_ = False

    def set_occupied_person_leave(self):
        self.occupied_person_leave_ = True

    def set_disinfecting(self):
        self.disinfecting_ = True

    def add_disinfecting_occupied_times(self):
        self.disinfecting_occupied_ += 1

    def reset_disinfecting_occupied_times(self):
        self.disinfecting_occupied_ = 0


class ObjectMap:

    def __init__(self):
        self.result_pub_ = rospy.Publisher("object_map", MarkerArray, queue_size=10)

        # subscribe object detections from current frame
        self.convex_hull_sub_ = rospy.Subscriber("object_convex_hull", MarkerArray, self.convex_hull_callback, queue_size=10)
        self.highest_z_ = rospy.Subscriber("high_z_pub", highest_z, self.callback)
        self.pedestrian_staff_sub_ = rospy.Subscriber("/new_hdl_people_tracking_nodelet/markers", MarkerArray, self.contact_time_and_distance_callback, queue_size=10)
        '''
        On the /hdl_people_tracking_nodelet/markers topic
            - the first marker is a CUBE_LIST
            - people poses are in marker_array.markers[0].points
            - following markers in marker_array are text
        '''


        self.ground_plane_height_ = -0.35

        self.object_map_ = []

        self.iou_thresh_ = 0.05 # iou threshold for data association
        self.dist_thresh_ = 0.6 # the distance from a person to an object for the object to be considered as occupied
        self.need_clean_thresh_ = 15 # how many frame an object is occupied make it needs to be cleaned
        self.duplicate_iou_thresh_ = 0.8 # threshold to view two detections as duplicate in the same frame
        self.tf_listener_ = TransformListener()
            

    def callback(self, msg):
        global point_z
        for i in range (len(list(msg.high_z))):
            point_z.append(msg.high_z[i])
        # print(point_z)
                    

    def publish_convex_hull_marker(self):
        ''' Publish the object map
        '''
        marker_array = MarkerArray()

        if len(point_z) != 0:
            for i_o in range(len(self.object_map_)):

                # polygon = shapely.geometry.Polygon(self.object_map_[i_o].points_)
                # 计算Polygon的中心点
                # centroid = polygon.centroid

                # # 获取中心点的坐标
                # centroid_x = centroid.x
                # centroid_y = centroid.y
                # print(centroid_x, centroid_y)

                line_strip = Marker()
                line_strip.header.frame_id = "map"
                line_strip.header.stamp = rospy.Time.now()
                line_strip.ns = "object_map"
                line_strip.action = Marker.ADD
                line_strip.pose.orientation.w = 1.0

                line_strip.id = i_o

                line_strip.type = Marker.LINE_STRIP

                line_strip.scale.x = 0.05

                line_strip.color.g = 1.0

                if self.object_map_[i_o].need_clean_ == True:
                    line_strip.color.r = 1.0
                elif self.object_map_[i_o].occupied_ > 0:
                    line_strip.color.r = self.object_map_[i_o].occupied_ / float(self.need_clean_thresh_)
                else:
                    line_strip.color.b = 1.0
                
                line_strip.color.a = 1.0

                poly = []

                for j in range(self.object_map_[i_o].points_.shape[0]):
                    point = Point()
                    point.x = round(self.object_map_[i_o].points_[j, 0], 6)
                    point.y = round(self.object_map_[i_o].points_[j, 1], 6)
                    point.z = 0
                    line_strip.points.append(point)
                    poly.append([int((point.x)*(10**6)), int((point.y)*(10**6))])
                polyarray = np.array(poly)

                point = Point()
                point.x = round(self.object_map_[i_o].points_[0, 0], 6)
                point.y = round(self.object_map_[i_o].points_[0, 1], 6)
                point.z = 0
                line_strip.points.append(point)

                line_strip.lifetime = rospy.Duration(0)

                # publish class tag
                class_tag = copy.deepcopy(self.object_map_[i_o].class_text_)
                class_tag.header = copy.deepcopy(line_strip.header)
                class_tag.ns = "class_tag"
                class_tag.id = copy.deepcopy(line_strip.id)
                class_tag.lifetime = rospy.Duration(0)

                # Add 'Need Disinfection' tag
                if self.object_map_[i_o].need_clean_ == True:
                    text_marker = Marker()
                    text_marker.header = copy.deepcopy(line_strip.header)
                    text_marker.action = Marker.ADD
                    text_marker.ns = "disinfection_tag"
                    text_marker.id = copy.deepcopy(line_strip.id)
                    text_marker.lifetime = rospy.Duration(0)
                    text_marker.type = Marker.TEXT_VIEW_FACING
                    text_marker.scale.z = 0.2
                    text_marker.pose.position = copy.deepcopy(line_strip.points[0])
                    text_marker.pose.position.z += 0.5
                    text_marker.color.r = 1.0
                    text_marker.color.g = 1.0
                    text_marker.color.a = 1.0
                    text_marker.text = "Don't approach"

                # ----------------------------------------------------------
                # convex hull contours -> rectangle 4 points
                rect = cv2.minAreaRect(polyarray)
                box = cv2.boxPoints(rect)
                for j in range(4):
                    box[j][0] = (box[j][0])*(10**-6)
                    box[j][1] = (box[j][1])*(10**-6)

                line_list = Marker()
                line_list.header.frame_id = "map"
                line_list.header.stamp = rospy.Time.now()
                line_list.ns = "object_map"
                line_list.action = Marker.ADD
                line_list.pose.orientation.w = 1.0

                line_list.id = i_o

                line_list.type = Marker.LINE_LIST

                line_list.scale.x = 0.02

                if self.object_map_[i_o].occupied_person_leave_ == True:
                    line_list.color.r = 1.0
                elif self.object_map_[i_o].need_clean_ == True:
                    line_list.color.g = 1.0
                    line_list.color.r = 1.0
                elif self.object_map_[i_o].occupied_ > 0:
                    line_list.color.g = 1.0
                    line_list.color.r = self.object_map_[i_o].occupied_ / float(self.need_clean_thresh_)
                else:
                    line_list.color.g = 1.0
                    line_list.color.b = 1.0
                
                line_list.color.a = 1.0

                pointArray_bottom = []
                pointArray_top = []
                for b in box:
                    point = Point()
                    point.x = b[0]
                    point.y = b[1]
                    point.z = 0
                    pointArray_bottom.append(point)
                for b in box:
                    point = Point()
                    point.x = b[0]
                    point.y = b[1]
                    point.z = point_z[i_o]
                    pointArray_top.append(point)
                line_list.points.append(pointArray_bottom[0])
                line_list.points.append(pointArray_bottom[1])
                line_list.points.append(pointArray_bottom[1])
                line_list.points.append(pointArray_bottom[2])
                line_list.points.append(pointArray_bottom[2])
                line_list.points.append(pointArray_bottom[3])
                line_list.points.append(pointArray_bottom[3])
                line_list.points.append(pointArray_bottom[0])

                line_list.points.append(pointArray_top[0])
                line_list.points.append(pointArray_top[1])
                line_list.points.append(pointArray_top[1])
                line_list.points.append(pointArray_top[2])
                line_list.points.append(pointArray_top[2])
                line_list.points.append(pointArray_top[3])
                line_list.points.append(pointArray_top[3])
                line_list.points.append(pointArray_top[0])

                line_list.points.append(pointArray_top[0])
                line_list.points.append(pointArray_bottom[0])
                line_list.points.append(pointArray_top[1])
                line_list.points.append(pointArray_bottom[1])
                line_list.points.append(pointArray_top[2])
                line_list.points.append(pointArray_bottom[2])
                line_list.points.append(pointArray_top[3])
                line_list.points.append(pointArray_bottom[3])

                line_list.lifetime = rospy.Duration(0)

                top = []
                bottom = []
                for b in box:
                    point_point = []
                    point_point.append(round(b[0],3))
                    point_point.append(round(b[1],3))
                    point_point.append(0)
                    bottom.append(point_point)
                for b in box:
                    point_point = []
                    point_point.append(round(b[0],3))
                    point_point.append(round(b[1],3))
                    point_point.append(round(point_z[i_o],3))
                    top.append(point_point)

                marker_array.markers.append(line_list)

                # publish class tag
                class_tag = copy.deepcopy(self.object_map_[i_o].class_text_)
                class_tag.header = copy.deepcopy(line_list.header)
                class_tag.ns = "class_tag"
                class_tag.id = copy.deepcopy(line_list.id)
                class_tag.lifetime = rospy.Duration(0)
                string = class_tag.text
                class_tag.text = string + "_" + str(i_o)
                x_inter = (box[2][0]+box[0][0])/2
                y_inter = (box[3][1]+box[1][1])/2
                z_inter = (point_z[i_o])/2
                class_tag.pose.position.x = x_inter
                class_tag.pose.position.y = y_inter
                class_tag.pose.position.z = z_inter
                marker_array.markers.append(class_tag)

                # ----------------------------------------------------------

                # Add 'Need Disinfection' tag
                if self.object_map_[i_o].occupied_person_leave_ == True:
                    text_marker = Marker()
                    text_marker.header = copy.deepcopy(line_list.header)
                    text_marker.action = Marker.ADD
                    text_marker.ns = "disinfection_tag"
                    text_marker.id = copy.deepcopy(line_list.id)
                    text_marker.lifetime = rospy.Duration(1)
                    text_marker.type = Marker.TEXT_VIEW_FACING
                    text_marker.scale.z = 0.2
                    text_marker.pose.position = copy.deepcopy(line_list.points[0])
                    text_marker.pose.position.z += 0.5
                    text_marker.color.r = 1.0
                    text_marker.color.a = 1.0
                    text_marker.text = "Need Disinfection"
                    marker_array.markers.append(text_marker)
                elif self.object_map_[i_o].occupied_person_leave_ == False:
                    text_marker = Marker()
                    text_marker.header = copy.deepcopy(line_list.header)
                    text_marker.action = Marker.ADD
                    text_marker.ns = "available_tag"
                    text_marker.id = copy.deepcopy(line_list.id)
                    text_marker.lifetime = rospy.Duration(1)
                    text_marker.type = Marker.TEXT_VIEW_FACING
                    text_marker.scale.z = 0.01
                    text_marker.pose.position = copy.deepcopy(line_list.points[0])
                    text_marker.pose.position.z += 0.5
                    text_marker.color.r = 1.0
                    text_marker.color.a = 1.0
                    text_marker.text = "available"
                    marker_array.markers.append(text_marker)

            self.result_pub_.publish(marker_array)

    def calculate_iou(self, polygon_1, polygon_2):
        ''' Calculate IoU of two polygons

        Args:
            polygon_1/polygon_2: polygons as 2D numpy array
        '''
        poly_1 = shapely.geometry.Polygon(polygon_1)
        poly_2 = shapely.geometry.Polygon(polygon_2)
        iou = poly_1.intersection(poly_2).area / poly_1.union(poly_2).area
        return iou

    def data_association(self, current_frame_detection_tuple):
        ''' Implement the data association pipeline
        '''
        # create a matrix of IoU scores
        # rows are detection list, columns are map list
        '''
        Example:
        Detection\Map     Object 0     Object 1     Object 2
        Detection A       IoU = 0         0            0 
        Detection B          0.56         0            0
        Detection C          0            0.77         0

        Object 2 in the map is not matches
        Detection A is a new object
        '''

        iou_matrix = np.zeros((len(current_frame_detection_tuple), len(self.object_map_)))

        for i in range(iou_matrix.shape[0]):
            for j in range(iou_matrix.shape[1]):
                # calculate iou and fill the matrix
                iou = self.calculate_iou(current_frame_detection_tuple[i][0], self.object_map_[j].points_)
                # it can be a new detection is iou is below the threshold
                if iou <= self.iou_thresh_:
                    iou = 0
                iou_matrix[i, j] = -iou # fill with negative value as cost

        new_detection_idx = []
        for i in range(iou_matrix.shape[0]):
            # find new detections
            if np.sum(iou_matrix[i, :]) == 0:
                # this is a new detection
                self.object_map_.append(ObjectMarker(current_frame_detection_tuple[i][0], \
                                                        current_frame_detection_tuple[i][1]))
                new_detection_idx.append(i)

        not_matched_objects = []
        for j in range(iou_matrix.shape[1]):
            # find not matched objects
            if np.sum(iou_matrix[:, j]) == 0:
                not_matched_objects.append(j)

        # run the hungarian algorithm
        row_ind, col_ind = linear_sum_assignment(iou_matrix)

        for idx in range(row_ind.shape[0]):
            if (row_ind[idx] in new_detection_idx) or (col_ind[idx] in not_matched_objects):
                # either no match or new detection case
                continue
            
            matched_detection = row_ind[idx]
            matched_object_in_map = col_ind[idx]

            # if the match iou is too small, do nothing
            # caveat: add negative sign here
            if -iou_matrix[matched_detection, matched_object_in_map] < self.iou_thresh_:
                continue

            # otherwise, get a new convex hull
            self.object_map_[matched_object_in_map].add_associated_times()
            new_points = np.append(self.object_map_[matched_object_in_map].points_, \
                                    current_frame_detection_tuple[matched_detection][0],\
                                    axis = 0)
            
            new_convex_hull = ConvexHull(new_points)
            # update the object
            self.object_map_[matched_object_in_map].update_points(new_points[new_convex_hull.vertices, :])

    def check_duplicate(self, polygon_1, polygon_2):
        ''' Check if two detections are duplicate by 
                checking whether one convex hull is (almost) completely inside the other one

        Args:
            polygon_1/polygon_2: polygons as 2D numpy array
        '''

        poly_1 = shapely.geometry.Polygon(polygon_1)
        poly_2 = shapely.geometry.Polygon(polygon_2)
        intersection = poly_1.intersection(poly_2).area
        if (intersection / poly_1.area) > self.duplicate_iou_thresh_ \
             or (intersection / poly_2.area) > self.duplicate_iou_thresh_:
            return True
        else:
            return False


    def remove_duplication_detection(self, current_frame_detection_tuple):
        ''' Remove duplicate detection and combine them into one convex hull
        '''
        # print(current_frame_detection_tuple)
        output = []
        for i in range(len(current_frame_detection_tuple)):
            no_duplicate = True

            for j in range(i + 1, len(current_frame_detection_tuple)):
                if self.check_duplicate(current_frame_detection_tuple[i][0], current_frame_detection_tuple[j][0]):
                    no_duplicate = False
                    new_points = np.append(current_frame_detection_tuple[i][0], \
                                            current_frame_detection_tuple[j][0],\
                                            axis = 0)
                    new_convex_hull = ConvexHull(new_points)
                    # update the new convex hull to the latter one
                    # it will then be added to the output when the loop traverse to there
                    current_frame_detection_tuple[j][0] = new_points[new_convex_hull.vertices, :]
            
            if no_duplicate:
                output.append(current_frame_detection_tuple[i])
        
        return output


    def convex_hull_callback(self, data):
        # subcribe to all the objects (convex hull) in current frame

        # data
        # data.markers
            # header (for convex hull points)
            # header (for text)

        current_frame_detection_tuple = [] # stores all the objects in this frame, a list of numpy arrays

        data_idx = 0
        while data_idx < len(data.markers):

            object_convex_hull =  np.empty((0,2), float)

            for point in data.markers[data_idx].points:
                # add each point into the list
                object_convex_hull = np.append(object_convex_hull, [[point.x, point.y]], axis=0)
            
            current_frame_detection_tuple.append([object_convex_hull, data.markers[data_idx + 1]])

            data_idx += 2

        if (len(current_frame_detection_tuple) == 0):
            return
        
        current_frame_detection_tuple = self.remove_duplication_detection(current_frame_detection_tuple)

        # do data association using the Hungarian algorithm
        if len(self.object_map_) == 0:
            # initailize the map
            for det in current_frame_detection_tuple:
                self.object_map_.append(ObjectMarker(det[0], det[1]))
            return
        else:
            self.data_association(current_frame_detection_tuple)

    
    def contact_time_and_distance_callback(self, data):

        person_list = []
        for person_marker in data.markers[0].points:
            person = shapely.geometry.Point(person_marker.x,\
                                            person_marker.y)
            person_list.append(person)

        
        for obj_idx in range(len(self.object_map_)):
            polygon = shapely.geometry.Polygon(self.object_map_[obj_idx].points_)
            if_occupied = False
            for person in person_list:
                distance = person.distance(polygon)
                if distance < self.dist_thresh_:
                    if_occupied = True
            
            if if_occupied == True:
                self.object_map_[obj_idx].add_occupied_times()
            else:
                self.object_map_[obj_idx].reset_occupied_times()
        
        for idx in range(len(self.object_map_)):
            # if an object has been occupied for more than a certain number of frames
            # set need clean to be true
            if self.object_map_[idx].occupied_ > self.need_clean_thresh_:
                self.object_map_[idx].set_need_clean()

        for idx_leave in range(len(self.object_map_)):
            if self.object_map_[idx_leave].need_clean_ == True:
                polygon = shapely.geometry.Polygon(self.object_map_[idx_leave].points_)
                for person in person_list:
                    distance = person.distance(polygon)
                    if distance >= self.dist_thresh_:
                        self.object_map_[idx_leave].set_occupied_person_leave()

        for ob_idx in range(len(self.object_map_)):
            if self.object_map_[ob_idx].occupied_person_leave_ == True:
                polygon = shapely.geometry.Polygon(self.object_map_[ob_idx].points_)
                person_count = 1
                for person_m in data.markers[0].points:
                    # print(data.markers[person_count].text)
                    if "Staff_" in data.markers[person_count].text:
                        staff_position = shapely.geometry.Point(person_m.x,\
                                                                person_m.y)
                        object_staff_distance = staff_position.distance(polygon)
                        if (object_staff_distance < self.dist_thresh_):
                            self.object_map_[ob_idx].set_disinfecting()
                        elif (object_staff_distance >= self.dist_thresh_) and (self.object_map_[ob_idx].disinfecting_ == True):
                            self.object_map_[ob_idx].disinfecting_ = False
                            self.object_map_[ob_idx].occupied_person_leave_ = False
                            self.object_map_[ob_idx].need_clean_ = False
                    person_count+=1

def main(args):

    object_map_server = ObjectMap()

    # Publish object marker in the main loop
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        
        if not len(object_map_server.object_map_) == 0:
            object_map_server.publish_convex_hull_marker()
        rate.sleep()

    rospy.spin()

if __name__ == '__main__':
    rospy.init_node('object_map_server', anonymous=True)
    # server = InteractiveMarkerServer("cube")
    main(sys.argv)