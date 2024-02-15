# Install script for directory: /home/edward/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/edward/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edward/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/edward/catkin_ws/install" TYPE PROGRAM FILES "/home/edward/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edward/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/edward/catkin_ws/install" TYPE PROGRAM FILES "/home/edward/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edward/catkin_ws/install/setup.bash;/home/edward/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/edward/catkin_ws/install" TYPE FILE FILES
    "/home/edward/catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/home/edward/catkin_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edward/catkin_ws/install/setup.sh;/home/edward/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/edward/catkin_ws/install" TYPE FILE FILES
    "/home/edward/catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/home/edward/catkin_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edward/catkin_ws/install/setup.zsh;/home/edward/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/edward/catkin_ws/install" TYPE FILE FILES
    "/home/edward/catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/edward/catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/edward/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/edward/catkin_ws/install" TYPE FILE FILES "/home/edward/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/edward/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/common_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/fast_gicp/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/geometry/geometry/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/vision_opencv/opencv_tests/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/perception_pcl/perception_pcl/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/ros_comm/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rosgraph/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rosmaster/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rosparam/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/clients/rospy/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rosservice/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/roslaunch/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/utilities/roslz4/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rostest/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/actionlib_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/diagnostic_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/geometry_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/geometry/eigen_conversions/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/geometry/kdl_conversions/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/nav_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm_msgs/rosgraph_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/shape_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm_msgs/std_srvs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_roslib_comm/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/trajectory_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3/turtlebot3/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3/turtlebot3_navigation/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3_simulations/turtlebot3_simulations/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/vision_opencv/vision_opencv/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/visualization_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/utilities/xmlrpcpp/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/clients/roscpp/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/DynamixelSDK/ros/dynamixel_sdk/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/DynamixelSDK/ros/dynamixel_sdk_examples/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rosout/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/utilities/message_filters/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rosbag_storage/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rosmsg/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rosnode/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rostopic/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_rosbag_storage/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_roscpp/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_rosgraph/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_roslaunch/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_rosmaster/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_rosparam/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/topic_tools/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/tools/rosbag/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/utilities/roswtf/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/sensor_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/vision_opencv/cv_bridge/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/vision_opencv/image_geometry/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/perception_pcl/pcl_conversions/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/common_msgs/stereo_msgs/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_rosbag/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_rospy/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_rosservice/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_rostest/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ros_comm/test/test_rostopic/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/geometry/tf/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/apriltag_ros/apriltag_ros/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/perception_pcl/pcl_ros/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/hdl_global_localization/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/hdl_people_tracking/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/ndt_omp/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/hdl_localization/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/interactive_markers/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/interactive_marker_tutorials/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/rgbd_object_detection/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/pointcloud_to_laserscan/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/geometry/tf_conversions/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3/turtlebot3_bringup/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3/turtlebot3_example/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3_simulations/turtlebot3_fake/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3/turtlebot3_slam/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3_slam_navigation/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3/turtlebot3_teleop/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/rviz_teleop_commander/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/rviz_teleop_commander_object/cmake_install.cmake")
  include("/home/edward/catkin_ws/build/turtlebot3/turtlebot3_description/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/edward/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")