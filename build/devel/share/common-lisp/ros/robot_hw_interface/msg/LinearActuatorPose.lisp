; Auto-generated. Do not edit!


(cl:in-package robot_hw_interface-msg)


;//! \htmlinclude LinearActuatorPose.msg.html

(cl:defclass <LinearActuatorPose> (roslisp-msg-protocol:ros-message)
  ((targetPos
    :reader targetPos
    :initarg :targetPos
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0))
)

(cl:defclass LinearActuatorPose (<LinearActuatorPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinearActuatorPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinearActuatorPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_hw_interface-msg:<LinearActuatorPose> is deprecated: use robot_hw_interface-msg:LinearActuatorPose instead.")))

(cl:ensure-generic-function 'targetPos-val :lambda-list '(m))
(cl:defmethod targetPos-val ((m <LinearActuatorPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:targetPos-val is deprecated.  Use robot_hw_interface-msg:targetPos instead.")
  (targetPos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LinearActuatorPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:speed-val is deprecated.  Use robot_hw_interface-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinearActuatorPose>) ostream)
  "Serializes a message object of type '<LinearActuatorPose>"
  (cl:let* ((signed (cl:slot-value msg 'targetPos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinearActuatorPose>) istream)
  "Deserializes a message object of type '<LinearActuatorPose>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targetPos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinearActuatorPose>)))
  "Returns string type for a message object of type '<LinearActuatorPose>"
  "robot_hw_interface/LinearActuatorPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinearActuatorPose)))
  "Returns string type for a message object of type 'LinearActuatorPose"
  "robot_hw_interface/LinearActuatorPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinearActuatorPose>)))
  "Returns md5sum for a message object of type '<LinearActuatorPose>"
  "16c889283f8cdf9d34c6303b6c5d3692")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinearActuatorPose)))
  "Returns md5sum for a message object of type 'LinearActuatorPose"
  "16c889283f8cdf9d34c6303b6c5d3692")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinearActuatorPose>)))
  "Returns full string definition for message of type '<LinearActuatorPose>"
  (cl:format cl:nil "int32 targetPos~%int32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinearActuatorPose)))
  "Returns full string definition for message of type 'LinearActuatorPose"
  (cl:format cl:nil "int32 targetPos~%int32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinearActuatorPose>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinearActuatorPose>))
  "Converts a ROS message object to a list"
  (cl:list 'LinearActuatorPose
    (cl:cons ':targetPos (targetPos msg))
    (cl:cons ':speed (speed msg))
))
