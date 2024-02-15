# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rgbd_object_detection: 9 messages, 0 services")

set(MSG_I_FLAGS "-Irgbd_object_detection:/home/edward/catkin_ws/src/rgbd_object_detection/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg;-Ivisualization_msgs:/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg;-Igeometry_msgs:/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rgbd_object_detection_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg" NAME_WE)
add_custom_target(_rgbd_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbd_object_detection" "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg" "sensor_msgs/RegionOfInterest:std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg" NAME_WE)
add_custom_target(_rgbd_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbd_object_detection" "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Vector3:visualization_msgs/Marker:std_msgs/Header:std_msgs/ColorRGBA:rgbd_object_detection/OneObjectMarker:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg" NAME_WE)
add_custom_target(_rgbd_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbd_object_detection" "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Vector3:visualization_msgs/Marker:std_msgs/Header:std_msgs/ColorRGBA:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg" NAME_WE)
add_custom_target(_rgbd_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbd_object_detection" "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg" "rgbd_object_detection/computeAP_ingredient"
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg" NAME_WE)
add_custom_target(_rgbd_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbd_object_detection" "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg" ""
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg" NAME_WE)
add_custom_target(_rgbd_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbd_object_detection" "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg" ""
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg" NAME_WE)
add_custom_target(_rgbd_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbd_object_detection" "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg" ""
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg" NAME_WE)
add_custom_target(_rgbd_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbd_object_detection" "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg" NAME_WE)
add_custom_target(_rgbd_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rgbd_object_detection" "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_cpp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_cpp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_cpp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_cpp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_cpp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_cpp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_cpp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_cpp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
)

### Generating Services

### Generating Module File
_generate_module_cpp(rgbd_object_detection
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rgbd_object_detection_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rgbd_object_detection_generate_messages rgbd_object_detection_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_cpp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_cpp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_cpp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_cpp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_cpp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_cpp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_cpp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_cpp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_cpp _rgbd_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbd_object_detection_gencpp)
add_dependencies(rgbd_object_detection_gencpp rgbd_object_detection_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbd_object_detection_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_eus(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_eus(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_eus(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_eus(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_eus(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_eus(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_eus(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_eus(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
)

### Generating Services

### Generating Module File
_generate_module_eus(rgbd_object_detection
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rgbd_object_detection_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rgbd_object_detection_generate_messages rgbd_object_detection_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_eus _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_eus _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_eus _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_eus _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_eus _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_eus _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_eus _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_eus _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_eus _rgbd_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbd_object_detection_geneus)
add_dependencies(rgbd_object_detection_geneus rgbd_object_detection_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbd_object_detection_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_lisp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_lisp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_lisp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_lisp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_lisp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_lisp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_lisp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_lisp(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
)

### Generating Services

### Generating Module File
_generate_module_lisp(rgbd_object_detection
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rgbd_object_detection_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rgbd_object_detection_generate_messages rgbd_object_detection_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_lisp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_lisp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_lisp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_lisp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_lisp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_lisp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_lisp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_lisp _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_lisp _rgbd_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbd_object_detection_genlisp)
add_dependencies(rgbd_object_detection_genlisp rgbd_object_detection_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbd_object_detection_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_nodejs(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_nodejs(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_nodejs(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_nodejs(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_nodejs(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_nodejs(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_nodejs(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_nodejs(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rgbd_object_detection
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rgbd_object_detection_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rgbd_object_detection_generate_messages rgbd_object_detection_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_nodejs _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_nodejs _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_nodejs _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_nodejs _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_nodejs _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_nodejs _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_nodejs _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_nodejs _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_nodejs _rgbd_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbd_object_detection_gennodejs)
add_dependencies(rgbd_object_detection_gennodejs rgbd_object_detection_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbd_object_detection_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/edward/catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_py(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_py(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Vector3.msg;/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_py(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_py(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_py(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_py(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_py(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
)
_generate_msg_py(rgbd_object_detection
  "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
)

### Generating Services

### Generating Module File
_generate_module_py(rgbd_object_detection
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rgbd_object_detection_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rgbd_object_detection_generate_messages rgbd_object_detection_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/MaskrcnnResult.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_py _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/AllObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_py _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/OneObjectMarker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_py _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_id.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_py _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/computeAP_ingredient.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_py _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/highest_z.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_py _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/test_msg.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_py _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_py _rgbd_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rgbd_object_detection/msg/talker_1.msg" NAME_WE)
add_dependencies(rgbd_object_detection_generate_messages_py _rgbd_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rgbd_object_detection_genpy)
add_dependencies(rgbd_object_detection_genpy rgbd_object_detection_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rgbd_object_detection_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rgbd_object_detection
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rgbd_object_detection_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rgbd_object_detection_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(rgbd_object_detection_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rgbd_object_detection
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rgbd_object_detection_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rgbd_object_detection_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(rgbd_object_detection_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rgbd_object_detection
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rgbd_object_detection_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rgbd_object_detection_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(rgbd_object_detection_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rgbd_object_detection
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rgbd_object_detection_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rgbd_object_detection_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(rgbd_object_detection_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rgbd_object_detection
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rgbd_object_detection_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rgbd_object_detection_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(rgbd_object_detection_generate_messages_py visualization_msgs_generate_messages_py)
endif()
