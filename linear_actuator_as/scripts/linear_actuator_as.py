#! /usr/bin/env python
import rospy
import actionlib
import time
from linear_actuator_as.msg import LinearActuatorActionMsgAction, LinearActuatorActionMsgFeedback, LinearActuatorActionMsgResult


class LinearActuatorClass():
    _feedback = LinearActuatorActionMsgFeedback()
    _result = LinearActuatorActionMsgResult()

    def __init__(self):
        self._as = actionlib.SimpleActionServer("linear_actuator_as", LinearActuatorActionMsgAction, self.goal_callback, False)
        self._as.start()

    def goal_callback(self,goal):
        r = rospy.Rate(1)
        success = True
        
        dir = goal.direction
        count = goal.count
        starttime = time.time()

        if (dir == "DOWN"):
            for i in count:
                rospy.loginfo('DOWN %i of %i',i, count)
                rospy.sleep(0.5)
                self._feedback.percentage_moved = int(i/count)
                self._as.publish_feedback(self._feedback)

        if (dir == "UP"):
            for i in count:
                rospy.logingo('UP %i of %i',i, count)
                rospy.sleep(0.5)
                self._feedback.percentage_moved = int(i/count)
                self._as.publish_feedback(self._feedback)
        if success:
            self._result.position = count
            endtime = time.time()
            elapsed_time = endtime - starttime
            self._result.totalSeconds = elapsed_time



if __name__ == "main":
    rospy.init_node('linear_actuator_as_node')
    LinearActuatorClass()
    rospy.spin()
