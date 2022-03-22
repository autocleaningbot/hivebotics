# Install script for directory: /home/dell/work/ros_ws/hivebotics/src/communication/abluo_1_communication

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abluo_1_communication/action" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/communication/abluo_1_communication/action/ArmMotionGroup.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abluo_1_communication/msg" TYPE FILE FILES
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
    "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abluo_1_communication/cmake" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/communication/abluo_1_communication/catkin_generated/installspace/abluo_1_communication-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/include/abluo_1_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/roseus/ros/abluo_1_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/common-lisp/ros/abluo_1_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/gennodejs/ros/abluo_1_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/dell/work/ros_ws/hivebotics/src/build/devel/lib/python3/dist-packages/abluo_1_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/build/devel/lib/python3/dist-packages/abluo_1_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/communication/abluo_1_communication/catkin_generated/installspace/abluo_1_communication.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abluo_1_communication/cmake" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/communication/abluo_1_communication/catkin_generated/installspace/abluo_1_communication-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abluo_1_communication/cmake" TYPE FILE FILES
    "/home/dell/work/ros_ws/hivebotics/src/build/communication/abluo_1_communication/catkin_generated/installspace/abluo_1_communicationConfig.cmake"
    "/home/dell/work/ros_ws/hivebotics/src/build/communication/abluo_1_communication/catkin_generated/installspace/abluo_1_communicationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abluo_1_communication" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/communication/abluo_1_communication/package.xml")
endif()

