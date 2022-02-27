![HiveBotics](./docs/Hivebotics_Rectangle.jpg)

## Overview
This repo is organised into the following main directories:
1. **communication [deprecated]** : services and launch files to start communication with robot arm and linear actuator 
2. **descriptions** : xacro and urdf descriptions of robot and environment models
3. **hw_interface** : custom hw_interface for controlling linear actuator and mycobot pro 320
4. **moveit_configs**: moveit_configs files for entire robot system and also standalone mycobot pro 320
5. **planning**: trajectory planning scripts for the robot system

### Description
This project comprises of a mycobot pro 320 robot arm mounted on a linear actuator with the goal of performing toilet bowl cleaning operation using the robot arm. The end effector is a custom toilet brush design which will manipulate a disposable toilet brush along toilet bowl surfaces.

- **Hardware**: 
  - Robot Arm - Mycobot Pro 320
  - Linear Actuator - Motor: J5718HB2401
- **Moveit Controller**: 
  `position_controllers/JointTrajectoryController`
  - `position_controller` is currently used for simplicity because the robot arm api from manufacturer supports joint positions
  - `velocity_controllers` can be potentially implemented as the arm api can also take in velocity as a fraction of the joints max velocity
- **Links**:
  - Robot Arm Official Moveit Package: https://github.com/elephantrobotics/mycobot_ros
  - Official Python API for Robot Arm: https://github.com/elephantrobotics/pymycobot 


## Set Up Instructions


### A. ROS Installation
  
  * Version: ROS-NOETIC [Ensure that you get the correct version]
  1. Follow ROS Tutorial to download and install ROS-NOETIC
     - Link: http://wiki.ros.org/noetic/Installation
  2. After ROS has been installed, we need to install some of the required libraries for our package
      - Gazebo [http://gazebosim.org/tutorials?tut=ros_installing]
      - MoveIt [https://ros-planning.github.io/moveit_tutorials/doc/getting_started/getting_started.html]
      - warehouse-mongodb
      - JointTrajectoryController

### B. Set up workspace
  1. If you havent yet done so, create an appropriate working catkin directory
      - Typically we will create a `Developer` foler in the home directory
      - And then create a ros_workspaces folder inside Developer
      - ie. (~/Developer/ros_workspaces/)
  2. **Git clone** this repo which contains an entire catkin workspace into the src folder of a new workspace directory (ie. `ros_workspaces/hivebotics/src`)
      - You may need to set up SSH authentication if you havent done so with git
      - You should have (~/Developer/ros_workspaces/hivebotics/src)
  3. Inside the `hivebotics` directory, run:
      - `catkin_make`

### C. Install Dependencies
1. Dependencies missed will cause errors in the motion planning interface, when launched. To ensure all the requisite dependencies are installed, run through the franka tutorial installation in the moveit documentations
    - https://ros-planning.github.io/moveit_tutorials/doc/getting_started/getting_started.html

2. Missing Dependencies
    - If there are dependency packages that are not yet installed
      - Run `rosdep install ${package name}`
    - To install ros warehouse
      - `sudo apt-get install ros-noetic-warehouse-ros-mongo`
      - `sudo apt-get install ros-noetic-warehouse-ros`
    - effort_controllers/JointTrajectoryController does not exist
      - Run `sudo apt-get install ros-noetic-ros-control ros-noetic-ros-controllers`
    - Other Common dedpendencies that are usual sources of error
      - `sudo apt install ros-noetic-moveit`
      - `sudo apt install ros-noetic-moveit-resources-prbt-moveit-config`
      - `sudo apt-get install ros-noetic-ros-control ros-noetic-ros-controllers`
      - `sudo apt-get install ros-noetic-pilz-industrial-motion-planner`
      - `sudo apt-get install -y ros-noetic-rviz-visual-tools`

## Startup
1. To run the motion planning interface with Rviz, run
    - `roslaunch abluo_1_moveit_config demo.launch `

2. To run the motion planning interface with Simulation in Gazebo + RVIZ Planner, run
    - Without a mongodb database
      - `roslaunch abluo_1_moveit_config demo_gazebo.launch `
    - With a mongodb database in Rviz
      - Ensure mongodb is installed on the computer
        - Link: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
      - `roslaunch abluo_1_moveit_config demo_gazebo.launch db:=true`
3. To start the hardware interface in order to execute motion on the real robot
    -  a. Launch the linear actuator server
          `roslaunch linear_actuator_as linear_actuator_topic.launch`
    -  b. Launch the hardware interface
          `roslaunch abluo_control abluo_HW_main.launch`
    -  Your trajectory execution in RVIZ should reflect both in simulation and actual robot
4. To start the planner scripts, run
    - `roslaunch planning abluo_motion.launch`
    -  Note the planner script is still work in progress and is meant to work with the RVIZ Visual Tool Plugin

## Credits
1. Models used in this project are from https://github.com/elephantrobotics/mycobot_ros
2. Hardware Interface for mycobot pro 320 was inspired from https://github.com/Tiryoh/nisshan-x_mycobot_moveit/tree/main/scripts


## Contact Details
1. Rishab Patwari - `rishab@hivebotics.tech`
2. Dung Nguyen - `dung.nguyen.t@hivebotics.tech`