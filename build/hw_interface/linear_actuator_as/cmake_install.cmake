# Install script for directory: /home/dell/work/ros_ws/hivebotics/src/hw_interface/linear_actuator_as

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/linear_actuator_as/action" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/hw_interface/linear_actuator_as/action/Actuator.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/linear_actuator_as/msg" TYPE FILE FILES
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/linear_actuator_as/msg/ActuatorAction.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/linear_actuator_as/msg/ActuatorActionGoal.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/linear_actuator_as/msg/ActuatorActionResult.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/linear_actuator_as/msg/ActuatorActionFeedback.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/linear_actuator_as/msg/ActuatorGoal.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/linear_actuator_as/msg/ActuatorResult.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/linear_actuator_as/msg/ActuatorFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/linear_actuator_as/cmake" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/linear_actuator_as/catkin_generated/installspace/linear_actuator_as-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/include/linear_actuator_as")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/roseus/ros/linear_actuator_as")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/common-lisp/ros/linear_actuator_as")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/gennodejs/ros/linear_actuator_as")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/dell/work/ros_ws/hivebotics/src/build/devel/lib/python3/dist-packages/linear_actuator_as")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/lib/python3/dist-packages/linear_actuator_as")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/linear_actuator_as/catkin_generated/installspace/linear_actuator_as.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/linear_actuator_as/cmake" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/linear_actuator_as/catkin_generated/installspace/linear_actuator_as-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/linear_actuator_as/cmake" TYPE FILE FILES
    "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/linear_actuator_as/catkin_generated/installspace/linear_actuator_asConfig.cmake"
    "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/linear_actuator_as/catkin_generated/installspace/linear_actuator_asConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/linear_actuator_as" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/hw_interface/linear_actuator_as/package.xml")
endif()

