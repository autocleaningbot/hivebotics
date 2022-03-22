; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-msg)


;//! \htmlinclude MaxCtrlForceExceeded.msg.html

(cl:defclass <MaxCtrlForceExceeded> (roslisp-msg-protocol:ros-message)
  ((stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil)
   (gravity_compensation
    :reader gravity_compensation
    :initarg :gravity_compensation
    :type cl:boolean
    :initform cl:nil)
   (move_away
    :reader move_away
    :initarg :move_away
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MaxCtrlForceExceeded (<MaxCtrlForceExceeded>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaxCtrlForceExceeded>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaxCtrlForceExceeded)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-msg:<MaxCtrlForceExceeded> is deprecated: use cartesian_impedance_msgs-msg:MaxCtrlForceExceeded instead.")))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <MaxCtrlForceExceeded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:stop-val is deprecated.  Use cartesian_impedance_msgs-msg:stop instead.")
  (stop m))

(cl:ensure-generic-function 'gravity_compensation-val :lambda-list '(m))
(cl:defmethod gravity_compensation-val ((m <MaxCtrlForceExceeded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:gravity_compensation-val is deprecated.  Use cartesian_impedance_msgs-msg:gravity_compensation instead.")
  (gravity_compensation m))

(cl:ensure-generic-function 'move_away-val :lambda-list '(m))
(cl:defmethod move_away-val ((m <MaxCtrlForceExceeded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:move_away-val is deprecated.  Use cartesian_impedance_msgs-msg:move_away instead.")
  (move_away m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaxCtrlForceExceeded>) ostream)
  "Serializes a message object of type '<MaxCtrlForceExceeded>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gravity_compensation) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'move_away) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaxCtrlForceExceeded>) istream)
  "Deserializes a message object of type '<MaxCtrlForceExceeded>"
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gravity_compensation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'move_away) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaxCtrlForceExceeded>)))
  "Returns string type for a message object of type '<MaxCtrlForceExceeded>"
  "cartesian_impedance_msgs/MaxCtrlForceExceeded")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaxCtrlForceExceeded)))
  "Returns string type for a message object of type 'MaxCtrlForceExceeded"
  "cartesian_impedance_msgs/MaxCtrlForceExceeded")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaxCtrlForceExceeded>)))
  "Returns md5sum for a message object of type '<MaxCtrlForceExceeded>"
  "f6ac6c0e9102c9975ab762de235b8e60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaxCtrlForceExceeded)))
  "Returns md5sum for a message object of type 'MaxCtrlForceExceeded"
  "f6ac6c0e9102c9975ab762de235b8e60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaxCtrlForceExceeded>)))
  "Returns full string definition for message of type '<MaxCtrlForceExceeded>"
  (cl:format cl:nil "# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaxCtrlForceExceeded)))
  "Returns full string definition for message of type 'MaxCtrlForceExceeded"
  (cl:format cl:nil "# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaxCtrlForceExceeded>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaxCtrlForceExceeded>))
  "Converts a ROS message object to a list"
  (cl:list 'MaxCtrlForceExceeded
    (cl:cons ':stop (stop msg))
    (cl:cons ':gravity_compensation (gravity_compensation msg))
    (cl:cons ':move_away (move_away msg))
))
