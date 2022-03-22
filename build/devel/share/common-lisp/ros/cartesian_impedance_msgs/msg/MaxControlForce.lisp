; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-msg)


;//! \htmlinclude MaxControlForce.msg.html

(cl:defclass <MaxControlForce> (roslisp-msg-protocol:ros-message)
  ((set
    :reader set
    :initarg :set
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (exceeded_action
    :reader exceeded_action
    :initarg :exceeded_action
    :type cartesian_impedance_msgs-msg:MaxCtrlForceExceeded
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:MaxCtrlForceExceeded)))
)

(cl:defclass MaxControlForce (<MaxControlForce>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaxControlForce>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaxControlForce)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-msg:<MaxControlForce> is deprecated: use cartesian_impedance_msgs-msg:MaxControlForce instead.")))

(cl:ensure-generic-function 'set-val :lambda-list '(m))
(cl:defmethod set-val ((m <MaxControlForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:set-val is deprecated.  Use cartesian_impedance_msgs-msg:set instead.")
  (set m))

(cl:ensure-generic-function 'exceeded_action-val :lambda-list '(m))
(cl:defmethod exceeded_action-val ((m <MaxControlForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:exceeded_action-val is deprecated.  Use cartesian_impedance_msgs-msg:exceeded_action instead.")
  (exceeded_action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaxControlForce>) ostream)
  "Serializes a message object of type '<MaxControlForce>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'set) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'exceeded_action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaxControlForce>) istream)
  "Deserializes a message object of type '<MaxControlForce>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'set) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'exceeded_action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaxControlForce>)))
  "Returns string type for a message object of type '<MaxControlForce>"
  "cartesian_impedance_msgs/MaxControlForce")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaxControlForce)))
  "Returns string type for a message object of type 'MaxControlForce"
  "cartesian_impedance_msgs/MaxControlForce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaxControlForce>)))
  "Returns md5sum for a message object of type '<MaxControlForce>"
  "8d951f2d20cd888c5cd46241c4bebaba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaxControlForce)))
  "Returns md5sum for a message object of type 'MaxControlForce"
  "8d951f2d20cd888c5cd46241c4bebaba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaxControlForce>)))
  "Returns full string definition for message of type '<MaxControlForce>"
  (cl:format cl:nil "# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance~%# This is not the values that the user needs to set for Force Control on the controller~%# these parameters are just a safety set and if the controller exceeds the maximum external force~%# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.~%~%# Wrench is defined with two components:~%# Vector3  force~%# Vector3  torque~%~%# xyz: Newtons  (all >=0)~%# rpy:Nm~%geometry_msgs/Wrench set~%~%# handler if max control force is exceeded~% MaxCtrlForceExceeded exceeded_action~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded~%# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaxControlForce)))
  "Returns full string definition for message of type 'MaxControlForce"
  (cl:format cl:nil "# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance~%# This is not the values that the user needs to set for Force Control on the controller~%# these parameters are just a safety set and if the controller exceeds the maximum external force~%# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.~%~%# Wrench is defined with two components:~%# Vector3  force~%# Vector3  torque~%~%# xyz: Newtons  (all >=0)~%# rpy:Nm~%geometry_msgs/Wrench set~%~%# handler if max control force is exceeded~% MaxCtrlForceExceeded exceeded_action~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded~%# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaxControlForce>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'set))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'exceeded_action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaxControlForce>))
  "Converts a ROS message object to a list"
  (cl:list 'MaxControlForce
    (cl:cons ':set (set msg))
    (cl:cons ':exceeded_action (exceeded_action msg))
))
