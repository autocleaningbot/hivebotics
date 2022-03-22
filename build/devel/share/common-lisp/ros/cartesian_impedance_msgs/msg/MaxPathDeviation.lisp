; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-msg)


;//! \htmlinclude MaxPathDeviation.msg.html

(cl:defclass <MaxPathDeviation> (roslisp-msg-protocol:ros-message)
  ((translation
    :reader translation
    :initarg :translation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rotation
    :reader rotation
    :initarg :rotation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass MaxPathDeviation (<MaxPathDeviation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaxPathDeviation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaxPathDeviation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-msg:<MaxPathDeviation> is deprecated: use cartesian_impedance_msgs-msg:MaxPathDeviation instead.")))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <MaxPathDeviation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:translation-val is deprecated.  Use cartesian_impedance_msgs-msg:translation instead.")
  (translation m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <MaxPathDeviation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:rotation-val is deprecated.  Use cartesian_impedance_msgs-msg:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaxPathDeviation>) ostream)
  "Serializes a message object of type '<MaxPathDeviation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaxPathDeviation>) istream)
  "Deserializes a message object of type '<MaxPathDeviation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaxPathDeviation>)))
  "Returns string type for a message object of type '<MaxPathDeviation>"
  "cartesian_impedance_msgs/MaxPathDeviation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaxPathDeviation)))
  "Returns string type for a message object of type 'MaxPathDeviation"
  "cartesian_impedance_msgs/MaxPathDeviation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaxPathDeviation>)))
  "Returns md5sum for a message object of type '<MaxPathDeviation>"
  "41357283b9b8994fb9ee581a91f76c5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaxPathDeviation)))
  "Returns md5sum for a message object of type 'MaxPathDeviation"
  "41357283b9b8994fb9ee581a91f76c5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaxPathDeviation>)))
  "Returns full string definition for message of type '<MaxPathDeviation>"
  (cl:format cl:nil "# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# maximum deviation from set goal in m~%geometry_msgs/Vector3 translation~%~%# maximum deviation from set goal in radians~%geometry_msgs/Vector3 rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaxPathDeviation)))
  "Returns full string definition for message of type 'MaxPathDeviation"
  (cl:format cl:nil "# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# maximum deviation from set goal in m~%geometry_msgs/Vector3 translation~%~%# maximum deviation from set goal in radians~%geometry_msgs/Vector3 rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaxPathDeviation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaxPathDeviation>))
  "Converts a ROS message object to a list"
  (cl:list 'MaxPathDeviation
    (cl:cons ':translation (translation msg))
    (cl:cons ':rotation (rotation msg))
))
