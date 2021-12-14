#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json
import yaml

import rospy, roslib, sys
import moveit_commander
from moveit_msgs.msg import RobotTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint

from geometry_msgs.msg import PoseStamped, Pose
from tf.transformations import euler_from_quaternion, quaternion_from_euler

def msg2json(msg, filename):
   ''' Convert a ROS message to JSON format'''
   y = yaml.load(str(msg))
   with open(filename, "w") as f:
       json.dump(y, f, indent=4)

class MoveItPlanningDemo:
    def __init__(self):
        moveit_commander.roscpp_initialize(sys.argv)

        rospy.init_node("mycobot_trajectory_planning")

        self.scene = moveit_commander.PlanningSceneInterface()
        rospy.sleep(1)

        self.arm = moveit_commander.MoveGroupCommander("arm_group")

        self.end_effector_link = self.arm.get_end_effector_link()

        self.reference_frame = "joint1"
        self.arm.set_pose_reference_frame(self.reference_frame)

        self.arm.allow_replanning(True)

        self.arm.set_goal_position_tolerance(0.01)
        self.arm.set_goal_orientation_tolerance(0.05)

    def moving(self):
        self.arm.set_named_target("init_pose")
        traj = self.arm.plan()
        # print(traj)
        # msg2json(traj, "/home/nwjbrandon/1.json")
        self.arm.execute(traj)

        target_pose = PoseStamped()
        target_pose.header.frame_id = self.reference_frame
        target_pose.header.stamp = rospy.Time.now()
        target_pose.pose.position.x = 0.132
        target_pose.pose.position.y = -0.150
        target_pose.pose.position.z = 0.075
        target_pose.pose.orientation.x = 0.026
        target_pose.pose.orientation.y = 1.0
        target_pose.pose.orientation.z = 0.0
        target_pose.pose.orientation.w = 0.014

        self.arm.set_start_state_to_current_state()
        self.arm.set_pose_target(target_pose, self.end_effector_link)
        traj = self.arm.plan()
        # print(traj)
        # msg2json(traj, "/home/nwjbrandon/2.json")
        self.arm.execute(traj)

        self.arm.set_named_target("init_pose")
        traj = self.arm.plan()
        # print(traj)
        # msg2json(traj, "/home/nwjbrandon/3.json")
        self.arm.execute(traj)

    def run(self):
        try:
            while not rospy.is_shutdown():
                self.moving()
        except rospy.ROSInterruptException:
            moveit_commander.roscpp_shutdown()
            moveit_commander.os._exit(0)

if __name__ == "__main__":
    o = MoveItPlanningDemo()
    o.run()