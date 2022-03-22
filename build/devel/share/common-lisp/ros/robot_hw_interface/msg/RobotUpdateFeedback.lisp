; Auto-generated. Do not edit!


(cl:in-package robot_hw_interface-msg)


;//! \htmlinclude RobotUpdateFeedback.msg.html

(cl:defclass <RobotUpdateFeedback> (roslisp-msg-protocol:ros-message)
  ((status_percent
    :reader status_percent
    :initarg :status_percent
    :type cl:integer
    :initform 0)
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0)
   (mycobot_angles
    :reader mycobot_angles
    :initarg :mycobot_angles
    :type robot_hw_interface-msg:MycobotAngles
    :initform (cl:make-instance 'robot_hw_interface-msg:MycobotAngles))
   (la_pose
    :reader la_pose
    :initarg :la_pose
    :type robot_hw_interface-msg:LinearActuatorPose
    :initform (cl:make-instance 'robot_hw_interface-msg:LinearActuatorPose))
   (tool_state
    :reader tool_state
    :initarg :tool_state
    :type robot_hw_interface-msg:ToolUpdate
    :initform (cl:make-instance 'robot_hw_interface-msg:ToolUpdate)))
)

(cl:defclass RobotUpdateFeedback (<RobotUpdateFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotUpdateFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotUpdateFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_hw_interface-msg:<RobotUpdateFeedback> is deprecated: use robot_hw_interface-msg:RobotUpdateFeedback instead.")))

(cl:ensure-generic-function 'status_percent-val :lambda-list '(m))
(cl:defmethod status_percent-val ((m <RobotUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:status_percent-val is deprecated.  Use robot_hw_interface-msg:status_percent instead.")
  (status_percent m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <RobotUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:cmd-val is deprecated.  Use robot_hw_interface-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'mycobot_angles-val :lambda-list '(m))
(cl:defmethod mycobot_angles-val ((m <RobotUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:mycobot_angles-val is deprecated.  Use robot_hw_interface-msg:mycobot_angles instead.")
  (mycobot_angles m))

(cl:ensure-generic-function 'la_pose-val :lambda-list '(m))
(cl:defmethod la_pose-val ((m <RobotUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:la_pose-val is deprecated.  Use robot_hw_interface-msg:la_pose instead.")
  (la_pose m))

(cl:ensure-generic-function 'tool_state-val :lambda-list '(m))
(cl:defmethod tool_state-val ((m <RobotUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:tool_state-val is deprecated.  Use robot_hw_interface-msg:tool_state instead.")
  (tool_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotUpdateFeedback>) ostream)
  "Serializes a message object of type '<RobotUpdateFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'status_percent)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mycobot_angles) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'la_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tool_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotUpdateFeedback>) istream)
  "Deserializes a message object of type '<RobotUpdateFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_percent) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mycobot_angles) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'la_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tool_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotUpdateFeedback>)))
  "Returns string type for a message object of type '<RobotUpdateFeedback>"
  "robot_hw_interface/RobotUpdateFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotUpdateFeedback)))
  "Returns string type for a message object of type 'RobotUpdateFeedback"
  "robot_hw_interface/RobotUpdateFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotUpdateFeedback>)))
  "Returns md5sum for a message object of type '<RobotUpdateFeedback>"
  "292a14982b0b45b227a906cb2acd268c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotUpdateFeedback)))
  "Returns md5sum for a message object of type 'RobotUpdateFeedback"
  "292a14982b0b45b227a906cb2acd268c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotUpdateFeedback>)))
  "Returns full string definition for message of type '<RobotUpdateFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%int32 status_percent~%int32 cmd~%MycobotAngles mycobot_angles~%LinearActuatorPose la_pose~%ToolUpdate tool_state~%~%================================================================================~%MSG: robot_hw_interface/MycobotAngles~%float32 joint_1~%float32 joint_2~%float32 joint_3~%float32 joint_4~%float32 joint_5~%float32 joint_6~%~%int8 speed~%================================================================================~%MSG: robot_hw_interface/LinearActuatorPose~%int32 targetPos~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToolUpdate~%WaterPump water_pump~%ToiletBrush toilet_brush~%================================================================================~%MSG: robot_hw_interface/WaterPump~%bool water_pump_status~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToiletBrush~%bool brush_lock_status~%int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotUpdateFeedback)))
  "Returns full string definition for message of type 'RobotUpdateFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%int32 status_percent~%int32 cmd~%MycobotAngles mycobot_angles~%LinearActuatorPose la_pose~%ToolUpdate tool_state~%~%================================================================================~%MSG: robot_hw_interface/MycobotAngles~%float32 joint_1~%float32 joint_2~%float32 joint_3~%float32 joint_4~%float32 joint_5~%float32 joint_6~%~%int8 speed~%================================================================================~%MSG: robot_hw_interface/LinearActuatorPose~%int32 targetPos~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToolUpdate~%WaterPump water_pump~%ToiletBrush toilet_brush~%================================================================================~%MSG: robot_hw_interface/WaterPump~%bool water_pump_status~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToiletBrush~%bool brush_lock_status~%int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotUpdateFeedback>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mycobot_angles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'la_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tool_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotUpdateFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotUpdateFeedback
    (cl:cons ':status_percent (status_percent msg))
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':mycobot_angles (mycobot_angles msg))
    (cl:cons ':la_pose (la_pose msg))
    (cl:cons ':tool_state (tool_state msg))
))
