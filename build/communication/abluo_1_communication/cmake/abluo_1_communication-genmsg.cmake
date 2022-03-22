# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "abluo_1_communication: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iabluo_1_communication:/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(abluo_1_communication_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg" NAME_WE)
add_custom_target(_abluo_1_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abluo_1_communication" "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg" "abluo_1_communication/ArmMotionGroupActionFeedback:std_msgs/Header:abluo_1_communication/ArmMotionGroupActionGoal:actionlib_msgs/GoalStatus:abluo_1_communication/ArmMotionGroupGoal:abluo_1_communication/ArmMotionGroupFeedback:actionlib_msgs/GoalID:abluo_1_communication/ArmMotionGroupActionResult:abluo_1_communication/ArmMotionGroupResult"
)

get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg" NAME_WE)
add_custom_target(_abluo_1_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abluo_1_communication" "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg" "abluo_1_communication/ArmMotionGroupGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg" NAME_WE)
add_custom_target(_abluo_1_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abluo_1_communication" "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg" "actionlib_msgs/GoalID:abluo_1_communication/ArmMotionGroupResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg" NAME_WE)
add_custom_target(_abluo_1_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abluo_1_communication" "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg" "abluo_1_communication/ArmMotionGroupFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg" NAME_WE)
add_custom_target(_abluo_1_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abluo_1_communication" "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg" ""
)

get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg" NAME_WE)
add_custom_target(_abluo_1_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abluo_1_communication" "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg" ""
)

get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg" NAME_WE)
add_custom_target(_abluo_1_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abluo_1_communication" "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_cpp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_cpp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_cpp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_cpp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_cpp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_cpp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication
)

### Generating Services

### Generating Module File
_generate_module_cpp(abluo_1_communication
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(abluo_1_communication_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(abluo_1_communication_generate_messages abluo_1_communication_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_cpp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_cpp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_cpp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_cpp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_cpp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_cpp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_cpp _abluo_1_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abluo_1_communication_gencpp)
add_dependencies(abluo_1_communication_gencpp abluo_1_communication_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abluo_1_communication_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_eus(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_eus(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_eus(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_eus(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_eus(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_eus(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication
)

### Generating Services

### Generating Module File
_generate_module_eus(abluo_1_communication
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(abluo_1_communication_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(abluo_1_communication_generate_messages abluo_1_communication_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_eus _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_eus _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_eus _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_eus _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_eus _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_eus _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_eus _abluo_1_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abluo_1_communication_geneus)
add_dependencies(abluo_1_communication_geneus abluo_1_communication_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abluo_1_communication_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_lisp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_lisp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_lisp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_lisp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_lisp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_lisp(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication
)

### Generating Services

### Generating Module File
_generate_module_lisp(abluo_1_communication
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(abluo_1_communication_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(abluo_1_communication_generate_messages abluo_1_communication_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_lisp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_lisp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_lisp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_lisp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_lisp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_lisp _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_lisp _abluo_1_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abluo_1_communication_genlisp)
add_dependencies(abluo_1_communication_genlisp abluo_1_communication_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abluo_1_communication_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_nodejs(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_nodejs(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_nodejs(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_nodejs(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_nodejs(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_nodejs(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication
)

### Generating Services

### Generating Module File
_generate_module_nodejs(abluo_1_communication
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(abluo_1_communication_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(abluo_1_communication_generate_messages abluo_1_communication_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_nodejs _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_nodejs _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_nodejs _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_nodejs _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_nodejs _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_nodejs _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_nodejs _abluo_1_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abluo_1_communication_gennodejs)
add_dependencies(abluo_1_communication_gennodejs abluo_1_communication_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abluo_1_communication_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_py(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_py(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_py(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_py(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_py(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication
)
_generate_msg_py(abluo_1_communication
  "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication
)

### Generating Services

### Generating Module File
_generate_module_py(abluo_1_communication
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(abluo_1_communication_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(abluo_1_communication_generate_messages abluo_1_communication_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupAction.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_py _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_py _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_py _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupActionFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_py _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupGoal.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_py _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupResult.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_py _abluo_1_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dell/work/ros_ws/hivebotics/src/build/devel/share/abluo_1_communication/msg/ArmMotionGroupFeedback.msg" NAME_WE)
add_dependencies(abluo_1_communication_generate_messages_py _abluo_1_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abluo_1_communication_genpy)
add_dependencies(abluo_1_communication_genpy abluo_1_communication_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abluo_1_communication_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abluo_1_communication
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(abluo_1_communication_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(abluo_1_communication_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abluo_1_communication
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(abluo_1_communication_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(abluo_1_communication_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abluo_1_communication
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(abluo_1_communication_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(abluo_1_communication_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abluo_1_communication
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(abluo_1_communication_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(abluo_1_communication_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abluo_1_communication
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(abluo_1_communication_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(abluo_1_communication_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
