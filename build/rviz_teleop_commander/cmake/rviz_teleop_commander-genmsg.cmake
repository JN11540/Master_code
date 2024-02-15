# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rviz_teleop_commander: 7 messages, 0 services")

set(MSG_I_FLAGS "-Irviz_teleop_commander:/home/edward/catkin_ws/src/rviz_teleop_commander/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg;-Ivisualization_msgs:/home/edward/catkin_ws/src/common_msgs/visualization_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rviz_teleop_commander_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg" NAME_WE)
add_custom_target(_rviz_teleop_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rviz_teleop_commander" "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg" ""
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg" NAME_WE)
add_custom_target(_rviz_teleop_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rviz_teleop_commander" "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg" ""
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg" NAME_WE)
add_custom_target(_rviz_teleop_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rviz_teleop_commander" "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg" "rviz_teleop_commander/kdanger:std_msgs/Header"
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg" NAME_WE)
add_custom_target(_rviz_teleop_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rviz_teleop_commander" "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg" NAME_WE)
add_custom_target(_rviz_teleop_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rviz_teleop_commander" "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg" "geometry_msgs/Quaternion:rviz_teleop_commander/Human:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg" NAME_WE)
add_custom_target(_rviz_teleop_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rviz_teleop_commander" "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg" NAME_WE)
add_custom_target(_rviz_teleop_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rviz_teleop_commander" "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_cpp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_cpp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_cpp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_cpp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_cpp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_cpp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander
)

### Generating Services

### Generating Module File
_generate_module_cpp(rviz_teleop_commander
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rviz_teleop_commander_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rviz_teleop_commander_generate_messages rviz_teleop_commander_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_cpp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_cpp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_cpp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_cpp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_cpp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_cpp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_cpp _rviz_teleop_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_teleop_commander_gencpp)
add_dependencies(rviz_teleop_commander_gencpp rviz_teleop_commander_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_teleop_commander_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_eus(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_eus(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_eus(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_eus(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_eus(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_eus(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander
)

### Generating Services

### Generating Module File
_generate_module_eus(rviz_teleop_commander
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rviz_teleop_commander_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rviz_teleop_commander_generate_messages rviz_teleop_commander_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_eus _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_eus _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_eus _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_eus _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_eus _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_eus _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_eus _rviz_teleop_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_teleop_commander_geneus)
add_dependencies(rviz_teleop_commander_geneus rviz_teleop_commander_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_teleop_commander_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_lisp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_lisp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_lisp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_lisp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_lisp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_lisp(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander
)

### Generating Services

### Generating Module File
_generate_module_lisp(rviz_teleop_commander
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rviz_teleop_commander_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rviz_teleop_commander_generate_messages rviz_teleop_commander_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_lisp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_lisp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_lisp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_lisp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_lisp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_lisp _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_lisp _rviz_teleop_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_teleop_commander_genlisp)
add_dependencies(rviz_teleop_commander_genlisp rviz_teleop_commander_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_teleop_commander_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_nodejs(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_nodejs(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_nodejs(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_nodejs(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_nodejs(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_nodejs(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rviz_teleop_commander
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rviz_teleop_commander_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rviz_teleop_commander_generate_messages rviz_teleop_commander_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_nodejs _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_nodejs _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_nodejs _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_nodejs _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_nodejs _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_nodejs _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_nodejs _rviz_teleop_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_teleop_commander_gennodejs)
add_dependencies(rviz_teleop_commander_gennodejs rviz_teleop_commander_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_teleop_commander_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_py(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_py(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_py(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_py(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_py(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg"
  "${MSG_I_FLAGS}"
  "/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Quaternion.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Pose.msg;/home/edward/catkin_ws/src/common_msgs/geometry_msgs/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander
)
_generate_msg_py(rviz_teleop_commander
  "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander
)

### Generating Services

### Generating Module File
_generate_module_py(rviz_teleop_commander
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rviz_teleop_commander_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rviz_teleop_commander_generate_messages rviz_teleop_commander_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/group.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_py _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdanger.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_py _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/kdangerArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_py _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/Human.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_py _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanArray.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_py _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/HumanGazebo.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_py _rviz_teleop_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/edward/catkin_ws/src/rviz_teleop_commander/msg/groupChart.msg" NAME_WE)
add_dependencies(rviz_teleop_commander_generate_messages_py _rviz_teleop_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_teleop_commander_genpy)
add_dependencies(rviz_teleop_commander_genpy rviz_teleop_commander_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_teleop_commander_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_teleop_commander
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rviz_teleop_commander_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rviz_teleop_commander_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(rviz_teleop_commander_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_teleop_commander
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rviz_teleop_commander_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rviz_teleop_commander_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(rviz_teleop_commander_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_teleop_commander
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rviz_teleop_commander_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rviz_teleop_commander_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(rviz_teleop_commander_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_teleop_commander
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rviz_teleop_commander_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rviz_teleop_commander_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(rviz_teleop_commander_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_teleop_commander
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rviz_teleop_commander_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rviz_teleop_commander_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(rviz_teleop_commander_generate_messages_py visualization_msgs_generate_messages_py)
endif()
