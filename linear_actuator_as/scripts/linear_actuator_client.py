#! /usr/bin/env python
import rospy
import time
import actionlib
from linear_actuator_as.msg import ActuatorAction, ActuatorGoal, ActuatorResult, ActuatorFeedback


def feedback_callback(feedback):
    rospy.loginfo('[Feedback] Current Pos %d'%feedback.currentPos)

# initializes the action client node
rospy.init_node('drone_action_client')

# create the connection to the action server
client = actionlib.SimpleActionClient('/linear_actuator_server', ActuatorAction)
# waits until the action server is up and running
client.wait_for_server()

def move_to_pos(position=600):


    # creates a goal to send to the action server
    goal = ActuatorGoal()
    goal.targetPos = position
    goal.speed = 600

    # sends the goal to the action server, specifying which feedback function
    # to call when feedback received
    client.send_goal(goal, feedback_cb=feedback_callback)

    client.wait_for_result()
    rospy.loginfo('[Result] Endpos: {} Success: {} '.format(client.get_result().endPos, client.get_result().success))
    

# move_to_pos(0)
while True:
    command = input()
    if command == 'e':
        break
    elif command == 'c':
        move_to_pos(2000)
        move_to_pos(-2000)
        move_to_pos(0)
        