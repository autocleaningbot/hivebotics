cmake_minimum_required(VERSION 3.0.2)
project(abluo_control)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  message_generation
  cmake_modules
  hardware_interface
  controller_manager
  control_msgs
  urdf
  std_msgs
  ros_control_boilerplate
  moveit_ros_planning_interface
  transmission_interface
  moveit_visual_tools
  rviz_visual_tools
  tf
)

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
# add_message_files(FILES
#   abluoTelemetry.msg
#   armCmd.msg
# )

## Generate added messages and services with any dependencies listed here
# generate_messages(
#   DEPENDENCIES
#   std_msgs
# )


###################################
## catkin specific configuration ##
###################################
catkin_package(
 INCLUDE_DIRS include
 CATKIN_DEPENDS roscpp hardware_interface transmission_interface controller_manager message_runtime
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

add_executable(abluo_hw_main
  # include/abluo_control/abluo_hw.h
  src/abluo_hw.cpp
  src/abluo_control.cpp
)
add_dependencies(abluo_hw_main ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(abluo_hw_main
  ${catkin_LIBRARIES}
)

add_executable(abluo_motion
  src/abluo_elipse_traj_motion.cpp
)

add_dependencies(abluo_motion ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(abluo_motion
  ${catkin_LIBRARIES}  ${Boost_LIBRARIES}
)

install(TARGETS abluo_motion DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

# add_executable(abluo_sim_echo
#   src/abluo_sim_echo.cpp
# )
# add_dependencies(abluo_sim_echo ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
# target_link_libraries(abluo_sim_echo
#   ${catkin_LIBRARIES}
# )

install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
  PATTERN "setup_assistant.launch" EXCLUDE)
install(DIRECTORY config DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

catkin_install_python(PROGRAMS
  scripts/abluo_hw_interface.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

