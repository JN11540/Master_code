# CMake generated Testfile for 
# Source directory: /home/edward/catkin_ws/src/ros_comm/utilities/roswtf
# Build directory: /home/edward/catkin_ws/build/ros_comm/utilities/roswtf
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_roswtf_rostest_test_roswtf.test "/home/edward/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/edward/catkin_ws/build/test_results/roswtf/rostest-test_roswtf.xml" "--return-code" "/usr/bin/python3 /home/edward/catkin_ws/src/ros_comm/tools/rostest/scripts/rostest --pkgdir=/home/edward/catkin_ws/src/ros_comm/utilities/roswtf --package=roswtf --results-filename test_roswtf.xml --results-base-dir \"/home/edward/catkin_ws/build/test_results\" /home/edward/catkin_ws/src/ros_comm/utilities/roswtf/test/roswtf.test ")
set_tests_properties(_ctest_roswtf_rostest_test_roswtf.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/home/edward/catkin_ws/devel/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/edward/catkin_ws/src/ros_comm/utilities/roswtf/CMakeLists.txt;9;add_rostest;/home/edward/catkin_ws/src/ros_comm/utilities/roswtf/CMakeLists.txt;0;")
add_test(_ctest_roswtf_nosetests_test "/home/edward/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/edward/catkin_ws/build/test_results/roswtf/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/edward/catkin_ws/build/test_results/roswtf" "/usr/bin/nosetests3 -P --process-timeout=60 --where=/home/edward/catkin_ws/src/ros_comm/utilities/roswtf/test --with-xunit --xunit-file=/home/edward/catkin_ws/build/test_results/roswtf/nosetests-test.xml")
set_tests_properties(_ctest_roswtf_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/edward/catkin_ws/src/ros_comm/utilities/roswtf/CMakeLists.txt;10;catkin_add_nosetests;/home/edward/catkin_ws/src/ros_comm/utilities/roswtf/CMakeLists.txt;0;")
