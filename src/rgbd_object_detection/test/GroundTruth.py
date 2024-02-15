#!/usr/bin/python3
import rospy
from geometry_msgs.msg import Point
from visualization_msgs.msg import Marker
import yaml

def Build3DBoundingBox(Marker_msg, object, id):

    Marker_msg.header.frame_id = "map"
    # Marker_msg.lifetime = rospy.Duration(0)
    Marker_msg.id = id
    Marker_msg.action = Marker.ADD
    Marker_msg.pose.orientation.w = 0.2
    Marker_msg.type = Marker.LINE_LIST
    Marker_msg.scale.x = 0.02
    Marker_msg.color.r = 1.0
    Marker_msg.color.a = 1.0

    pointArray = []
    for obj in object:
        point = Point()
        point.x = obj['x']
        point.y = obj['y']
        point.z = obj['z']
        pointArray.append(point)

    Marker_msg.points.append(pointArray[0])
    Marker_msg.points.append(pointArray[1])
    Marker_msg.points.append(pointArray[1])
    Marker_msg.points.append(pointArray[2])
    Marker_msg.points.append(pointArray[2])
    Marker_msg.points.append(pointArray[3])
    Marker_msg.points.append(pointArray[3])
    Marker_msg.points.append(pointArray[0])

    Marker_msg.points.append(pointArray[4])
    Marker_msg.points.append(pointArray[5])
    Marker_msg.points.append(pointArray[5])
    Marker_msg.points.append(pointArray[6])
    Marker_msg.points.append(pointArray[6])
    Marker_msg.points.append(pointArray[7])
    Marker_msg.points.append(pointArray[7])
    Marker_msg.points.append(pointArray[4])

    Marker_msg.points.append(pointArray[4])
    Marker_msg.points.append(pointArray[0])
    Marker_msg.points.append(pointArray[5])
    Marker_msg.points.append(pointArray[1])
    Marker_msg.points.append(pointArray[6])
    Marker_msg.points.append(pointArray[2])
    Marker_msg.points.append(pointArray[7])
    Marker_msg.points.append(pointArray[3])

    return Marker_msg 

if __name__ == '__main__':
    #init
    rospy.init_node('showline')
    rate = rospy.Rate(10)

    #get param from yaml
    param_path = rospy.get_param("~AllObjectGroundTruth")
    f = open(param_path, 'r')
    params_raw = f.read()
    f.close()
    Object = yaml.load(params_raw)

    #publish
    AllObjectMarker_pub = rospy.Publisher('GroundTruth_marker', Marker, queue_size=10)

    #build 3D boundingbox marker
    id=0
    object_0 = ((Object['object_0'])[0])['eight_point']
    object_0_msg = Marker()
    object_0_msg = Build3DBoundingBox(object_0_msg, object_0, id)

    #build 3D boundingbox marker
    id=1
    object_1 = ((Object['object_1'])[0])['eight_point']
    object_1_msg = Marker()
    object_1_msg = Build3DBoundingBox(object_1_msg, object_1, id)


    while not rospy.is_shutdown():
        AllObjectMarker_pub.publish(object_0_msg)
        AllObjectMarker_pub.publish(object_1_msg)
        object_0_msg.header.stamp = rospy.Time.now()
        object_1_msg.header.stamp = rospy.Time.now()
        rate.sleep()
    