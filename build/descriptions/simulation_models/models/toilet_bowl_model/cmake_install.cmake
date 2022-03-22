# Install script for directory: /home/dell/work/ros_ws/hivebotics/src/descriptions/simulation_models/models/toilet_bowl_model

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/build/descriptions/simulation_models/models/toilet_bowl_model/catkin_generated/installspace/toilet_bowl_model.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/toilet_bowl_model/cmake" TYPE FILE FILES
    "/home/dell/work/ros_ws/hivebotics/src/build/descriptions/simulation_models/models/toilet_bowl_model/catkin_generated/installspace/toilet_bowl_modelConfig.cmake"
    "/home/dell/work/ros_ws/hivebotics/src/build/descriptions/simulation_models/models/toilet_bowl_model/catkin_generated/installspace/toilet_bowl_modelConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/toilet_bowl_model" TYPE FILE FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/simulation_models/models/toilet_bowl_model/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/toilet_bowl_model/config" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/simulation_models/models/toilet_bowl_model/config/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/toilet_bowl_model/launch" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/simulation_models/models/toilet_bowl_model/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/toilet_bowl_model/meshes" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/simulation_models/models/toilet_bowl_model/meshes/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/toilet_bowl_model/urdf" TYPE DIRECTORY FILES "/home/dell/work/ros_ws/hivebotics/src/descriptions/simulation_models/models/toilet_bowl_model/urdf/")
endif()

