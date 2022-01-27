#!/usr/bin/env python2
import subprocess
import rospy
from sensor_msgs.msg import JointState

from pymycobot.mycobot import MyCobot
import actionlib
from linear_actuator_as.msg import ActuatorAction, ActuatorGoal

mc = None
client = actionlib.SimpleActionClient('/linear_actuator_server', ActuatorAction)

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "%s", data)
    la_pos = 0
    data_list = []
    for index, value in enumerate(data.position):
        # if index != 2:
        #     value *= -1
        if index == 0:
            la_pos = value
        if index != 0:
            data_list.append(value)
    goal = ActuatorGoal()
    # Range of Servo Pos is -4500 to 4500 (-0.2m to + 0.18 m)
    goal.targetPos = int(la_pos*5500/0.2)
    goal.speed = 80
    client.send_goal(goal)
    mc.send_radians(data_list, 80)
    client.wait_for_result()


def listener():
    global mc
    rospy.init_node("mycobot_reciver", anonymous=True)
    client.wait_for_server()
    port = subprocess.check_output(['echo -n /dev/ttyUSB*'], 
                                    shell=True).decode()
    print(port, 'port')
    # port = rospy.get_param("/mycobot_services/port")
    baud = rospy.get_param("~baud", 115200)
    mc = MyCobot(port, baud)

    rospy.Subscriber("joint_states", JointState, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == "__main__":
    listener()
