cmake_minimum_required(VERSION 3.0.2)
project(linear_actuator_as)

find_package(catkin REQUIRED COMPONENTS
  rospy
  actionlib_msgs
)

add_action_files(
  FILES
  LinearActuatorActionMsg.action
)

generate_messages(
  DEPENDENCIES
  actionlib_msgs
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS std_msgs actionlib_msgs rospy
)

include_directories((
  $(catkin_INCLUDE_DIRS)
))