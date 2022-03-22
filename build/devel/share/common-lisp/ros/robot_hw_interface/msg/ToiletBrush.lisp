; Auto-generated. Do not edit!


(cl:in-package robot_hw_interface-msg)


;//! \htmlinclude ToiletBrush.msg.html

(cl:defclass <ToiletBrush> (roslisp-msg-protocol:ros-message)
  ((brush_lock_status
    :reader brush_lock_status
    :initarg :brush_lock_status
    :type cl:boolean
    :initform cl:nil)
   (motor_speed
    :reader motor_speed
    :initarg :motor_speed
    :type cl:integer
    :initform 0))
)

(cl:defclass ToiletBrush (<ToiletBrush>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToiletBrush>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToiletBrush)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_hw_interface-msg:<ToiletBrush> is deprecated: use robot_hw_interface-msg:ToiletBrush instead.")))

(cl:ensure-generic-function 'brush_lock_status-val :lambda-list '(m))
(cl:defmethod brush_lock_status-val ((m <ToiletBrush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:brush_lock_status-val is deprecated.  Use robot_hw_interface-msg:brush_lock_status instead.")
  (brush_lock_status m))

(cl:ensure-generic-function 'motor_speed-val :lambda-list '(m))
(cl:defmethod motor_speed-val ((m <ToiletBrush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:motor_speed-val is deprecated.  Use robot_hw_interface-msg:motor_speed instead.")
  (motor_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToiletBrush>) ostream)
  "Serializes a message object of type '<ToiletBrush>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brush_lock_status) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'motor_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToiletBrush>) istream)
  "Deserializes a message object of type '<ToiletBrush>"
    (cl:setf (cl:slot-value msg 'brush_lock_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToiletBrush>)))
  "Returns string type for a message object of type '<ToiletBrush>"
  "robot_hw_interface/ToiletBrush")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToiletBrush)))
  "Returns string type for a message object of type 'ToiletBrush"
  "robot_hw_interface/ToiletBrush")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToiletBrush>)))
  "Returns md5sum for a message object of type '<ToiletBrush>"
  "6c569dc66f46b973be15ef66b1f2c87f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToiletBrush)))
  "Returns md5sum for a message object of type 'ToiletBrush"
  "6c569dc66f46b973be15ef66b1f2c87f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToiletBrush>)))
  "Returns full string definition for message of type '<ToiletBrush>"
  (cl:format cl:nil "bool brush_lock_status~%int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToiletBrush)))
  "Returns full string definition for message of type 'ToiletBrush"
  (cl:format cl:nil "bool brush_lock_status~%int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToiletBrush>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToiletBrush>))
  "Converts a ROS message object to a list"
  (cl:list 'ToiletBrush
    (cl:cons ':brush_lock_status (brush_lock_status msg))
    (cl:cons ':motor_speed (motor_speed msg))
))
