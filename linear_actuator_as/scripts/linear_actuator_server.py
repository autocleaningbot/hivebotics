#! /usr/bin/env python
import rospy
import actionlib
import time
from linear_actuator_as.msg import ActuatorAction, ActuatorResult, ActuatorFeedback
from std_msgs.msg import Int32


class LinearActuatorClass():
    _feedback = ActuatorFeedback()
    _result = ActuatorResult()
    _servo_current_pos = 0

    def __init__(self):
        self._as = actionlib.SimpleActionServer("linear_actuator_server", ActuatorAction, self.goal_callback, False)
        self._as.start()
        self._servo_pub = rospy.Publisher("/servo", Int32, queue_size=1)
        self._servo_sub = rospy.Subscriber("/servo_current_pos", Int32, self.sub_callback)
        rospy.loginfo('SERVER STARTED')

    def sub_callback(self, msg):
        self._servo_current_pos = msg.data

    def goal_callback(self,goal):
        r = rospy.Rate(1)
        success = True
        
        targetPos = goal.targetPos
        speed = goal.speed

        goalObj = Int32()
        goalObj.data = targetPos
        self._servo_pub.publish(goalObj)
        startTime = time.time()

        while (self._servo_current_pos != targetPos):
            self._feedback.currentPos = self._servo_current_pos
            self._as.publish_feedback(self._feedback)
            rospy.sleep(0.2)

        if success:
            self._result.endPos = self._servo_current_pos
            self._result.success = success
            self._as.set_succeeded(self._result)


if __name__ == "__main__":
    rospy.init_node('la_server_node')
    LinearActuatorClass()
    rospy.spin()
