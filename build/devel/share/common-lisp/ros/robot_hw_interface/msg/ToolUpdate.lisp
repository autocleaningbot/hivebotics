; Auto-generated. Do not edit!


(cl:in-package robot_hw_interface-msg)


;//! \htmlinclude ToolUpdate.msg.html

(cl:defclass <ToolUpdate> (roslisp-msg-protocol:ros-message)
  ((water_pump
    :reader water_pump
    :initarg :water_pump
    :type robot_hw_interface-msg:WaterPump
    :initform (cl:make-instance 'robot_hw_interface-msg:WaterPump))
   (toilet_brush
    :reader toilet_brush
    :initarg :toilet_brush
    :type robot_hw_interface-msg:ToiletBrush
    :initform (cl:make-instance 'robot_hw_interface-msg:ToiletBrush)))
)

(cl:defclass ToolUpdate (<ToolUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_hw_interface-msg:<ToolUpdate> is deprecated: use robot_hw_interface-msg:ToolUpdate instead.")))

(cl:ensure-generic-function 'water_pump-val :lambda-list '(m))
(cl:defmethod water_pump-val ((m <ToolUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:water_pump-val is deprecated.  Use robot_hw_interface-msg:water_pump instead.")
  (water_pump m))

(cl:ensure-generic-function 'toilet_brush-val :lambda-list '(m))
(cl:defmethod toilet_brush-val ((m <ToolUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_hw_interface-msg:toilet_brush-val is deprecated.  Use robot_hw_interface-msg:toilet_brush instead.")
  (toilet_brush m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolUpdate>) ostream)
  "Serializes a message object of type '<ToolUpdate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'water_pump) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'toilet_brush) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolUpdate>) istream)
  "Deserializes a message object of type '<ToolUpdate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'water_pump) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'toilet_brush) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolUpdate>)))
  "Returns string type for a message object of type '<ToolUpdate>"
  "robot_hw_interface/ToolUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolUpdate)))
  "Returns string type for a message object of type 'ToolUpdate"
  "robot_hw_interface/ToolUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolUpdate>)))
  "Returns md5sum for a message object of type '<ToolUpdate>"
  "9d03c3706e095d719dab6e015f4f6e19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolUpdate)))
  "Returns md5sum for a message object of type 'ToolUpdate"
  "9d03c3706e095d719dab6e015f4f6e19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolUpdate>)))
  "Returns full string definition for message of type '<ToolUpdate>"
  (cl:format cl:nil "WaterPump water_pump~%ToiletBrush toilet_brush~%================================================================================~%MSG: robot_hw_interface/WaterPump~%bool water_pump_status~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToiletBrush~%bool brush_lock_status~%int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolUpdate)))
  "Returns full string definition for message of type 'ToolUpdate"
  (cl:format cl:nil "WaterPump water_pump~%ToiletBrush toilet_brush~%================================================================================~%MSG: robot_hw_interface/WaterPump~%bool water_pump_status~%int32 speed~%================================================================================~%MSG: robot_hw_interface/ToiletBrush~%bool brush_lock_status~%int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolUpdate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'water_pump))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'toilet_brush))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolUpdate
    (cl:cons ':water_pump (water_pump msg))
    (cl:cons ':toilet_brush (toilet_brush msg))
))
