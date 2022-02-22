#! /usr/bin/env python3

import json
import subprocess
import time
import rospy
import moveit_commander
import moveit_msgs.msg
from geometry_msgs.msg import *
import yaml
from mycobot_communication.srv import *
from pymycobot import MyCobot
import actionlib
from robot_hw_interface.msg import RobotUpdateAction, RobotUpdateGoal
from geometry_msgs.msg import Pose
# moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_test_cartesian', anonymous=True)
port = subprocess.check_output(["echo -n /dev/ttyUSB*"], shell=True).decode()
mycobot = MyCobot(port, 115200)

# robot = moveit_commander.RobotCommander()
# scene = moveit_commander.PlanningSceneInterface()
# group = moveit_commander.MoveGroupCommander("arm_motion_group")
# display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)


rospy.sleep(1)

coordinate_sequence = []
# coordinate_array = []
with open('test_real.json', 'r') as f:
   load_object = json.load(f)
   load_array = load_object["test7"]
   for item in load_array:
       coordinate_sequence.append(item["mycobot"])
   
   print(coordinate_sequence)

# client = actionlib.SimpleActionClient('/robot_hw_as', RobotUpdateAction)
# client.wait_for_server()
# rospy.loginfo('Server Ready')

in_final_pos = False
waypoint_list = []

la_pos_global = 0
j1 = 0
j2 = 0
j3 = 0
j4 = 0
j5 = 0
j6 = 0

pos_array = []
while not in_final_pos:
    local_update = False
    goal = RobotUpdateGoal()
    goal.cmd = 1
    if la_pos_global < 2000: 
        la_pos_global += 300
        local_update = True
    if j1 < 50: 
        j1 += 5
        local_update = True
    if j2 < 50: 
        j2 += 5
        local_update = True
    if j3 < 50: 
        j3 += 5
        local_update = True
    if j4 < 50: 
        j4 += 5
        local_update = True
    if j5 < 50: 
        j5 += 5
        local_update = True
    if j6 < 50: 
        j6 += 5
        local_update = True

    pos_array.append([j1,j2,j3,j4,j5,j6])
    if local_update == False:
        in_final_pos = True
        break

    goal.la_pose.targetPos = la_pos_global
    goal.mycobot_angles.joint_1 = j1
    goal.mycobot_angles.joint_2 = j2
    goal.mycobot_angles.joint_3 = j3
    goal.mycobot_angles.joint_4 = j4
    goal.mycobot_angles.joint_5 = j5
    goal.mycobot_angles.joint_6 = j6
    goal.mycobot_angles.speed = 50

    waypoint_list.append(goal)

print('WP LIST', waypoint_list)


# test_goal = RobotUpdateGoal()
# test_goal.cmd = 1
# test_goal.la_pose.targetPos = 0
# test_goal.mycobot_angles.joint_1 = 80
# test_goal.mycobot_angles.joint_2 = 0
# test_goal.mycobot_angles.joint_3 = 0
# test_goal.mycobot_angles.joint_4 = 0
# test_goal.mycobot_angles.joint_5 = 0
# test_goal.mycobot_angles.joint_6 = 0
# test_goal.mycobot_angles.speed = 50

# rospy.loginfo('SENT GOAL')
# client.send_goal_and_wait(test_goal)

# as_goal = RobotUpdateGoal()
# for wp in waypoint_list:
#     print('AS_GOAL', wp)
#     rospy.loginfo('SENT GOAL')
#     client.send_goal(wp)
#     client.wait_for_result(rospy.Duration(0.01))
#     client.send_goal_and_wait(wp, rospy.Duration(0.01))
#     client.wait_for_result()

mycobot.sync_send_angles([0,0,0,0,0,0], 10)
for pos in coordinate_sequence:
    mycobot.sync_send_angles(pos, 50)
    # time.sleep(0.05)


# moveit_commander.roscpp_initialize(sys.argv)
# robot = moveit_commander.RobotCommander()
# scene = moveit_commander.PlanningSceneInterface()
# group = moveit_commander.MoveGroupCommander("arm_motion_group")

# group.set_goal_tolerance(0.1)
# group.allow_replanning(True)
# group.set_max_velocity_scaling_factor(1.0)
# group.set_max_acceleration_scaling_factor(1.0)

# display_trajectory_publisher = rospy.Publisher('/move_grup/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)

# # waypoints_list = []

# pose_list = []
# for point in coordinate_sequence:
#     # pose = Pose([point[0], point[1],point[2]],[0,point[3],point[4],point[5]])
#     pose = Pose()
#     pose.position.x = point[0]
#     pose.position.y = point[1]
#     pose.position.z = point[2]
#     pose.orientation.x = point[3]
#     pose.orientation.y = point[4]
#     pose.orientation.z = point[5]
#     pose_list.append(pose)

# print('COORDINATE_SEQUENCE', pose_list)

# first_pose = coordinate_sequence[0]
# group.set_pose_target(first_pose, "brush_swapping_stick_link")
# first_point_plan = group.plan()
# joints_list = first_point_plan[1].joint_trajectory.points


# convert_to_degrees = 180/3.142
# for joints in joints_list:
#     goal = RobotUpdateGoal()
#     goal.cmd = 1
#     goal.la_pose.targetPos = int(joints.positions[0]*3600/0.18)
#     goal.mycobot_angles.joint_1 = joints.positions[1]*convert_to_degrees
#     goal.mycobot_angles.joint_2 = joints.positions[2]*convert_to_degrees
#     goal.mycobot_angles.joint_3 = joints.positions[3]*convert_to_degrees
#     goal.mycobot_angles.joint_4 = joints.positions[4]*convert_to_degrees
#     goal.mycobot_angles.joint_5 = joints.positions[5]*convert_to_degrees
#     goal.mycobot_angles.joint_6 = joints.positions[6]*convert_to_degrees

#     rospy.loginfo('SENT GOAL')
#     client.send_goal(goal)

# group.go()

# rospy.loginfo('GONE TO START POSE')


# (cartesian_plan, cartesian_fraction) = group.compute_cartesian_path(pose_list, 0.01, 0.00, True, None)


# display_trajectory = moveit_msgs.msg.DisplayTrajectory()
# display_trajectory.trajectory_start = robot.get_current_state()
# display_trajectory.trajectory.append(cartesian_plan)

# display_trajectory_publisher.publish(display_trajectory)
# print('CARTESIAN PATH', cartesian_plan, cartesian_fraction)
# # group.execute(cartesian_plan, wait = True)

# joints_list =cartesian_plan.joint_trajectory.points
# print('JOINT LIST', joints_list)





moveit_commander.roscpp_shutdown()






# for joints in joints_list:
#     goal = RobotUpdateGoal()
#     goal.cmd = 1
#     # goal.la_pose.targetPos = int(joints.positions[0]*3600/0.18)
#     goal.la_pose.targetPos = 0

#     goal.mycobot_angles.joint_1 = joints.positions[1]*convert_to_degrees
#     goal.mycobot_angles.joint_2 = joints.positions[2]*convert_to_degrees
#     goal.mycobot_angles.joint_3 = joints.positions[3]*convert_to_degrees
#     goal.mycobot_angles.joint_4 = joints.positions[4]*convert_to_degrees
#     goal.mycobot_angles.joint_5 = joints.positions[5]*convert_to_degrees
#     goal.mycobot_angles.joint_6 = joints.positions[6]*convert_to_degrees
#     goal.mycobot_angles.speed = 50

#     client.send_goal(goal)
    # client.wait_for_result()
# current_pose = group.get_current_pose()
# print('CURRENT _POSE', current_pose)

# target_pose = PoseStamped()


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