# Install script for directory: /home/dell/work/ros_ws/hivebotics/src/descriptions/accessories_description/brush_swapping_stick

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/descriptions/accessories_description/brush_swapping_stick/catkin_generated/installspace/brush_swapping_stick.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brush_swapping_stick/cmake" TYPE FILE FILES
    "/home/dell/work/ros_ws/hivebotics/src/build/descriptions/accessories_description/brush_swapping_stick/catkin_generated/installspace/brush_swapping_stickConfig.cmake"
    "/home/dell/work/ros_ws/hivebotics/src/build/descriptions/accessories_description/brush_swapping_stick/catkin_generated/installspace/brush_swapping_stickConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brush_swapping_stick" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/accessories_description/brush_swapping_stick/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brush_swapping_stick/config" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/accessories_description/brush_swapping_stick/config/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brush_swapping_stick/launch" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/accessories_description/brush_swapping_stick/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brush_swapping_stick/meshes" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/accessories_description/brush_swapping_stick/meshes/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brush_swapping_stick/urdf" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/accessories_description/brush_swapping_stick/urdf/")
endif()

