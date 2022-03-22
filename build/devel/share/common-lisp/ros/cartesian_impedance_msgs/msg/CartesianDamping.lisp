; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-msg)


;//! \htmlinclude CartesianDamping.msg.html

(cl:defclass <CartesianDamping> (roslisp-msg-protocol:ros-message)
  ((translational
    :reader translational
    :initarg :translational
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rotational
    :reader rotational
    :initarg :rotational
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass CartesianDamping (<CartesianDamping>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianDamping>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianDamping)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-msg:<CartesianDamping> is deprecated: use cartesian_impedance_msgs-msg:CartesianDamping instead.")))

(cl:ensure-generic-function 'translational-val :lambda-list '(m))
(cl:defmethod translational-val ((m <CartesianDamping>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:translational-val is deprecated.  Use cartesian_impedance_msgs-msg:translational instead.")
  (translational m))

(cl:ensure-generic-function 'rotational-val :lambda-list '(m))
(cl:defmethod rotational-val ((m <CartesianDamping>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:rotational-val is deprecated.  Use cartesian_impedance_msgs-msg:rotational instead.")
  (rotational m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianDamping>) ostream)
  "Serializes a message object of type '<CartesianDamping>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translational) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotational) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianDamping>) istream)
  "Deserializes a message object of type '<CartesianDamping>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translational) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotational) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianDamping>)))
  "Returns string type for a message object of type '<CartesianDamping>"
  "cartesian_impedance_msgs/CartesianDamping")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianDamping)))
  "Returns string type for a message object of type 'CartesianDamping"
  "cartesian_impedance_msgs/CartesianDamping")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianDamping>)))
  "Returns md5sum for a message object of type '<CartesianDamping>"
  "866c599e7e51951dfb12da14910fd482")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianDamping)))
  "Returns md5sum for a message object of type 'CartesianDamping"
  "866c599e7e51951dfb12da14910fd482")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianDamping>)))
  "Returns full string definition for message of type '<CartesianDamping>"
  (cl:format cl:nil "# Damping parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# Spring damping (type: double)~%# The spring damping determines the extent to which the virtual springs~%# oscillate after deflection.~%# For all degrees of freedom (without unit: Lehr’s damping ratio)~%~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 translational~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianDamping)))
  "Returns full string definition for message of type 'CartesianDamping"
  (cl:format cl:nil "# Damping parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# Spring damping (type: double)~%# The spring damping determines the extent to which the virtual springs~%# oscillate after deflection.~%# For all degrees of freedom (without unit: Lehr’s damping ratio)~%~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 translational~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianDamping>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translational))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotational))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianDamping>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianDamping
    (cl:cons ':translational (translational msg))
    (cl:cons ':rotational (rotational msg))
))
