cmake_minimum_required(VERSION 3.0.2)
project(linear_actuator_as)

find_package(catkin REQUIRED COMPONENTS
  std_msgs 
  actionlib_msgs
)

add_action_files(
   FILES
   Actuator.action
 )

generate_messages(
   DEPENDENCIES
   std_msgs actionlib_msgs
 )

catkin_package(
 CATKIN_DEPENDS rospy
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)