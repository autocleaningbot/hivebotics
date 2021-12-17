## Overview
This repo consists of the following ROS packages that define the following:
1. **mycobot_description** : description of the mycobot_320 mm robot
2. **mycobot_320_moveit** : moveit planner package
3. **mycobot_communication** : manufacturer package for communication service and topic
4. **simulation_models**: custom gazebo models ie. description of a toilet bowl

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
1. To view the simulation in Gazebo & Plan Using Rviz, run
    - `roslaunch mycobot_320_moveit demo_gazebo.launch `

2. To run the motion planning interface with Simulation in Gazebo + RVIZ Planner, run
    - Without a mongodb database
      - `roslaunch mycobot_320_moveit demo_gazebo.launch `
    - With a mongodb database in Rviz
      - Ensure mongodb is installed on the computer
        - Link: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
      - `roslaunch mycobot_320_moveit demo_gazebo.launch db:=true`
3. To sync planner with the real robot
    -  a. `python3 mycobot_320_moveit/scripts/sync_plan.py`
    -  b. `roslaunch mycobot_communication communication_service.launch`
    -  Your trajectory executiosn in RVIZ should reflect both in simulation and actual robot

## Credits
1. Models used in this project are from https://github.com/elephantrobotics/mycobot_ros
