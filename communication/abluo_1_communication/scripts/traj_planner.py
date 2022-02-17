#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import json
import yaml
import sys
from genpy.rostime import Duration

import rospy, roslib, sys
import moveit_commander
from moveit_msgs.msg import RobotTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint

from geometry_msgs.msg import PoseStamped, Pose
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from pathlib import Path   
import os
import keyboard
from pymycobot.mycobot import MyCobot
from pymycobot.genre import Angle, Coord
import subprocess
from mycobot_communication.srv import GetAngles, SetAngles


file_path =  os.getcwd() + '/data/abluo_planner_json.json'
file_path_real_robot = os.getcwd() + '/data/abluo_real_robot_planner.json'
startup_message = """
    Command List
    1. Show A Sequence Details
    2. Load A Sequence
    3. Plan A Sequence
    4. Exit Planner\n"""

def msg2json(msg):
   ''' Convert a ROS message to JSON format'''
   y = yaml.load(str(msg), yaml.FullLoader)
   return json.dumps(y, indent=4)


def json2msg(string_obj):
    json_object = json.loads(string_obj)
    traj = RobotTrajectory()
    joint_traj = json_object.get('joint_trajectory')
    header = joint_traj.get('header')
    frame_id = header.get('frame_id')
    joint_names = joint_traj.get('joint_names')
    points = joint_traj.get('points')
    for point in points:
        positions = point.get('positions')
        velocities = point.get('velocities')
        accelerations = point.get('accelerations')

        effort = point.get('effort')

        time_from_start = point.get('time_from_start')
        secs = time_from_start.get('secs')
        nsecs = time_from_start.get('nsecs')
        time_from_start_obj = Duration(secs, nsecs)
        point_obj = JointTrajectoryPoint(positions, velocities, accelerations, effort, time_from_start_obj)
        traj.joint_trajectory.points.append(point_obj)
        
    traj.joint_trajectory.joint_names = joint_names
    traj.joint_trajectory.header.frame_id = frame_id
    return traj

# Between Melodic and Noetic, the return type of plan() changed. moveit_commander has no __version__ variable, so checking the python version as a proxy
if sys.version_info >= (3, 0):
    def planCompat(plan):
        return plan[1]
else:
    def planCompat(plan):
        return plan
    

