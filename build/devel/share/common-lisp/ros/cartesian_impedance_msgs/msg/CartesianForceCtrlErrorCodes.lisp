; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-msg)


;//! \htmlinclude CartesianForceCtrlErrorCodes.msg.html

(cl:defclass <CartesianForceCtrlErrorCodes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CartesianForceCtrlErrorCodes (<CartesianForceCtrlErrorCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianForceCtrlErrorCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianForceCtrlErrorCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-msg:<CartesianForceCtrlErrorCodes> is deprecated: use cartesian_impedance_msgs-msg:CartesianForceCtrlErrorCodes instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CartesianForceCtrlErrorCodes>)))
    "Constants for message type '<CartesianForceCtrlErrorCodes>"
  '((:SUCCESS . 1)
    (:FAILURE . 99999)
    (:SET_DOF_FAILED . -1)
    (:SET_CONTROL_FORCE_FAILED . -2)
    (:SET_FORCE_STIFFNESS_FAILED . -3)
    (:SET_CARTESIAN_CONTROL_FAILED . -4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CartesianForceCtrlErrorCodes)))
    "Constants for message type 'CartesianForceCtrlErrorCodes"
  '((:SUCCESS . 1)
    (:FAILURE . 99999)
    (:SET_DOF_FAILED . -1)
    (:SET_CONTROL_FORCE_FAILED . -2)
    (:SET_FORCE_STIFFNESS_FAILED . -3)
    (:SET_CARTESIAN_CONTROL_FAILED . -4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianForceCtrlErrorCodes>) ostream)
  "Serializes a message object of type '<CartesianForceCtrlErrorCodes>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianForceCtrlErrorCodes>) istream)
  "Deserializes a message object of type '<CartesianForceCtrlErrorCodes>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianForceCtrlErrorCodes>)))
  "Returns string type for a message object of type '<CartesianForceCtrlErrorCodes>"
  "cartesian_impedance_msgs/CartesianForceCtrlErrorCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianForceCtrlErrorCodes)))
  "Returns string type for a message object of type 'CartesianForceCtrlErrorCodes"
  "cartesian_impedance_msgs/CartesianForceCtrlErrorCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianForceCtrlErrorCodes>)))
  "Returns md5sum for a message object of type '<CartesianForceCtrlErrorCodes>"
  "cdde8ee10c2b3283bacb3975eed8bd74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianForceCtrlErrorCodes)))
  "Returns md5sum for a message object of type 'CartesianForceCtrlErrorCodes"
  "cdde8ee10c2b3283bacb3975eed8bd74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianForceCtrlErrorCodes>)))
  "Returns full string definition for message of type '<CartesianForceCtrlErrorCodes>"
  (cl:format cl:nil "# overall behavior~%int32 SUCCESS=1~%int32 FAILURE=99999~%~%int32 SET_DOF_FAILED=-1~%int32 SET_CONTROL_FORCE_FAILED=-2~%int32 SET_FORCE_STIFFNESS_FAILED=-3~%int32 SET_CARTESIAN_CONTROL_FAILED=-4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianForceCtrlErrorCodes)))
  "Returns full string definition for message of type 'CartesianForceCtrlErrorCodes"
  (cl:format cl:nil "# overall behavior~%int32 SUCCESS=1~%int32 FAILURE=99999~%~%int32 SET_DOF_FAILED=-1~%int32 SET_CONTROL_FORCE_FAILED=-2~%int32 SET_FORCE_STIFFNESS_FAILED=-3~%int32 SET_CARTESIAN_CONTROL_FAILED=-4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianForceCtrlErrorCodes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianForceCtrlErrorCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianForceCtrlErrorCodes
))
