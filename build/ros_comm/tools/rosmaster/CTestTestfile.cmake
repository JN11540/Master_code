# CMake generated Testfile for 
# Source directory: /home/edward/catkin_ws/src/ros_comm/tools/rosmaster
# Build directory: /home/edward/catkin_ws/build/ros_comm/tools/rosmaster
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosmaster_nosetests_test "/home/edward/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/edward/catkin_ws/build/test_results/rosmaster/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/edward/catkin_ws/build/test_results/rosmaster" "/usr/bin/nosetests3 -P --process-timeout=60 --where=/home/edward/catkin_ws/src/ros_comm/tools/rosmaster/test --with-xunit --xunit-file=/home/edward/catkin_ws/build/test_results/rosmaster/nosetests-test.xml")
set_tests_properties(_ctest_rosmaster_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/edward/catkin_ws/src/ros_comm/tools/rosmaster/CMakeLists.txt;9;catkin_add_nosetests;/home/edward/catkin_ws/src/ros_comm/tools/rosmaster/CMakeLists.txt;0;")
