# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;control_msgs;control_toolbox;controller_manager;hardware_interface;joint_limits_interface;roscpp;rosparam_shortcuts;sensor_msgs;std_msgs;trajectory_msgs;transmission_interface;urdf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lgeneric_hw_control_loop;-lgeneric_hw_interface;-lsim_hw_interface".split(';') if "-lgeneric_hw_control_loop;-lgeneric_hw_interface;-lsim_hw_interface" != "" else []
PROJECT_NAME = "ros_control_boilerplate"
PROJECT_SPACE_DIR = "/usr/local"
PROJECT_VERSION = "0.6.1"
