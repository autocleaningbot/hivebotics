#! /usr/bin/env python
import rospy
import actionlib
import time
from linear_actuator_as.msg import ActuatorAction, ActuatorResult, ActuatorFeedback


class LinearActuatorClass():
    _feedback = ActuatorFeedback()
    _result = ActuatorResult()

    def __init__(self):
        self._as = actionlib.SimpleActionServer("linear_actuator_server", ActuatorAction, self.goal_callback, False)
        self._as.start()
        rospy.loginfo('SERVER STARTED')

    def goal_callback(self,goal):
        r = rospy.Rate(1)
        success = True
        
        targetPos = goal.targetPos
        speed = goal.speed

        for i in range (1, targetPos +1):
            self._feedback.currentPos = i
            self._as.publish_feedback(self._feedback)
            rospy.sleep(0.2)

        if success:
            self._result.endPos = targetPos
            self._result.success = success
            self._as.set_succeeded(self._result)


if __name__ == "__main__":
    rospy.init_node('la_server_node')
    LinearActuatorClass()
    rospy.spin()
