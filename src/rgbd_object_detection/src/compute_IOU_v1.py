#!/usr/bin/python3
import rospy
import yaml
import numpy as np
from numpy import *
from shapely.geometry import Polygon
import numpy as np
from rgbd_object_detection.msg import computeAP_id
from rgbd_object_detection.msg import computeAP_ingredient


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

    # publish message
    computeAP_id_msg = computeAP_id()
    computeAP_id_pub = rospy.Publisher('find_computeAP_id', computeAP_id, queue_size=10)

    # compute IOU
    print('------------------')
    print("\n")

    for i in range(2):

        # center point(predict)
        obj_p = 'object_'+ str(i)
        center_p = (((Predict[obj_p])[1])['center_point'])[0]
        x_p = center_p['x']
        y_p = center_p['y']
        z_p = center_p['z']

        # find all center point(ground truth), 
        # and compute distance between
        # center point(predict) to center point(ground truth)
        distance_array = []
        for j in range(2):
            obj = 'object_'+ str(j)
            center = (((GroundTruth[obj])[1])['center_point'])[0]
            x = center['x']
            y = center['y']
            z = center['z']
            distance = round(((x_p - x)**2 + (y_p - y)**2 + (z_p - z)**2)**0.5, 6)
            distance_array.append(distance)
        min_index = distance_array.index(min(distance_array))

        # after we find minimum distance, we compute IOU
        object_p = ((Predict[obj_p])[0])['eight_point']
        pointArray_p = []
        for o in object_p:
            point = []
            point.append(o['x'])
            point.append(o['z'])
            point.append(o['y'])
            pointArray_p.append(point)
        corners_3d_predict = np.array(pointArray_p)
        obj = 'object_'+ str(min_index)
        object = ((GroundTruth[obj])[0])['eight_point']
        pointArray = []
        for o in object:
            point = []
            point.append(o['x'])
            point.append(o['z'])
            point.append(o['y'])
            pointArray.append(point)
        corners_3d_ground = np.array(pointArray)
        (IOU_3d,IOU_2d)=box3d_iou(corners_3d_predict,corners_3d_ground)
        IOU_3d = round(IOU_3d, 6)
        IOU_2d = round(IOU_2d, 6)
        print ('3D IOU:', IOU_3d) #3d IoU
        print ('2D IOU of BEV:', IOU_2d) #2d IoU of BEV(bird eye's view


        classification_p = ((Predict[obj_p])[1])['class']
        classification = ((GroundTruth[obj])[1])['class']
        if (classification == classification_p):
            set_class = True
        else:
            set_class = False
        confidence_p = ((Predict[obj_p])[1])['confidence']
        computeAP_ingredient_msg = computeAP_ingredient()
        computeAP_ingredient_msg.iou = IOU_3d
        computeAP_ingredient_msg.confidence = confidence_p
        computeAP_ingredient_msg.classification = set_class
        computeAP_id_msg.ingredient.append(computeAP_ingredient_msg)

    print("\n")
    print('------------------')

    while not rospy.is_shutdown():
        computeAP_id_pub.publish(computeAP_id_msg)
        rate.sleep()

    # get_3d_box(box_size, heading_angle, center)
    # corners_3d_ground  = get_3d_box((4, 4, 4), -1.531692, (0,0,0)) 
    # corners_3d_predict = get_3d_box((2, 2, 2), -1.531692, (1,1,1))
    # print(corners_3d_predict)
                   
    # (IOU_3d,IOU_2d)=box3d_iou(corners_3d_predict,corners_3d_ground)
    # print ('3D IOU:', round(IOU_3d, 6)) #3d IoU
    # print ('2D IOU of BEV:', round(IOU_2d, 6)) #2d IoU of BEV(bird eye's view
    