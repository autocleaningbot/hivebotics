; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-msg)


;//! \htmlinclude CartesianImpedanceErrorCodes.msg.html

(cl:defclass <CartesianImpedanceErrorCodes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CartesianImpedanceErrorCodes (<CartesianImpedanceErrorCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianImpedanceErrorCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianImpedanceErrorCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-msg:<CartesianImpedanceErrorCodes> is deprecated: use cartesian_impedance_msgs-msg:CartesianImpedanceErrorCodes instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CartesianImpedanceErrorCodes>)))
    "Constants for message type '<CartesianImpedanceErrorCodes>"
  '((:SUCCESS . 1)
    (:FAILURE . 99999)
    (:SET_STIFFNESS_FAILED . -1)
    (:SET_DAMPING_FAILED . -2)
    (:SET_MAX_CARTESIAN_VELOCITY_FAILED . -3)
    (:SET_MAX_CONTROL_FORCE_FAILED . -4)
    (:SET_MAX_PATH_DEVIATION . -5)
    (:SET_NULL_SPACE_PARAMETERS_FAILED . -6)
    (:SET_CARTESIAN_CONTROL_FAILED . -7)
    (:TIMED_OUT . -8)
    (:PREEMPTED . -9)
    (:NO_VALID_LOAD_DATA_SET . -10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CartesianImpedanceErrorCodes)))
    "Constants for message type 'CartesianImpedanceErrorCodes"
  '((:SUCCESS . 1)
    (:FAILURE . 99999)
    (:SET_STIFFNESS_FAILED . -1)
    (:SET_DAMPING_FAILED . -2)
    (:SET_MAX_CARTESIAN_VELOCITY_FAILED . -3)
    (:SET_MAX_CONTROL_FORCE_FAILED . -4)
    (:SET_MAX_PATH_DEVIATION . -5)
    (:SET_NULL_SPACE_PARAMETERS_FAILED . -6)
    (:SET_CARTESIAN_CONTROL_FAILED . -7)
    (:TIMED_OUT . -8)
    (:PREEMPTED . -9)
    (:NO_VALID_LOAD_DATA_SET . -10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianImpedanceErrorCodes>) ostream)
  "Serializes a message object of type '<CartesianImpedanceErrorCodes>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianImpedanceErrorCodes>) istream)
  "Deserializes a message object of type '<CartesianImpedanceErrorCodes>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianImpedanceErrorCodes>)))
  "Returns string type for a message object of type '<CartesianImpedanceErrorCodes>"
  "cartesian_impedance_msgs/CartesianImpedanceErrorCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianImpedanceErrorCodes)))
  "Returns string type for a message object of type 'CartesianImpedanceErrorCodes"
  "cartesian_impedance_msgs/CartesianImpedanceErrorCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianImpedanceErrorCodes>)))
  "Returns md5sum for a message object of type '<CartesianImpedanceErrorCodes>"
  "ebce641c819a67590ce717bdb7c4731b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianImpedanceErrorCodes)))
  "Returns md5sum for a message object of type 'CartesianImpedanceErrorCodes"
  "ebce641c819a67590ce717bdb7c4731b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianImpedanceErrorCodes>)))
  "Returns full string definition for message of type '<CartesianImpedanceErrorCodes>"
  (cl:format cl:nil "# overall behavior~%int32 SUCCESS=1~%int32 FAILURE=99999~%~%int32 SET_STIFFNESS_FAILED=-1~%int32 SET_DAMPING_FAILED=-2~%int32 SET_MAX_CARTESIAN_VELOCITY_FAILED=-3~%int32 SET_MAX_CONTROL_FORCE_FAILED=-4~%int32 SET_MAX_PATH_DEVIATION=-5~%int32 SET_NULL_SPACE_PARAMETERS_FAILED = -6~%int32 SET_CARTESIAN_CONTROL_FAILED=-7~%int32 TIMED_OUT=-8~%int32 PREEMPTED=-9~%~%# these parameters are set for the load and center of gravity of the end-effector when we have tool attached to it~%# It is important to set the right parameters for tool mass and center of gravity because in that way the robot can~%# recalculate the torques necessary to be in gravity compensation or apply constant force when in force control~%int32 NO_VALID_LOAD_DATA_SET=-10~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianImpedanceErrorCodes)))
  "Returns full string definition for message of type 'CartesianImpedanceErrorCodes"
  (cl:format cl:nil "# overall behavior~%int32 SUCCESS=1~%int32 FAILURE=99999~%~%int32 SET_STIFFNESS_FAILED=-1~%int32 SET_DAMPING_FAILED=-2~%int32 SET_MAX_CARTESIAN_VELOCITY_FAILED=-3~%int32 SET_MAX_CONTROL_FORCE_FAILED=-4~%int32 SET_MAX_PATH_DEVIATION=-5~%int32 SET_NULL_SPACE_PARAMETERS_FAILED = -6~%int32 SET_CARTESIAN_CONTROL_FAILED=-7~%int32 TIMED_OUT=-8~%int32 PREEMPTED=-9~%~%# these parameters are set for the load and center of gravity of the end-effector when we have tool attached to it~%# It is important to set the right parameters for tool mass and center of gravity because in that way the robot can~%# recalculate the torques necessary to be in gravity compensation or apply constant force when in force control~%int32 NO_VALID_LOAD_DATA_SET=-10~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianImpedanceErrorCodes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianImpedanceErrorCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianImpedanceErrorCodes
))
