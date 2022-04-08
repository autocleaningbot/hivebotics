#/usr/bin/env python3
from http.client import ImproperConnectionState
import subprocess
import copy

import rospy
import rosparam

import numpy as np

from std_msgs.msg import Float32MultiArray, Int32
from pymycobot.mycobot import MyCobot
from pymycobot.genre import Angle
import actionlib
from linear_actuator_as.msg import ActuatorAction, ActuatorGoal

from abluo_control.msg import abluoTelemetry, armCmd


class MycobotHwInterface:
    def __init__(self):
        # port_str = rospy.get_param("/hardware_interface/mycobot_port", "default")
        # if port_str == "default":
        #     port = subprocess.check_output(['echo -n /dev/ttyUSB*'], shell=True)
        # else:
        #     port = subprocess.check_output(['echo -n ' + port_str], shell=True)

        self.mycobot_ = MyCobot("/dev/ttyUSB0")
        self.mycobot_.power_on()

        self.la_client = actionlib.SimpleActionClient('/linear_actuator_server', ActuatorAction)
        # self.la_client.wait_for_server()
        self.la_pos = 0
        self.la_sub = rospy.Subscriber("/servo_current_pos", Int32, self.update_la_pos)

        rospy.init_node('mycobot_hw_interface', anonymous=True)
        # self.joint_state_msg_pub_ = rospy.Publisher('/joint_states_array', Float32MultiArray, queue_size=2)
        self.joint_state_msg_pub_ = rospy.Publisher('/joint_states_array', abluoTelemetry, queue_size=1)
        
        # self.joint_cmd_sub = rospy.Subscriber("/joint_cmd_array", Float32MultiArray, self.jointCommandCallback)
        self.joint_cmd_sub = rospy.Subscriber("/joint_cmd_array", armCmd, self.jointCommandCallback)

        update_freq = 10
        self.rate_ = rospy.Rate(update_freq) # 10hz
        self.step_size = 1 / update_freq

        self.joint_state_array_ = []
        JOINT_NUMBER = 7
        for tmp in range(JOINT_NUMBER):  # initialize array
            tmp = 0.0
            self.joint_state_array_.append(tmp)
        self.pre_data_list = []
        self.first_flag = True

        # initialising the telemetry and cmd msg
        self.is_fist_state_msg = True
        self.telemetryMsg = abluoTelemetry()
        self.cmdMsg = armCmd()

        # measuring time for calculating vel
        self.curr_time = 0.0#rospy.get_time()
        self.prev_time = 0.0

        # previous joint state
        self.curr_lin_pos = 0.0
        self.prev_lin_pos = 0.0
        self.lin_vel = 0.0

        self.curr_joint_pos = np.array([0.0, 0.0, 0.0, 0.0, 0.0, 0.0])
        self.prev_joint_pos = np.array([0.0, 0.0, 0.0, 0.0, 0.0, 0.0])
        self.joint_vel = np.array([0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

        

    def main_loop(self):
        while not rospy.is_shutdown():
            self.joint_state_msg_sender()
            self.rate_.sleep()

    def update_la_pos(self, msg):
        self.la_pos = msg.data / 20000

    def joint_state_msg_sender(self):
        """
        float32 lin_act_pos #val
        float32 lin_act_vel
        float32[6] joint_pos #degrees
        float32[6] joint_vel #deg/s
        """

        # load the latest data
        self.curr_time = rospy.get_time()

        self.curr_lin_pos = self.la_pos
        self.curr_joint_pos = np.array(self.mycobot_.get_radians())

        if self.is_fist_state_msg:
            self.lin_vel = 0.0
            self.joint_vel = [0.0,0.0,0.0,0.0,0.0,0.0]
            self.is_fist_state_msg = False
        else:
            self.lin_vel = (self.curr_lin_pos - self.prev_lin_pos) / (self.curr_time  - self.prev_time)
            self.joint_vel = ((self.curr_joint_pos - self.prev_joint_pos) / (self.curr_time  - self.prev_time)).tolist()
        

        
        self.telemetryMsg.lin_act_pos = self.curr_lin_pos
        self.telemetryMsg.lin_act_vel = self.lin_vel
        self.telemetryMsg.joint_pos = self.curr_joint_pos.tolist()
        self.telemetryMsg.joint_vel = self.joint_vel.tolist()

        self.joint_state_msg_pub_.publish(self.telemetryMsg)

        # assign the curr data to prev data
        self.prev_lin_pos = self.curr_lin_pos
        self.prev_joint_pos = self.curr_joint_pos
        self.prev_time = self.curr_time
        

    def jointCommandCallback(self, msg):
        """
        float32 lin_act_pos #val
        float32 lin_act_vel
        float32[6] joint_pos #degrees
        float32[6] joint_vel #deg/s
        """
        # data_list = []
        data_list = copy.deepcopy(msg.joint_pos)
        data_list.insert(0, msg.lin_act_pos)


        str = "data_list: %s" % data_list
        rospy.loginfo(str)

        if self.first_flag:
            for value in data_list:
                self.pre_data_list.append(value)
            self.first_flag = False

        if self.pre_data_list != data_list:
            # rospy.loginfo(rospy.get_caller_id() + "%s", msg.data)
            print(rospy.get_caller_id(), msg)
            la_goal = ActuatorGoal()
            la_goal.targetPos = int(data_list[0]*20000) # 6000 steps approx = 0.3 m => 20,000 steps approx 1m
            self.la_client.send_goal(la_goal)

            self.mycobot_.send_radians(data_list[1:7], 40)
            # self.mycobot_.sync_send_angles(
            #     [180/np.pi*rad for rad in data_list[1:7]], 
            #     40
            # )
            self.pre_data_list = []
            for value in data_list:
                self.pre_data_list.append(value)

            # wait for the linear actuator to finish otherwise log an error
            # if not self.la_client.wait_for_result(rospy.Duration(1)):
            #     rospy.logerr("linear actuator haven't responded yet")

if __name__ == '__main__':
    try:
        mc_hw_if = MycobotHwInterface()
        mc_hw_if.main_loop()
    except rospy.ROSInterruptException:
        pass