class MoveItPlanningDemo:
    def __init__(self):
        moveit_commander.roscpp_initialize(sys.argv)

        rospy.init_node("mycobot_trajectory_planning")
        self.scene = moveit_commander.PlanningSceneInterface()
        rospy.sleep(1)
 
        # Initialize Arm_Group
        self.arm = moveit_commander.MoveGroupCommander("arm_motion_group")
        self.end_effector_link = self.arm.get_end_effector_link()
        self.reference_frame = "robot_arm_mount"
        self.arm.set_pose_reference_frame(self.reference_frame)
        self.arm.allow_replanning(True)
        self.arm.set_goal_position_tolerance(0.1)
        self.arm.set_goal_orientation_tolerance(0.05)
        self.arm.set_goal_joint_tolerance(0.1)

        # Initialize Data Variables
        self.indata = {}
        self.realbot_waypoints = {}


    def __load_simulation_waypoints(self):
        if not os.path.exists(os.path.dirname(file_path)):
            os.makedirs(os.path.dirname(file_path))
        if not os.path.exists(file_path):
            with open(file_path, 'w+') as file:
                json.dump({}, file)
                print('Created a new data file')
        with open(file_path, 'r+') as file:
            try:
                self.indata = json.load(file)
            except Exception as e:
                print('Error reading data: ' + str(e))
                return

    # Loads waypoints planned using real robot (Joint Values of Each Position Saved)
    def __load_real_waypoints(self):
        if not os.path.exists(os.path.dirname(file_path_real_robot)):
            os.makedirs(os.path.dirname(file_path_real_robot))
        if not os.path.exists(file_path_real_robot):
            with open(file_path_real_robot, 'w+') as file:
                json.dump({}, file)
                print('Created a new data file')
        with open(file_path_real_robot, 'r+') as file:
            try:
                self.realbot_waypoints = json.load(file)
            except Exception as e:
                print('Error reading data: ' + str(e))
                return

    def __list_trajectories(self):
        traj_list = self.indata.keys()
        print('List of Trajectories:\n')
        for (index, traj) in enumerate(traj_list):
            print('{}.{}'.format(index,traj))
        
        print('\nIf you wish to view all trajectories, enter ALL')
        return traj_list

    def __add_trajectory(self, sequence_name, new_trajectory):
        try:
            new_entry = { "{}".format(sequence_name) : msg2json(new_trajectory)}
            self.indata.update(new_entry)
            print(self.indata)
            with open(file_path, "w+") as f:
                json.dump(self.indata, f, indent=4)
        except Exception as e: 
            print('ERROR SAVING TO FILE' + str(e))

            
    """
        Command 1: Show Sequence Details
    """
    def show_sequence_details(self):
        traj_list = self.__list_trajectories()
        command = input("Indicate trajectory name you want to view\n")
        if (command == 'ALL'):
            print(self.indata)
        elif(command in traj_list):
            # json_object = json.loads(self.indata[command])
            yaml_obj = yaml.load(self.indata[command], yaml.FullLoader)
            print("=================================================")
            # print(json.dumps(json_object, indent=4))
            print(yaml.dump(yaml_obj, indent=4, allow_unicode=True, default_flow_style=True))
            print("=================================================")
        else:
            print('You entered a wrong command')


    def goto_first_point(self, traj_obj):
        try:
            def_first_point = traj_obj.joint_trajectory.points[0]
            print('def_first_point: ', def_first_point.positions)
            self.arm.set_joint_value_target(def_first_point.positions)
            # self.arm.go(def_first_point.positions, wait = True)
            self.arm.go()
            print("Gone to first point")
        except Exception as e:
            print('GO TO FIRST TARGET ERROR' + str(e))
    """
        Command 2: Load Sequence
    """
    def load_sequence(self):
        traj_obj = json2msg(self.indata.get('test4'))
        self.goto_first_point(traj_obj)
        command = input('Sequence Loaded, Enter E to execute.')
        if (command == 'e' or command == 'E'):
            self.arm.execute(traj_obj)
            # print(traj_obj)

    """
        Command 3: Plan Sequence - [Simulation Planning]
    """
    def plan_sequence(self):
        print("============ Plan a Sequence [Simulation Planning] ============")
        sequence_name = input ('Please Enter The Sequence Name\n' )
        waypoint_count = 0
        new_robot_trajectory = RobotTrajectory()
        print("Press S to Save Waypoint, E to Stop\n")
        while True:
            try:
                command = input()
                seq_secs = 0
                seq_nsecs = 0
                last_added_point = JointTrajectoryPoint()
                if (command == 's' or command == 'S'):
                    # Gets current pose in planner and appends to plan
                    target_pose = self.arm.get_current_pose()
                    self.arm.set_pose_target(target_pose, self.end_effector_link)
                    traj = planCompat(self.arm.plan())
                    # new_robot_trajectory = RobotTrajectory()
                    new_robot_trajectory.joint_trajectory.header = traj.joint_trajectory.header
                    print('HEADER', traj.joint_trajectory.header)
                    new_robot_trajectory.joint_trajectory.joint_names = traj.joint_trajectory.joint_names

                    for point in traj.joint_trajectory.points:
                        is_first_subpoint = waypoint_count > 0 and point.time_from_start.secs == 0 and point.time_from_start.nsecs == 0
                        if (not is_first_subpoint):
                            positions = point.positions
                            velocities = point.velocities
                            accelerations = point.accelerations
                            effort = point.effort
                            time_from_start = point.time_from_start
                            secs = time_from_start.secs
                            nsecs = time_from_start.nsecs
                            time_from_start_obj = Duration(secs + seq_secs, nsecs + seq_nsecs)
                            point_obj = JointTrajectoryPoint(positions, velocities, accelerations, effort, time_from_start_obj)
                            
                            new_robot_trajectory.joint_trajectory.points.append(point_obj)

                    print(new_robot_trajectory.joint_trajectory.points)
                    # Update seq_secs & seq_nsecs
                    last_point = new_robot_trajectory.joint_trajectory.points[-1]
                    seq_secs = last_point.time_from_start.secs
                    seq_nsecs = last_point.time_from_start.nsecs
                    waypoint_count = new_robot_trajectory.joint_trajectory.points.__len__()
                    print('{} Waypoints Saved\n'.format(waypoint_count))
                elif (command == 'e' or command =='E'):
                    confirmation = input("=========== Are you sure you want to stop recording? (y/n) ===========\n")
                    if (confirmation == 'y' or confirmation == 'Y'):
                        # Save trajectory 
                        self.__add_trajectory(sequence_name,new_robot_trajectory)
                        print("Stop Recording")
                        break
                else:
                    print("Invalid Input")
            except Exception as e:
                print("Something went wrong. " + str(e))
        return
    

    def interface(self):
        self.__load_simulation_waypoints() 
        self.__load_real_waypoints()
        # Command List
        # 1. Show Sequence Details
        # 2. Load A Sequence 
        # 3. Plan a Sequence
        # 4. Exit
        while True:
            try:
                print(startup_message)
                x = str(input('Please Enter a Command\n'))
                if (x == '1'):
                    print("Show Sequence Details")
                    self.show_sequence_details()
                elif (x == '2'):
                    print("Load a Sequence")
                    self.load_sequence()
                elif (x =='3'):
                    print("Plan a Sequence")
                    self.plan_sequence()
                elif (x == '4'):
                    print("Exiting Planner")
                    break
                else:
                    print("You entered an invalid command, please try again!")
            except Exception as e:
                print('Something went wrong: ' + str(e))

    def run(self):
        try:
            plannerInterface = MoveItPlanningDemo()
            print("============ Planner Initialized ============")
            plannerInterface.interface()

        except rospy.ROSInterruptException:
            moveit_commander.roscpp_shutdown()
            moveit_commander.os._exit(0)
        except KeyboardInterrupt:
            return

if __name__ == "__main__":
    o = MoveItPlanningDemo()
    o.run()