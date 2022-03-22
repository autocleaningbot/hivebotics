; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-msg)


;//! \htmlinclude SetCartesianForceCtrl.msg.html

(cl:defclass <SetCartesianForceCtrl> (roslisp-msg-protocol:ros-message)
  ((DOF
    :reader DOF
    :initarg :DOF
    :type cl:string
    :initform "")
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0)
   (stiffness
    :reader stiffness
    :initarg :stiffness
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetCartesianForceCtrl (<SetCartesianForceCtrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCartesianForceCtrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCartesianForceCtrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-msg:<SetCartesianForceCtrl> is deprecated: use cartesian_impedance_msgs-msg:SetCartesianForceCtrl instead.")))

(cl:ensure-generic-function 'DOF-val :lambda-list '(m))
(cl:defmethod DOF-val ((m <SetCartesianForceCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:DOF-val is deprecated.  Use cartesian_impedance_msgs-msg:DOF instead.")
  (DOF m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <SetCartesianForceCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:force-val is deprecated.  Use cartesian_impedance_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'stiffness-val :lambda-list '(m))
(cl:defmethod stiffness-val ((m <SetCartesianForceCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:stiffness-val is deprecated.  Use cartesian_impedance_msgs-msg:stiffness instead.")
  (stiffness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCartesianForceCtrl>) ostream)
  "Serializes a message object of type '<SetCartesianForceCtrl>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'DOF))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'DOF))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stiffness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCartesianForceCtrl>) istream)
  "Deserializes a message object of type '<SetCartesianForceCtrl>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DOF) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'DOF) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stiffness) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCartesianForceCtrl>)))
  "Returns string type for a message object of type '<SetCartesianForceCtrl>"
  "cartesian_impedance_msgs/SetCartesianForceCtrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCartesianForceCtrl)))
  "Returns string type for a message object of type 'SetCartesianForceCtrl"
  "cartesian_impedance_msgs/SetCartesianForceCtrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCartesianForceCtrl>)))
  "Returns md5sum for a message object of type '<SetCartesianForceCtrl>"
  "f4f7772e7871d1a624600d97bd177326")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCartesianForceCtrl)))
  "Returns md5sum for a message object of type 'SetCartesianForceCtrl"
  "f4f7772e7871d1a624600d97bd177326")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCartesianForceCtrl>)))
  "Returns full string definition for message of type '<SetCartesianForceCtrl>"
  (cl:format cl:nil "#this is the axis we want the robot to exert constant force.~%string DOF~%#the amount of force that the end effector needs to apply in the selected DOF~%float64 force~%#set the stiffness of that DOF~%float64 stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCartesianForceCtrl)))
  "Returns full string definition for message of type 'SetCartesianForceCtrl"
  (cl:format cl:nil "#this is the axis we want the robot to exert constant force.~%string DOF~%#the amount of force that the end effector needs to apply in the selected DOF~%float64 force~%#set the stiffness of that DOF~%float64 stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCartesianForceCtrl>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'DOF))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCartesianForceCtrl>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCartesianForceCtrl
    (cl:cons ':DOF (DOF msg))
    (cl:cons ':force (force msg))
    (cl:cons ':stiffness (stiffness msg))
))
