#! /usr/bin/env python3

import sys, subprocess
import os
import rospy
import moveit_commander
import json
import actionlib
from mycobot_communication.srv import *
from pymycobot import MyCobot
from linear_actuator_as.msg import ActuatorAction, ActuatorGoal
from std_msgs.msg import Int32
from robot_hw_interface.msg import RobotUpdateAction, RobotUpdateGoal

dirpath = os.path.dirname(sys.argv[0])
file_path = dirpath + 'test_real.json'

class Abluo_Real_Traj_Planner():
    _la_servo_current_pos = 0
    _waypoint_dictionary = {}

    def __init__(self):
        moveit_commander.roscpp_initialize(sys.argv)
        self.arm = moveit_commander.MoveGroupCommander("arm_motion_group")
        self.end_effector_link = self.arm.get_end_effector_link()
        self.reference_frame = "robot_arm_mount"
        self.arm.set_pose_reference_frame(self.reference_frame)
        self.arm.allow_replanning(True)
        self.arm.set_goal_position_tolerance(0.1)
        self.arm.set_goal_orientation_tolerance(0.05)
        self.arm.set_goal_joint_tolerance(0.1)
        self.arm.set_max_velocity_scaling_factor(1)
        self.arm.set_max_acceleration_scaling_factor(1)


        port = subprocess.check_output(["echo -n /dev/ttyUSB*"], shell=True).decode()
        # self._la_sub = rospy.Subscriber("/servo_current_pos", Int32, self.la_sub_callback)

        # self._mycobot = MyCobot(port, 115200)
        # self._la_client = actionlib.SimpleActionClient('/linear_actuator_server', ActuatorAction)
        self._robot_hw_client = actionlib.SimpleActionClient('/robot_hw_as', RobotUpdateAction)

        with open(file_path, 'r+') as f:
            self._waypoint_dictionary = json.load(f)

        rospy.loginfo("LA Subscriber Started")

    def la_sub_callback(self,msg):
        self._la_servo_current_pos = msg.data

    def la_feedback_callback(self,feedback):
        rospy.loginfo('[LA Feedback] Current Pos %d'%feedback.currentPos)

    def hw_feedback_callback(self,feedback):
        rospy.loginfo('[HW_IF_FEEDBACK] LA_CURRENT_POS %d'%feedback.currentPos)
    
    def interface(self):
        command = input('Press S to save real sequence, L to load a sequence')
        if (command == 'S' or command =='s'):
            sequence_name = input("Please enter the sequence name")
            waypoint_sequence = []
            waypoint_count = 0
            while True:
                try: 
                    command = input()
                    if (command == 's' or command == 'S'):
                        mycobot_angles = self._mycobot.get_angles()
                        la_pos = self._la_servo_current_pos
                        print('MYCOBOT ANGLES', mycobot_angles)
                        if len(mycobot_angles) == 0:
                            rospy.loginfo('Did not get angles, try again')
                        else:
                            point = {'la': la_pos, 'mycobot': mycobot_angles}
                            waypoint_sequence.append(point)
                            waypoint_count += 1
                            rospy.loginfo('Waypoint {} Added {}.'.format(waypoint_count, json.dumps(point)))
                    elif (command =='e' or command == 'E'):
                        rospy.loginfo('Attempting to save waypoint sequence')
                        self._waypoint_dictionary.update({sequence_name: waypoint_sequence})
                        with open('test_real.json', 'w+') as f:
                            json.dump(self._waypoint_dictionary, f, indent=4)
                            break
                except Exception as e:
                    rospy.loginfo('Something went wrong {}'.format(str(e)))
        elif (command == 'L' or command == 'l'):
            print(self._waypoint_dictionary.keys())
            trajectory_name = input('\nIndicate the name of the trajectory you wanna load\n')
            loaded_seq = self._waypoint_dictionary[trajectory_name]

            for waypoint in loaded_seq:
                angles = waypoint['mycobot']
                la_pos = waypoint['la']

                # la_goal = ActuatorGoal()
                # la_goal.targetPos = int(la_pos)
                # la_goal.speed = 600

                hw_if_goal = RobotUpdateGoal()
                hw_if_goal.cmd = 1
                # # 0.176 m = 3600 steps
                # # Steps/3600*0.176 will give corresponding Position 
                angles_rad = []
                for angle in angles:
                    angles_rad.append(angle*0.017456)
                
                # Actuate Simulation
                # print('Current Joint Angles', self.arm.get_current_state())
                # la_simul_pos = float(la_pos*0.00005)
                # simul_joint_values = [la_simul_pos,*angles_rad]
                # print('SIMUL JOINT VALUES', simul_joint_values)
                # self.arm.set_joint_value_target(simul_joint_values)
                # self.arm.go()


                # Actuate Real Robot
                hw_if_goal.mycobot_angles.joint_1 = angles[0]
                hw_if_goal.mycobot_angles.joint_2 = angles[1]
                hw_if_goal.mycobot_angles.joint_3 = angles[2]
                hw_if_goal.mycobot_angles.joint_4 = angles[3]
                hw_if_goal.mycobot_angles.joint_5 = angles[4]
                hw_if_goal.mycobot_angles.joint_6 = angles[5]
                hw_if_goal.mycobot_angles.speed = 80
                # hw_if_goal.la_pose.targetPos = int(la_pos)
                hw_if_goal.la_pose.targetPos = 0

                self._robot_hw_client.send_goal(hw_if_goal, feedback_cb=self.hw_feedback_callback)
                # self._la_client.send_goal(la_goal, feedback_cb=self.la_feedback_callback)
                # self._mycobot.send_angles(angles, 30)
                # self._la_client.wait_for_result()
                rospy.sleep(0.1)
            # la_endPos = self._la_client.get_result().endPos
            # angles_end = self._mycobot.get_angles()
            # angles_end = self._arm_get_angles_proxy()
            # rospy.loginfo('[Result] La Endpos: {}, Arm End Angles: {}'.format(la_endPos, angles_end))
        elif (command == 'E' or command == 'e'):
            rospy.signal_shutdown('Terminate Request for Planner')

