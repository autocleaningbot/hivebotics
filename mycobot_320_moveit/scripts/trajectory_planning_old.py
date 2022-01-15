#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json
import yaml
import sys

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
try:
    # Try Python 2.7 behaviour first
    from StringIO import StringIO
except ImportError:
    # Use Python 3.x behaviour as fallback and choose the non-unicode version
    from io import BytesIO as StringIO


file_path =  os.getcwd() + '/data/planner_json.json'
startup_message = """
    Command List
    1. Show A Sequence Details
    2. Load A Sequence
    3. Plan A Sequence
    4. Exit Planner\n"""

def msg2json(msg, filename):
   ''' Convert a ROS message to JSON format'''
   y = yaml.load(str(msg), yaml.FullLoader)
   with open(filename, "w+") as f:
       json.dump(y, f, indent=4)
       return json.dumps(y)

def json2msg(filename):
     with open(filename, 'r+') as file:
            try:
                msg = json.load(file)
                return msg
            except Exception as e:
                print('Error reading data: ' + str(e))
                return

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
        self.arm = moveit_commander.MoveGroupCommander("arm_group")
        self.end_effector_link = self.arm.get_end_effector_link()
        self.reference_frame = "link1"
        self.arm.set_pose_reference_frame(self.reference_frame)
        self.arm.allow_replanning(True)
        self.arm.set_goal_position_tolerance(0.01)
        self.arm.set_goal_orientation_tolerance(0.05)

        # Initialize Data Variables
        self.indata = {}
    """
        Command 1: Show Sequence Details
    """
    def moving(self):
        """
            Need to be able to do the following:
            1. Set target to current_goal_state in 
            2. Plan to next waypoint and append points to original plan
        """
        self.arm.set_named_target("init_pose")

        traj_plan = planCompat(self.arm.plan())
        # Working Method to Save Serialized Plan Buffer and Reload
        # buf = StringIO()
        # traj_plan.serialize(buf)
        # string_buf_value = buf.getvalue()
        # plan = RobotTrajectory()
        # deserialized_msg = plan.deserialize(string_buf_value)
        # print(deserialized_msg)

        json_msg = msg2json(traj_plan, 'test_traj.json')
        print('JSON MSG\n', json_msg)
        reloaded_traj = json2msg('test_traj.json')
        print('RELOADED JSON MSG\n', reloaded_traj)
        # self.arm.execute(reloaded_traj)
        traj_plan_new = RobotTrajectory()
        traj_plan_new.joint_trajectory = 
        traj_plan_new.multi_dof_joint_trajectory = reloaded_traj.multi_dof_joint_trajectory

        print('PLAN COMPAT TRAJ PLAN NEW\n')
        print(planCompat(traj_plan_new))
        rospy.sleep(2)
        # msg2json(traj, "/home/nwjbrandon/1.json")
        # self.arm.execute(traj)

        # target_pose = PoseStamped()
        # target_pose.header.frame_id = self.reference_frame
        # target_pose.header.stamp = rospy.Time.now()
        # target_pose.pose.position.x = 0.132
        # target_pose.pose.position.y = -0.150
        # target_pose.pose.position.z = 0.075
        # target_pose.pose.orientation.x = 0.026
        # target_pose.pose.orientation.y = 1.0
        # target_pose.pose.orientation.z = 0.0
        # target_pose.pose.orientation.w = 0.014

        # self.arm.set_start_state_to_current_state()
        # self.arm.set_pose_target(target_pose, self.end_effector_link)
        # traj = self.arm.plan()
        # # print(traj)
        # # msg2json(traj, "/home/nwjbrandon/2.json")
        # self.arm.execute(traj)

        # self.arm.set_named_target("init_pose")
        # traj = self.arm.plan()
        # # print(traj)
        # # msg2json(traj, "/home/nwjbrandon/3.json")
        # self.arm.execute(traj)

    # def run(self):
    #     try:
    #         while not rospy.is_shutdown():
    #             self.moving()
    #     except rospy.ROSInterruptException:
    #         moveit_commander.roscpp_shutdown()
    #         moveit_commander.os._exit(0)        

    def load_waypoints(self):
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

    def plan_sequence(self):
        # Data Structure
        # {
        #   sequences: [
        #       {
        #           name:
        #           waypoints: []
        #           waypoint_count: x
        #       }
        #    sequence_count: x
        #   ]   
        # }
        print("============ Plan a Sequence ============")
        sequence_name = input ('Please Enter The Sequence Name\n' )
        sequence_waypoints = []
        waypoint_count = 0
        print("Press S to Save Waypoint, E to Stop\n")
        port = subprocess.check_output(["echo -n /dev/ttyUSB*"], shell=True).decode()
        mycobot = MyCobot(port)
        while True:
            try:
                command = input()
                if (command == 's' or command == 'S'):
                    angles = mycobot.get_angles()
                    print(angles)
                    # self.arm.set_start_state_to_current_state()
                    # self.arm.set_pose_target(target_pose, self.end_effector_link)
                    # traj = self.arm.plan()
                    # print(traj)
                    waypoint_count += 1
                    print('Waypoint {} Saved\n'.format(waypoint_count))
                elif (command == 'e' or command =='E'):
                    confirmation = input("=========== Are you sure you want to stop recording? (y/n) ===========\n")
                    if (confirmation == 'y' or confirmation == 'Y'):
                        print("Stop Recording")
                        break
                else:
                    print("Invalid Input")
            except Exception as e:
                print("Something went wrong. " + str(e))
        return

    def test_motion(self):
        initial_joints = self.arm.get_current_joint_values()
        print(initial_joints)
        # rospy.wait_for_service("get_joint_angles")
        # func = rospy.ServiceProxy("get_joint_angles", GetAngles)
        # res = func()
        # print(res)
        return
    
    def set_angles(self):
        self.arm.go()
        # rospy.wait_for_service("set_joint_angles")
        # func = rospy.ServiceProxy("set_joint_angles", SetAngles)
        # func(20,20,20,20,20,20, 80)
        # rospy.wait_for_service("set_joint_angles")
        # func(30,30,30,30,30,30, 80)

    # def execute_sequence(self, trajectory_name):
    #     print('Executing {} sequence./n', trajectory_name)
    #     waypoints = self.indata.sequences[trajectory_name]
    #     for point in waypoints:
    #         self.arm.go(point, wait=True)

    #     self.move_group.stop()
    #     current_joints = self.arm.get_

    def interface(self):
        self.load_waypoints() 
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
                    self.moving()
                elif (x == '2'):
                    print("Load a Sequence")
                elif (x =='3'):
                    self.plan_sequence()
                elif (x == '4'):
                    print("Exiting Planner")
                    break
                elif (x == '5'):
                    self.test_motion()
                elif (x == '6'):
                    self.set_angles()
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