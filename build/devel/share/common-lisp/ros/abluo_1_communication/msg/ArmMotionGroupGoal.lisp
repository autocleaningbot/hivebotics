; Auto-generated. Do not edit!


(cl:in-package abluo_1_communication-msg)


;//! \htmlinclude ArmMotionGroupGoal.msg.html

(cl:defclass <ArmMotionGroupGoal> (roslisp-msg-protocol:ros-message)
  ((joint_values
    :reader joint_values
    :initarg :joint_values
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ArmMotionGroupGoal (<ArmMotionGroupGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmMotionGroupGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmMotionGroupGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abluo_1_communication-msg:<ArmMotionGroupGoal> is deprecated: use abluo_1_communication-msg:ArmMotionGroupGoal instead.")))

(cl:ensure-generic-function 'joint_values-val :lambda-list '(m))
(cl:defmethod joint_values-val ((m <ArmMotionGroupGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abluo_1_communication-msg:joint_values-val is deprecated.  Use abluo_1_communication-msg:joint_values instead.")
  (joint_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmMotionGroupGoal>) ostream)
  "Serializes a message object of type '<ArmMotionGroupGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'joint_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmMotionGroupGoal>) istream)
  "Deserializes a message object of type '<ArmMotionGroupGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmMotionGroupGoal>)))
  "Returns string type for a message object of type '<ArmMotionGroupGoal>"
  "abluo_1_communication/ArmMotionGroupGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmMotionGroupGoal)))
  "Returns string type for a message object of type 'ArmMotionGroupGoal"
  "abluo_1_communication/ArmMotionGroupGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmMotionGroupGoal>)))
  "Returns md5sum for a message object of type '<ArmMotionGroupGoal>"
  "5f00ef9565c1cd7202da577ba4f0ed79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmMotionGroupGoal)))
  "Returns md5sum for a message object of type 'ArmMotionGroupGoal"
  "5f00ef9565c1cd7202da577ba4f0ed79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmMotionGroupGoal>)))
  "Returns full string definition for message of type '<ArmMotionGroupGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# This Passes Joint Angles to the server which plans and calls the motion~%# Goal~%int32[] joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmMotionGroupGoal)))
  "Returns full string definition for message of type 'ArmMotionGroupGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# This Passes Joint Angles to the server which plans and calls the motion~%# Goal~%int32[] joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmMotionGroupGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmMotionGroupGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmMotionGroupGoal
    (cl:cons ':joint_values (joint_values msg))
))