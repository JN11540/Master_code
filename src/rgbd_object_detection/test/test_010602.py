#!/usr/bin/python3

import rospy
from visualization_msgs.msg import Marker, MarkerArray
from apriltag_ros.msg import AprilTagDetectionArray


# 全局变量用于跟踪Marker的数量, apriltag的id
current_marker_count = 1
apriltag_id = None
# 创建一个全局列表来存储所有的marker的ID
pedestrian_markers = []
# 创建一個3D人模型
color_array = []

def apriltag_array_callback(msg):
    global apriltag_id
    if (len(msg.detections) != 0):
        apriltag_id = msg.detections[0].id[0]
        rospy.loginfo("ID: %d", apriltag_id)

def marker_callback(msg):
    # 全局变量
    global current_marker_count, pedestrian_markers, apriltag_id

    # 追蹤marker數量
    new_marker_count = len(msg.markers)

    # 修改Marker消息的text字段
    if new_marker_count == current_marker_count + 1:
        # msg.markers[new_marker_count-1].type = Marker.MESH_RESOURCE
        # msg.markers[new_marker_count-1].mesh_resource = "file:///home/edward/catkin_ws/src/rgbd_object_detection/model/lowPolyMan1.DAE"
        # msg.markers[new_marker_count-1].mesh_use_embedded_materials = True
        # msg.markers[new_marker_count-1].scale.x = 0.6
        # msg.markers[new_marker_count-1].scale.y = 0.6
        # msg.markers[new_marker_count-1].scale.z = 0.6
        # msg.markers[new_marker_count-1].pose.position.z-=0.35

        if (apriltag_id != None):
            msg.markers[new_marker_count-1].text = "Staff_"+str(apriltag_id)
            msg.markers[new_marker_count-1].color.r = 238/255
            msg.markers[new_marker_count-1].color.g = 130/255
            msg.markers[new_marker_count-1].color.b = 238/255
            msg.markers[new_marker_count-1].color.a = 1.0

            pedestrian_markers.append("Staff_"+str(apriltag_id))
            color_array.append([238/255, 130/255, 238/255, 1.0])

            apriltag_id = None
        else:
            msg.markers[new_marker_count-1].text = "Pedestrian"
            msg.markers[new_marker_count-1].color.r = 1.0
            msg.markers[new_marker_count-1].color.g = 165/255
            msg.markers[new_marker_count-1].color.b = 0.0
            msg.markers[new_marker_count-1].color.a = 1.0
            
            pedestrian_markers.append("Pedestrian")
            color_array.append([1.0, 165/255, 0.0, 1.0])

    # marker數量不變時
    if new_marker_count == current_marker_count:
        for i in range(1, len(msg.markers)):
            # msg.markers[i].type = Marker.MESH_RESOURCE
            # msg.markers[i].mesh_resource = "file:///home/edward/catkin_ws/src/rgbd_object_detection/model/lowPolyMan1.DAE"
            # msg.markers[i].mesh_use_embedded_materials = True
            # msg.markers[i].scale.x = 0.6
            # msg.markers[i].scale.y = 0.6
            # msg.markers[i].scale.z = 0.6
            # msg.markers[i].pose.position.z-=0.35
            msg.markers[i].text = pedestrian_markers[i-1]
            msg.markers[i].color.r = color_array[i-1][0]
            msg.markers[i].color.g = color_array[i-1][1]
            msg.markers[i].color.b = color_array[i-1][2]
            msg.markers[i].color.a = color_array[i-1][3]

    # 少一個marker時
    if new_marker_count == current_marker_count - 1:
        pedestrian_markers.pop(0)
        color_array.pop(0)


    # 更新marker數量
    current_marker_count = new_marker_count

    # 發佈修改後的Marker消息
    marker_publisher.publish(msg)

if __name__ == "__main__":
    rospy.init_node("modify_marker_text")

    # 訂閱Marker主題
    marker_subscriber = rospy.Subscriber("/hdl_people_tracking_nodelet/markers", MarkerArray, marker_callback)

    # 訂閱apriltag, Marker主題
    rospy.Subscriber("/tag_detections_hz_reduction", AprilTagDetectionArray, apriltag_array_callback)

    # 發佈修改後的Marker消息的發布者
    marker_publisher = rospy.Publisher("/new_hdl_people_tracking_nodelet/markers", MarkerArray, queue_size=10)

    rospy.spin()