if __name__ == "__main__":
    rospy.init_node("abluo_real_planner")
    planner = Abluo_Real_Traj_Planner()
    planner.interface()
    # rospy.spin()


# # 1. Initialise the Robotic Arm
# moveit_commander.roscpp_initialize(sys.argv)
# rospy.init_node('move_group_python_interface_tutorial', anonymous=True)
# port = subprocess.check_output(["echo -n /dev/ttyUSB*"], shell=True).decode()
# mycobot = MyCobot(port, 115200)

# # 2. Inialise the Planning Scene 
# robot = moveit_commander.RobotCommander()
# scene = moveit_commander.PlanningSceneInterface()
# group = moveit_commander.MoveGroupCommander("arm_motion_group")
# display_trajectory_publisher = rospy.Publisher('/move_grup/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)

# # 3. Initialize the Communication Service Caller & Action Client
# la_client = actionlib.SimpleActionClient('/linear_actuator_server', ActuatorAction)

# # sendJointAnglesFunc = rospy.ServiceProxy("set_joint_angles")

# # Bring arm to init pose
# mycobot.send_radians([0,0,0,0,0,0], 80)
# rospy.sleep(1)


# waypoint_dictionary = {}
# with open('test_real.json', 'r+') as f:
#     waypoint_dictionary = json.load(f)



# command = input('Press S to save real sequence, L to load a sequence')
# if (command == 'S' or command =='s'):
#     sequence_name = input("Please enter the sequence name")
#     waypoint_sequence = []
#     waypoint_count = 0
#     while True:
#         try:
#             command = input()
#             if (command == 's' or command == 'S'):
#                 mycobot_anlges = mycobot.get_angles()
#                 la_pos = 
#                 waypoint_sequence.append(current_angles)
#                 print('Waypoint sequence {} added\n'.format(waypoint_count + 1))
#                 print('{}\n'.format(waypoint_sequence))
#             elif (command == 'e' or command == 'E'):
#                 waypoint_dictionary.update({sequence_name: waypoint_sequence})
#                 with open('test_real.json', 'w+') as f:
#                     json.dump(waypoint_dictionary, f, indent=4)
#                     break
#         except Exception as e:
#             print('Something went wrong', str(e))
#             break
    
# elif (command == 'L' or command =='l'):
#     print(waypoint_dictionary.keys())
#     trajectory_name = input('\nIndicate name of the trajectory you wanna load\n')
#     loaded_seq = waypoint_dictionary[trajectory_name]

#     for sequence in loaded_seq:
#         print('Sequence', sequence)
#         # mycobot.send_radians(sequence, 80)
#         # rospy.sleep(1)
#         group.set_joint_value_target(sequence)
#         plan = group.plan()
#         waypoint_list = waypoints_list = plan[1].joint_trajectory.points
#         # group.execute(plan[1])
#         for waypoint in waypoints_list:
#             print('WAYPOINT POSITIONS', waypoint.positions)
#             mycobot.send_radians(waypoint.positions, 80)
#             # rospy.sleep(0.1)
#         rospy.sleep(1)

# moveit_commander.roscpp_shutdown()