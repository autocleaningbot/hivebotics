cmake_minimum_required(VERSION 2.8.3)

project(moveit_cartesian_plan_plugin)

# Load catkin and all dependencies required for this package
find_package(catkin REQUIRED COMPONENTS
  interactive_markers
  pluginlib
  roscpp
  rqt_gui
  rqt_gui_cpp
  rviz
  visualization_msgs
  moveit_ros_move_group
  moveit_ros_planning_interface
  tf
  tf_conversions
  cartesian_impedance_msgs
)

if("${qt_gui_cpp_USE_QT_MAJOR_VERSION} " STREQUAL "5 ")
	find_package(Qt5Widgets REQUIRED)
	find_package(Qt5Concurrent REQUIRED)
	set(qt_LIBRARIES Qt5::Widgets Qt5::Concurrent)
else()
	find_package(Qt4 COMPONENTS QtCore QtGui REQUIRED)
	include(${QT_USE_FILE})
	set(qt_LIBRARIES ${QT_QTCORE_LIBRARY} ${QT_QTGUI_LIBRARY})
endif()

## I prefer the Qt signals and slots to avoid defining "emit", "slots",
## etc because they can conflict with boost signals, so define QT_NO_KEYWORDS here.
add_definitions(-DQT_NO_KEYWORDS)
add_definitions(-std=c++11) 

set(
	moveit_cartesian_plan_plugin_SRCS
		src/add_way_point.cpp
		src/point_tree_item.cpp
		src/point_tree_model.cpp
		src/widgets/path_planning_widget.cpp
		src/generate_cartesian_path.cpp
		src/set_cart_impedance.cpp
		src/set_cart_ft_control.cpp
		src/waypoint.cpp
		${MOC_FILES}
)

set(
	moveit_cartesian_plan_plugin_HDRS
		include/moveit_cartesian_plan_plugin/add_way_point.h
		include/moveit_cartesian_plan_plugin/point_tree_item.h
		include/moveit_cartesian_plan_plugin/point_tree_model.h
		include/moveit_cartesian_plan_plugin/widgets/path_planning_widget.h
		include/moveit_cartesian_plan_plugin/generate_cartesian_path.h
		include/moveit_cartesian_plan_plugin/set_cart_impedance.h
		include/moveit_cartesian_plan_plugin/set_cart_ft_control.h
		include/moveit_cartesian_plan_plugin/waypoint.h
)

set(moveit_cartesian_plan_plugin_UIS
  src/widgets/path_planning_widget.ui
)

set(moveit_cartesian_plan_plugin_INCLUDE_DIRECTORIES
  include
  "${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}"
)

if(NOT EXISTS "${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}")
	file(MAKE_DIRECTORY "${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}")
endif()

catkin_package(
	INCLUDE_DIRS
		${moveit_cartesian_plan_plugin_INCLUDE_DIRECTORIES}
	LIBRARIES
		${PROJECT_NAME}
	CATKIN_DEPENDS
		interactive_markers
		pluginlib
		roscpp
		rqt_gui
		rviz
		rqt_gui_cpp
		visualization_msgs
)

if("${qt_gui_cpp_USE_QT_MAJOR_VERSION} " STREQUAL "5 ")
	qt5_wrap_cpp(moveit_cartesian_plan_plugin_MOCS ${moveit_cartesian_plan_plugin_HDRS})
else()
	qt4_wrap_cpp(moveit_cartesian_plan_plugin_MOCS ${moveit_cartesian_plan_plugin_HDRS})
endif()
# ensure generated header files are being created in the devel space
set(_cmake_current_binary_dir "${CMAKE_CURRENT_BINARY_DIR}")
set(CMAKE_CURRENT_BINARY_DIR "${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}")
if("${qt_gui_cpp_USE_QT_MAJOR_VERSION} " STREQUAL "5 ")
	qt5_wrap_ui(moveit_cartesian_plan_plugin_UIS_H ${moveit_cartesian_plan_plugin_UIS})
else()
	qt4_wrap_ui(moveit_cartesian_plan_plugin_UIS_H ${moveit_cartesian_plan_plugin_UIS})
endif()
set(CMAKE_CURRENT_BINARY_DIR "${_cmake_current_binary_dir}")


include_directories(${moveit_cartesian_plan_plugin_INCLUDE_DIRECTORIES} ${catkin_INCLUDE_DIRS})
add_library(
	${PROJECT_NAME}
		${moveit_cartesian_plan_plugin_SRCS}
		${moveit_cartesian_plan_plugin_HDRS}
		${moveit_cartesian_plan_plugin_MOCS}
		${moveit_cartesian_plan_plugin_UIS_H}
) # ${moveit_cartesian_plan_plugin_UIS_H}
target_link_libraries(
	${PROJECT_NAME}
		${catkin_LIBRARIES}
		${qt_LIBRARIES}
		${moveit_move_group_interface}
		yaml-cpp
)

add_dependencies(
	${PROJECT_NAME}
		${${PROJECT_NAME}_EXPORTED_TARGETS}
		${catkin_EXPORTED_TARGETS}
)

find_package(class_loader)
class_loader_hide_library_symbols(${PROJECT_NAME})

install(
	TARGETS
		${PROJECT_NAME}
	ARCHIVE DESTINATION
		${CATKIN_PACKAGE_LIB_DESTINATION}
	LIBRARY DESTINATION
		${CATKIN_PACKAGE_LIB_DESTINATION}
#	RUNTIME DESTINATION
#		${CATKIN_GLOBAL_BIN_DESTINATION}
)

install(
	PROGRAMS
		scripts/moveit_cartesian_plan_plugin
	DESTINATION
		${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
	FILES
		plugin.xml
	DESTINATION
		${CATKIN_PACKAGE_SHARE_DESTINATION}
)
