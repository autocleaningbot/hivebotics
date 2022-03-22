; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-msg)


;//! \htmlinclude MaxCartesianVelocity.msg.html

(cl:defclass <MaxCartesianVelocity> (roslisp-msg-protocol:ros-message)
  ((set
    :reader set
    :initarg :set
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass MaxCartesianVelocity (<MaxCartesianVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaxCartesianVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaxCartesianVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-msg:<MaxCartesianVelocity> is deprecated: use cartesian_impedance_msgs-msg:MaxCartesianVelocity instead.")))

(cl:ensure-generic-function 'set-val :lambda-list '(m))
(cl:defmethod set-val ((m <MaxCartesianVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:set-val is deprecated.  Use cartesian_impedance_msgs-msg:set instead.")
  (set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaxCartesianVelocity>) ostream)
  "Serializes a message object of type '<MaxCartesianVelocity>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'set) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaxCartesianVelocity>) istream)
  "Deserializes a message object of type '<MaxCartesianVelocity>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'set) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaxCartesianVelocity>)))
  "Returns string type for a message object of type '<MaxCartesianVelocity>"
  "cartesian_impedance_msgs/MaxCartesianVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaxCartesianVelocity)))
  "Returns string type for a message object of type 'MaxCartesianVelocity"
  "cartesian_impedance_msgs/MaxCartesianVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaxCartesianVelocity>)))
  "Returns md5sum for a message object of type '<MaxCartesianVelocity>"
  "3d6d020ac62f3de71dbfd1b4ad0a7689")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaxCartesianVelocity)))
  "Returns md5sum for a message object of type 'MaxCartesianVelocity"
  "3d6d020ac62f3de71dbfd1b4ad0a7689")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaxCartesianVelocity>)))
  "Returns full string definition for message of type '<MaxCartesianVelocity>"
  (cl:format cl:nil "# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance~%# the values are divided into translational and rotational~%# the overall message is defined as Twist.~%# The Twist message is composed of:~%#  1. geometry_msgs/Vector3 linear~%#  2. geometry_msgs/Vector3 angular~%~%# trans: [m/s]~%# rotation: [rad/s]~%geometry_msgs/Twist set~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaxCartesianVelocity)))
  "Returns full string definition for message of type 'MaxCartesianVelocity"
  (cl:format cl:nil "# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance~%# the values are divided into translational and rotational~%# the overall message is defined as Twist.~%# The Twist message is composed of:~%#  1. geometry_msgs/Vector3 linear~%#  2. geometry_msgs/Vector3 angular~%~%# trans: [m/s]~%# rotation: [rad/s]~%geometry_msgs/Twist set~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaxCartesianVelocity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'set))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaxCartesianVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'MaxCartesianVelocity
    (cl:cons ':set (set msg))
))
