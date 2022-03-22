# Install script for directory: /home/dell/work/ros_ws/hivebotics/src/hw_interface/robot_hw_interface

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_hw_interface/msg" TYPE FILE FILES
    "/home/dell/work/ros_ws/hivebotics/src/hw_interface/robot_hw_interface/msg/LinearActuatorPose.msg"
    "/home/dell/work/ros_ws/hivebotics/src/hw_interface/robot_hw_interface/msg/MycobotAngles.msg"
    "/home/dell/work/ros_ws/hivebotics/src/hw_interface/robot_hw_interface/msg/ToiletBrush.msg"
    "/home/dell/work/ros_ws/hivebotics/src/hw_interface/robot_hw_interface/msg/ToolUpdate.msg"
    "/home/dell/work/ros_ws/hivebotics/src/hw_interface/robot_hw_interface/msg/WaterPump.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_hw_interface/action" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/hw_interface/robot_hw_interface/action/RobotUpdate.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_hw_interface/msg" TYPE FILE FILES
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/robot_hw_interface/msg/RobotUpdateAction.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/robot_hw_interface/msg/RobotUpdateActionGoal.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/robot_hw_interface/msg/RobotUpdateActionResult.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/robot_hw_interface/msg/RobotUpdateActionFeedback.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/robot_hw_interface/msg/RobotUpdateGoal.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/robot_hw_interface/msg/RobotUpdateResult.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/robot_hw_interface/msg/RobotUpdateFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_hw_interface/cmake" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/robot_hw_interface/catkin_generated/installspace/robot_hw_interface-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/include/robot_hw_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/roseus/ros/robot_hw_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/common-lisp/ros/robot_hw_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/gennodejs/ros/robot_hw_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/dell/work/ros_ws/hivebotics/src/build/devel/lib/python3/dist-packages/robot_hw_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/lib/python3/dist-packages/robot_hw_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/robot_hw_interface/catkin_generated/installspace/robot_hw_interface.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_hw_interface/cmake" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/robot_hw_interface/catkin_generated/installspace/robot_hw_interface-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_hw_interface/cmake" TYPE FILE FILES
    "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/robot_hw_interface/catkin_generated/installspace/robot_hw_interfaceConfig.cmake"
    "/home/dell/work/ros_ws/hivebotics/src/build/hw_interface/robot_hw_interface/catkin_generated/installspace/robot_hw_interfaceConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_hw_interface" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/hw_interface/robot_hw_interface/package.xml")
endif()

