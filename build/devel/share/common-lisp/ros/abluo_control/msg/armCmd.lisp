; Auto-generated. Do not edit!


(cl:in-package abluo_control-msg)


;//! \htmlinclude armCmd.msg.html

(cl:defclass <armCmd> (roslisp-msg-protocol:ros-message)
  ((lin_act_pos
    :reader lin_act_pos
    :initarg :lin_act_pos
    :type cl:float
    :initform 0.0)
   (lin_act_vel
    :reader lin_act_vel
    :initarg :lin_act_vel
    :type cl:float
    :initform 0.0)
   (joint_pos
    :reader joint_pos
    :initarg :joint_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (joint_vel
    :reader joint_vel
    :initarg :joint_vel
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass armCmd (<armCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <armCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'armCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abluo_control-msg:<armCmd> is deprecated: use abluo_control-msg:armCmd instead.")))

(cl:ensure-generic-function 'lin_act_pos-val :lambda-list '(m))
(cl:defmethod lin_act_pos-val ((m <armCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abluo_control-msg:lin_act_pos-val is deprecated.  Use abluo_control-msg:lin_act_pos instead.")
  (lin_act_pos m))

(cl:ensure-generic-function 'lin_act_vel-val :lambda-list '(m))
(cl:defmethod lin_act_vel-val ((m <armCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abluo_control-msg:lin_act_vel-val is deprecated.  Use abluo_control-msg:lin_act_vel instead.")
  (lin_act_vel m))

(cl:ensure-generic-function 'joint_pos-val :lambda-list '(m))
(cl:defmethod joint_pos-val ((m <armCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abluo_control-msg:joint_pos-val is deprecated.  Use abluo_control-msg:joint_pos instead.")
  (joint_pos m))

(cl:ensure-generic-function 'joint_vel-val :lambda-list '(m))
(cl:defmethod joint_vel-val ((m <armCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abluo_control-msg:joint_vel-val is deprecated.  Use abluo_control-msg:joint_vel instead.")
  (joint_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <armCmd>) ostream)
  "Serializes a message object of type '<armCmd>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lin_act_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lin_act_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_pos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_vel))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <armCmd>) istream)
  "Deserializes a message object of type '<armCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lin_act_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lin_act_vel) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'joint_pos) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'joint_pos)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'joint_vel) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'joint_vel)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<armCmd>)))
  "Returns string type for a message object of type '<armCmd>"
  "abluo_control/armCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'armCmd)))
  "Returns string type for a message object of type 'armCmd"
  "abluo_control/armCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<armCmd>)))
  "Returns md5sum for a message object of type '<armCmd>"
  "be46fb345c061067c53d8d4d84c44a87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'armCmd)))
  "Returns md5sum for a message object of type 'armCmd"
  "be46fb345c061067c53d8d4d84c44a87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<armCmd>)))
  "Returns full string definition for message of type '<armCmd>"
  (cl:format cl:nil "float32 lin_act_pos #val~%float32 lin_act_vel~%float32[6] joint_pos #degrees~%float32[6] joint_vel #deg/s~%# uint32 msg_ctr # count sent msgs to detected missed messages~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'armCmd)))
  "Returns full string definition for message of type 'armCmd"
  (cl:format cl:nil "float32 lin_act_pos #val~%float32 lin_act_vel~%float32[6] joint_pos #degrees~%float32[6] joint_vel #deg/s~%# uint32 msg_ctr # count sent msgs to detected missed messages~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <armCmd>))
  (cl:+ 0
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_vel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <armCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'armCmd
    (cl:cons ':lin_act_pos (lin_act_pos msg))
    (cl:cons ':lin_act_vel (lin_act_vel msg))
    (cl:cons ':joint_pos (joint_pos msg))
    (cl:cons ':joint_vel (joint_vel msg))
))
