execute_process(COMMAND "/home/edward/catkin_ws/build/interactive_markers/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/edward/catkin_ws/build/interactive_markers/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
