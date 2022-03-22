; Auto-generated. Do not edit!


(cl:in-package robot_hw_interface-msg)


;//! \htmlinclude RobotUpdateResult.msg.html

(cl:defclass <RobotUpdateResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass RobotUpdateResult (<RobotUpdateResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotUpdateResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotUpdateResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_hw_interface-msg:<RobotUpdateResult> is deprecated: use robot_hw_interface-msg:RobotUpdateResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RobotUpdateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:success-val is deprecated.  Use robot_hw_interface-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <RobotUpdateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:cmd-val is deprecated.  Use robot_hw_interface-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'mycobot_angles-val :lambda-list '(m))
(cl:defmethod mycobot_angles-val ((m <RobotUpdateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:mycobot_angles-val is deprecated.  Use robot_hw_interface-msg:mycobot_angles instead.")
  (mycobot_angles m))

(cl:ensure-generic-function 'la_pose-val :lambda-list '(m))
(cl:defmethod la_pose-val ((m <RobotUpdateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:la_pose-val is deprecated.  Use robot_hw_interface-msg:la_pose instead.")
  (la_pose m))

(cl:ensure-generic-function 'tool_state-val :lambda-list '(m))
(cl:defmethod tool_state-val ((m <RobotUpdateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:tool_state-val is deprecated.  Use robot_hw_interface-msg:tool_state instead.")
  (tool_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotUpdateResult>) ostream)
  "Serializes a message object of type '<RobotUpdateResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotUpdateResult>) istream)
  "Deserializes a message object of type '<RobotUpdateResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotUpdateResult>)))
  "Returns string type for a message object of type '<RobotUpdateResult>"
  "robot_hw_interface/RobotUpdateResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotUpdateResult)))
  "Returns string type for a message object of type 'RobotUpdateResult"
  "robot_hw_interface/RobotUpdateResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotUpdateResult>)))
  "Returns md5sum for a message object of type '<RobotUpdateResult>"
  "9f2e8c2e7926b9221a89cee3cfa83346")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotUpdateResult)))
  "Returns md5sum for a message object of type 'RobotUpdateResult"
  "9f2e8c2e7926b9221a89cee3cfa83346")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotUpdateResult>)))
  "Returns full string definition for message of type '<RobotUpdateResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%~%bool success~%int32 cmd~%MycobotAngles mycobot_angles~%LinearActuatorPose la_pose~%ToolUpdate tool_state~%~%================================================================================~%MSG: robot_hw_interface/MycobotAngles~%float32 joint_1~%float32 joint_2~%float32 joint_3~%float32 joint_4~%float32 joint_5~%float32 joint_6~%~%int8 speed~%================================================================================~%MSG: robot_hw_interface/LinearActuatorPose~%int32 targetPos~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToolUpdate~%WaterPump water_pump~%ToiletBrush toilet_brush~%================================================================================~%MSG: robot_hw_interface/WaterPump~%bool water_pump_status~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToiletBrush~%bool brush_lock_status~%int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotUpdateResult)))
  "Returns full string definition for message of type 'RobotUpdateResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%~%bool success~%int32 cmd~%MycobotAngles mycobot_angles~%LinearActuatorPose la_pose~%ToolUpdate tool_state~%~%================================================================================~%MSG: robot_hw_interface/MycobotAngles~%float32 joint_1~%float32 joint_2~%float32 joint_3~%float32 joint_4~%float32 joint_5~%float32 joint_6~%~%int8 speed~%================================================================================~%MSG: robot_hw_interface/LinearActuatorPose~%int32 targetPos~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToolUpdate~%WaterPump water_pump~%ToiletBrush toilet_brush~%================================================================================~%MSG: robot_hw_interface/WaterPump~%bool water_pump_status~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToiletBrush~%bool brush_lock_status~%int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotUpdateResult>))
  (cl:+ 0
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mycobot_angles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'la_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tool_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotUpdateResult>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotUpdateResult
    (cl:cons ':success (success msg))
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':mycobot_angles (mycobot_angles msg))
    (cl:cons ':la_pose (la_pose msg))
    (cl:cons ':tool_state (tool_state msg))
))
