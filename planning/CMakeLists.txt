cmake_minimum_required(VERSION 3.0.2)
project(planning)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  moveit_ros_planning_interface
  moveit_ros_move_group
  moveit_visual_tools
)

find_package(Eigen3)

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
 CATKIN_DEPENDS roscpp std_msgs moveit_visual_tools moveit_ros_move_group moveit_ros_planning_interface
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(abluo_motion
  src/abluo_elipse_traj_motion.cpp
)

include_directories(SYSTEM ${EIGEN3_INCLUDE_DIRS})

add_dependencies(abluo_motion ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(abluo_motion
  ${catkin_LIBRARIES}  ${Boost_LIBRARIES}
)

install(TARGETS abluo_motion DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
<<<<<<< HEAD


add_executable(node_test_trajectory_vis
  src/test_trajectory_vis.cpp
)
target_link_libraries(node_test_trajectory_vis
  ${catkin_LIBRARIES}
)
=======
>>>>>>> refs/remotes/origin/master
