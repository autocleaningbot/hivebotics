#! /usr/bin/env python3

import sys, subprocess
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import json
from mycobot_communication.srv import *
from pymycobot import MyCobot

moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_tutorial', anonymous=True)
port = subprocess.check_output(["echo -n /dev/ttyUSB*"], shell=True).decode()
mycobot = MyCobot(port, 115200)

robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()
group = moveit_commander.MoveGroupCommander("arm_group")
display_trajectory_publisher = rospy.Publisher('/move_grup/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)

# Bring arm to init pose
mycobot.send_radians([0,0,0,0,0,0], 80)
rospy.sleep(1)


waypoint_dictionary = {}
with open('test_real.json', 'r+') as f:
    waypoint_dictionary = json.load(f)



command = input('Press S to save real sequence, L to load a sequence')
if (command == 'S' or command =='s'):
    sequence_name = input("Please enter the sequence name")
    waypoint_sequence = []
    waypoint_count = 0
    while True:
        try:
            command = input()
            if (command == 's' or command == 'S'):
                current_angles = group.get_current_joint_values()
                # current_angles = mycobot.get_angles()
                waypoint_sequence.append(current_angles)
                print('Waypoint sequence {} added\n'.format(waypoint_count + 1))
                print('{}\n'.format(waypoint_sequence))
            elif (command == 'e' or command == 'E'):
                waypoint_dictionary.update({sequence_name: waypoint_sequence})
                with open('test_real.json', 'w+') as f:
                    json.dump(waypoint_dictionary, f, indent=4)
                    break
        except Exception as e:
            print('Something went wrong', str(e))
            break
    
elif (command == 'L' or command =='l'):
    print(waypoint_dictionary.keys())
    trajectory_name = input('\nIndicate name of the trajectory you wanna load\n')
    loaded_seq = waypoint_dictionary[trajectory_name]

    for sequence in loaded_seq:
        print('Sequence', sequence)
        # mycobot.send_radians(sequence, 80)
        # rospy.sleep(1)
        group.set_joint_value_target(sequence)
        plan = group.plan()
        waypoint_list = waypoints_list = plan[1].joint_trajectory.points
        # group.execute(plan[1])
        for waypoint in waypoints_list:
            print('WAYPOINT POSITIONS', waypoint.positions)
            mycobot.send_radians(waypoint.positions, 80)
            # rospy.sleep(0.1)
        rospy.sleep(1)

moveit_commander.roscpp_shutdown()