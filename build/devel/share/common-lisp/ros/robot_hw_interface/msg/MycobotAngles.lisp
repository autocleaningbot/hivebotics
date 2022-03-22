; Auto-generated. Do not edit!


(cl:in-package robot_hw_interface-msg)


;//! \htmlinclude MycobotAngles.msg.html

(cl:defclass <MycobotAngles> (roslisp-msg-protocol:ros-message)
  ((joint_1
    :reader joint_1
    :initarg :joint_1
    :type cl:float
    :initform 0.0)
   (joint_2
    :reader joint_2
    :initarg :joint_2
    :type cl:float
    :initform 0.0)
   (joint_3
    :reader joint_3
    :initarg :joint_3
    :type cl:float
    :initform 0.0)
   (joint_4
    :reader joint_4
    :initarg :joint_4
    :type cl:float
    :initform 0.0)
   (joint_5
    :reader joint_5
    :initarg :joint_5
    :type cl:float
    :initform 0.0)
   (joint_6
    :reader joint_6
    :initarg :joint_6
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MycobotAngles (<MycobotAngles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MycobotAngles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MycobotAngles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_hw_interface-msg:<MycobotAngles> is deprecated: use robot_hw_interface-msg:MycobotAngles instead.")))

(cl:ensure-generic-function 'joint_1-val :lambda-list '(m))
(cl:defmethod joint_1-val ((m <MycobotAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:joint_1-val is deprecated.  Use robot_hw_interface-msg:joint_1 instead.")
  (joint_1 m))

(cl:ensure-generic-function 'joint_2-val :lambda-list '(m))
(cl:defmethod joint_2-val ((m <MycobotAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:joint_2-val is deprecated.  Use robot_hw_interface-msg:joint_2 instead.")
  (joint_2 m))

(cl:ensure-generic-function 'joint_3-val :lambda-list '(m))
(cl:defmethod joint_3-val ((m <MycobotAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:joint_3-val is deprecated.  Use robot_hw_interface-msg:joint_3 instead.")
  (joint_3 m))

(cl:ensure-generic-function 'joint_4-val :lambda-list '(m))
(cl:defmethod joint_4-val ((m <MycobotAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:joint_4-val is deprecated.  Use robot_hw_interface-msg:joint_4 instead.")
  (joint_4 m))

(cl:ensure-generic-function 'joint_5-val :lambda-list '(m))
(cl:defmethod joint_5-val ((m <MycobotAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:joint_5-val is deprecated.  Use robot_hw_interface-msg:joint_5 instead.")
  (joint_5 m))

(cl:ensure-generic-function 'joint_6-val :lambda-list '(m))
(cl:defmethod joint_6-val ((m <MycobotAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:joint_6-val is deprecated.  Use robot_hw_interface-msg:joint_6 instead.")
  (joint_6 m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MycobotAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:speed-val is deprecated.  Use robot_hw_interface-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MycobotAngles>) ostream)
  "Serializes a message object of type '<MycobotAngles>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MycobotAngles>) istream)
  "Deserializes a message object of type '<MycobotAngles>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MycobotAngles>)))
  "Returns string type for a message object of type '<MycobotAngles>"
  "robot_hw_interface/MycobotAngles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MycobotAngles)))
  "Returns string type for a message object of type 'MycobotAngles"
  "robot_hw_interface/MycobotAngles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MycobotAngles>)))
  "Returns md5sum for a message object of type '<MycobotAngles>"
  "d77601489610418de50f0fa3e3e88a65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MycobotAngles)))
  "Returns md5sum for a message object of type 'MycobotAngles"
  "d77601489610418de50f0fa3e3e88a65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MycobotAngles>)))
  "Returns full string definition for message of type '<MycobotAngles>"
  (cl:format cl:nil "float32 joint_1~%float32 joint_2~%float32 joint_3~%float32 joint_4~%float32 joint_5~%float32 joint_6~%~%int8 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MycobotAngles)))
  "Returns full string definition for message of type 'MycobotAngles"
  (cl:format cl:nil "float32 joint_1~%float32 joint_2~%float32 joint_3~%float32 joint_4~%float32 joint_5~%float32 joint_6~%~%int8 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MycobotAngles>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MycobotAngles>))
  "Converts a ROS message object to a list"
  (cl:list 'MycobotAngles
    (cl:cons ':joint_1 (joint_1 msg))
    (cl:cons ':joint_2 (joint_2 msg))
    (cl:cons ':joint_3 (joint_3 msg))
    (cl:cons ':joint_4 (joint_4 msg))
    (cl:cons ':joint_5 (joint_5 msg))
    (cl:cons ':joint_6 (joint_6 msg))
    (cl:cons ':speed (speed msg))
))
