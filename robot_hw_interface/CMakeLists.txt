cmake_minimum_required(VERSION 3.0.2)
project(robot_hw_interface)
# add_compile_options(-std=c++11)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -pthread")


find_package(catkin REQUIRED COMPONENTS
  roscpp
  actionlib
  std_msgs
  message_generation
  actionlib_msgs
)

find_package(Boost REQUIRED COMPONENTS thread)


## Generate messages in the 'msg' folder
add_message_files(
  FILES
  LinearActuatorPose.msg
  MycobotAngles.msg
  ToiletBrush.msg
  ToolUpdate.msg
  WaterPump.msg
)

## Generate actions in the 'action' folder
add_action_files(
  FILES
  RobotUpdate.action
)
## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  actionlib_msgs
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS roscpp actionlib actionlib_msgs
)

add_executable(robot_hw_interface_class src/robot_hw_interface_server.cpp)
add_dependencies(robot_hw_interface_class ${robot_hw_interface_class_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(robot_hw_interface_class 
  ${catkin_LIBRARIES}
)

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
)