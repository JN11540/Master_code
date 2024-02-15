#!/usr/bin/python3
import rospy
import yaml
import numpy as np
from scipy.spatial import ConvexHull
from numpy import *
from shapely.geometry import Polygon
import numpy as np
from interactive_markers.interactive_marker_server import *


def box3d_vol(corners):
    ''' corners: (8,3) no assumption on axis direction '''
    a = np.sqrt(np.sum((corners[0,:] - corners[1,:])**2))
    b = np.sqrt(np.sum((corners[1,:] - corners[2,:])**2))
    c = np.sqrt(np.sum((corners[0,:] - corners[4,:])**2))
    return a*b*c

def box3d_iou(corners1, corners2):
    ''' Compute 3D bounding box IoU.
    Input:
        corners1: numpy array (8,3), assume up direction is negative Y
        corners2: numpy array (8,3), assume up direction is negative Y
    Output:
        iou: 3D bounding box IoU
        iou_2d: bird's eye view 2D bounding box IoU
    todo (kent): add more description on corner points' orders.
    '''
    # corner points are in counter clockwise order
    rect1 = [(corners1[i,0], corners1[i,2]) for i in range(3,-1,-1)]
    rect2 = [(corners2[i,0], corners2[i,2]) for i in range(3,-1,-1)]
    
    # area1 = poly_area(np.array(rect1)[:,0], np.array(rect1)[:,1])
    # area2 = poly_area(np.array(rect2)[:,0], np.array(rect2)[:,1])
    # # print(area1)
   
    # inter, inter_area = convex_hull_intersection(rect1, rect2)
    # # print(inter_area)
    # iou_2d = inter_area/(area1+area2-inter_area)

    polygon1 = Polygon(rect1)
    polygon2 = Polygon(rect2)
    intersect = polygon1.intersection(polygon2).area
    union = polygon1.union(polygon2).area
    iou2d = intersect / union

    # print(corners1,rect2)
    ymax = min(corners1[0,1], corners2[0,1])
    ymin = max(corners1[4,1], corners2[4,1])

    inter_vol = intersect * max(0.0, ymax-ymin)
    
    vol1 = box3d_vol(corners1)
    vol2 = box3d_vol(corners2)
    iou3d = inter_vol / (vol1 + vol2 - inter_vol)
    return iou3d, iou2d

# ----------------------------------
# Helper functions for evaluation
# ----------------------------------

def get_3d_box(box_size, heading_angle, center):
    ''' Calculate 3D bounding box corners from its parameterization.
    Input:
        box_size: tuple of (length,wide,height)
        heading_angle: rad scalar, clockwise from pos x axis
        center: tuple of (x,y,z)
    Output:
        corners_3d: numpy array of shape (8,3) for 3D box cornders
    '''
    def roty(t):
        c = round(np.cos(t), 6)
        s = round(np.sin(t), 6)
        return np.array([[c,  0,  s],
                         [0,  1,  0],
                         [-s, 0,  c]])

    R = roty(heading_angle)
    l,w,h = box_size
    cx,cy,cz = center
    x_corners = [cx+l/2,cx+l/2,cx-l/2,cx-l/2,cx+l/2,cx+l/2,cx-l/2,cx-l/2]
    y_corners = [cy+h/2,cy+h/2,cy+h/2,cy+h/2,cy-h/2,cy-h/2,cy-h/2,cy-h/2]
    z_corners = [cz+w/2,cz-w/2,cz-w/2,cz+w/2,cz+w/2,cz-w/2,cz-w/2,cz+w/2]
    corners_3d = np.dot(R, np.vstack([x_corners,y_corners,z_corners]))
    # corners_3d[0,:] = corners_3d[0,:] + center[0];
    # corners_3d[1,:] = corners_3d[1,:] + center[1];
    # corners_3d[2,:] = corners_3d[2,:] + center[2];
    corners_3d = np.transpose(corners_3d)
    len, wid = corners_3d.shape
    for i in range(len):
        for j in range(wid):
            corners_3d[i][j] = round(corners_3d[i][j], 6)
    
    return corners_3d

    
if __name__=='__main__':
    #init
    rospy.init_node('computeIOU')

    

    rate = rospy.Rate(10)

    #get param from yaml
    param_path = rospy.get_param("~AllObjectGroundTruth")
    f = open(param_path, 'r')
    params_raw = f.read()
    f.close()
    GroundTruth = yaml.load(params_raw)
    param_path = rospy.get_param("~AllObjectPredict")
    f = open(param_path, 'r')
    params_raw = f.read()
    f.close()
    Predict = yaml.load(params_raw)

    object = ((GroundTruth['object_1'])[0])['eight_point']
    pointArray = []
    for obj in object:
        point = []
        point.append(obj['x'])
        point.append(obj['z'])
        point.append(obj['y'])
        pointArray.append(point)
    corners_3d_ground = np.array(pointArray)

    object_p = ((Predict['object_1'])[0])['eight_point']
    pointArray_p = []
    for obj in object_p:
        point = []
        point.append(obj['x'])
        point.append(obj['z'])
        point.append(obj['y'])
        pointArray_p.append(point)
    corners_3d_predict = np.array(pointArray_p)

    print('------------------')
    print("\n")
    # get_3d_box(box_size, heading_angle, center)
    # corners_3d_ground  = get_3d_box((4, 4, 4), -1.531692, (0,0,0)) 
    # corners_3d_predict = get_3d_box((2, 2, 2), -1.531692, (1,1,1))
    # print(corners_3d_predict)
                   
    (IOU_3d,IOU_2d)=box3d_iou(corners_3d_predict,corners_3d_ground)
    print ('3D IOU:', round(IOU_3d, 6)) #3d IoU
    print ('2D IOU of BEV:', round(IOU_2d, 6)) #2d IoU of BEV(bird eye's view
    print("\n")
    print('------------------')