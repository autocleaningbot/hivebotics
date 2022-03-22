; Auto-generated. Do not edit!


(cl:in-package robot_hw_interface-msg)


;//! \htmlinclude WaterPump.msg.html

(cl:defclass <WaterPump> (roslisp-msg-protocol:ros-message)
  ((water_pump_status
    :reader water_pump_status
    :initarg :water_pump_status
    :type cl:boolean
    :initform cl:nil)
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0))
)

(cl:defclass WaterPump (<WaterPump>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaterPump>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaterPump)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_hw_interface-msg:<WaterPump> is deprecated: use robot_hw_interface-msg:WaterPump instead.")))

(cl:ensure-generic-function 'water_pump_status-val :lambda-list '(m))
(cl:defmethod water_pump_status-val ((m <WaterPump>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:water_pump_status-val is deprecated.  Use robot_hw_interface-msg:water_pump_status instead.")
  (water_pump_status m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <WaterPump>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:speed-val is deprecated.  Use robot_hw_interface-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaterPump>) ostream)
  "Serializes a message object of type '<WaterPump>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'water_pump_status) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaterPump>) istream)
  "Deserializes a message object of type '<WaterPump>"
    (cl:setf (cl:slot-value msg 'water_pump_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaterPump>)))
  "Returns string type for a message object of type '<WaterPump>"
  "robot_hw_interface/WaterPump")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaterPump)))
  "Returns string type for a message object of type 'WaterPump"
  "robot_hw_interface/WaterPump")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaterPump>)))
  "Returns md5sum for a message object of type '<WaterPump>"
  "447554c189b87b52f4dedae471bf506e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaterPump)))
  "Returns md5sum for a message object of type 'WaterPump"
  "447554c189b87b52f4dedae471bf506e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaterPump>)))
  "Returns full string definition for message of type '<WaterPump>"
  (cl:format cl:nil "bool water_pump_status~%int32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaterPump)))
  "Returns full string definition for message of type 'WaterPump"
  (cl:format cl:nil "bool water_pump_status~%int32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaterPump>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaterPump>))
  "Converts a ROS message object to a list"
  (cl:list 'WaterPump
    (cl:cons ':water_pump_status (water_pump_status msg))
    (cl:cons ':speed (speed msg))
))
