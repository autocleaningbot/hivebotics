#! /usr/bin/env python3

import sys, subprocess
import rospy
import moveit_commander
import moveit_msgs.msg
from geometry_msgs.msg import *
import json
from mycobot_communication.srv import *
from pymycobot import MyCobot

moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_tutorial', anonymous=True)
port = subprocess.check_output(["echo -n /dev/ttyUSB*"], shell=True).decode()
mycobot = MyCobot(port, 115200)

robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()
group = moveit_commander.MoveGroupCommander("arm_motion_group")
display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)


rospy.sleep(1)

current_pose = group.get_current_pose()
print('CURRENT _POSE', current_pose)

target_pose = PoseStamped()


# group_joint_values = group.get_current_joint_values()
# print('CURRENT_JOINT_VALUES: {}'.format(group_joint_values))

# group_joint_values[1] += 0.9
# group_joint_values[2] += 0.9
# group_joint_values[3] += 0.5
# group.set_joint_value_target(group_joint_values)

# plan = group.plan()
# # group.go(wait=True)
# waypoints_list = plan[1].joint_trajectory.points
# print('ROBOT TRAJECTORY PLAN', plan[1].joint_trajectory.points)

# # Execute motion in simulation
# group.execute(plan[1])

# # Extract waypoints from waypoints_list
# for waypoint in waypoints_list:
#     print('WAYPOINT POSITIONS', waypoint.positions)
#     mycobot.send_radians(waypoint.positions, 100)
#     rospy.sleep(0.1)

# print('REAL ROBTO CURRENT ANGLES', mycobot.get_angles())



moveit_commander.roscpp_shutdown()