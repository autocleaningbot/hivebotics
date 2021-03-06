#/usr/bin/env python3
import subprocess
import rospy
import rosparam

from std_msgs.msg import Float32MultiArray, Int32
from pymycobot.mycobot import MyCobot
from pymycobot.genre import Angle
import actionlib
from linear_actuator_as.msg import ActuatorAction, ActuatorGoal

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
        self.la_sub = rospy.Subscriber("servo_current_pos", Int32, self.update_la_pos)

        rospy.init_node('mycobot_hw_interface', anonymous=True)
        self.joint_state_msg_pub_ = rospy.Publisher('joint_states_array', Float32MultiArray, queue_size=2)
        self.joint_cmd_sub = rospy.Subscriber("joint_cmd_array", Float32MultiArray, self.jointCommandCallback)

        self.rate_ = rospy.Rate(10) # 10hz

        self.joint_state_array_ = []
        JOINT_NUMBER = 7
        for tmp in range(JOINT_NUMBER):  # initialize array
            tmp = 0.0
            self.joint_state_array_.append(tmp)
        self.pre_data_list = []
        self.first_flag = True

    def main_loop(self):
        while not rospy.is_shutdown():
            self.joint_state_msg_sender()
            self.rate_.sleep()

    def update_la_pos(self, msg):
        self.la_pos = msg.data / 20000

    def joint_state_msg_sender(self):
        self.joint_state_array_[0] = self.la_pos
        angles = self.mycobot_.get_radians()
        for index, value in enumerate(angles):
            # if index != 2:
            #     value *= 1
            self.joint_state_array_[index+1] = value
        str = "angles: %s" % angles
        rospy.loginfo(str)

        joint_state_msg = Float32MultiArray(data=self.joint_state_array_)
        self.joint_state_msg_pub_.publish(joint_state_msg)

    def jointCommandCallback(self, msg):
        data_list = []

        for index, value in enumerate(msg.data):
        #     if index != 2:
        #         value *= 1
            data_list.append(value)
        str = "data_list: %s" % data_list
        rospy.loginfo(str)

        if self.first_flag:
            for value in data_list:
                self.pre_data_list.append(value)
            self.first_flag = False

        if self.pre_data_list != data_list:
            rospy.loginfo(rospy.get_caller_id() + "%s", msg.data)
            la_goal = ActuatorGoal()
            la_goal.targetPos = int(data_list[0]*20000) # 6000 steps approx = 0.3 m => 20,000 steps approx 1m
            self.la_client.send_goal(la_goal)

            self.mycobot_.send_radians(data_list[1:7], 40)
            self.pre_data_list = []
            for value in data_list:
                self.pre_data_list.append(value)

if __name__ == '__main__':
    try:
        mc_hw_if = MycobotHwInterface()
        mc_hw_if.main_loop()
    except rospy.ROSInterruptException:
        pass

