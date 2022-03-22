; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-msg)


;//! \htmlinclude SetCartesianImpedance.msg.html

(cl:defclass <SetCartesianImpedance> (roslisp-msg-protocol:ros-message)
  ((tool
    :reader tool
    :initarg :tool
    :type cl:string
    :initform "")
   (stiffness
    :reader stiffness
    :initarg :stiffness
    :type cartesian_impedance_msgs-msg:CartesianStiffness
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:CartesianStiffness))
   (damping
    :reader damping
    :initarg :damping
    :type cartesian_impedance_msgs-msg:CartesianDamping
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:CartesianDamping))
   (max_cart_vel
    :reader max_cart_vel
    :initarg :max_cart_vel
    :type cartesian_impedance_msgs-msg:MaxCartesianVelocity
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:MaxCartesianVelocity))
   (max_ctrl_force
    :reader max_ctrl_force
    :initarg :max_ctrl_force
    :type cartesian_impedance_msgs-msg:MaxControlForce
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:MaxControlForce))
   (max_path_deviation
    :reader max_path_deviation
    :initarg :max_path_deviation
    :type cartesian_impedance_msgs-msg:MaxPathDeviation
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:MaxPathDeviation))
   (null_space_params
    :reader null_space_params
    :initarg :null_space_params
    :type cartesian_impedance_msgs-msg:NullSpace
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:NullSpace)))
)

(cl:defclass SetCartesianImpedance (<SetCartesianImpedance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCartesianImpedance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCartesianImpedance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-msg:<SetCartesianImpedance> is deprecated: use cartesian_impedance_msgs-msg:SetCartesianImpedance instead.")))

(cl:ensure-generic-function 'tool-val :lambda-list '(m))
(cl:defmethod tool-val ((m <SetCartesianImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:tool-val is deprecated.  Use cartesian_impedance_msgs-msg:tool instead.")
  (tool m))

(cl:ensure-generic-function 'stiffness-val :lambda-list '(m))
(cl:defmethod stiffness-val ((m <SetCartesianImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:stiffness-val is deprecated.  Use cartesian_impedance_msgs-msg:stiffness instead.")
  (stiffness m))

(cl:ensure-generic-function 'damping-val :lambda-list '(m))
(cl:defmethod damping-val ((m <SetCartesianImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:damping-val is deprecated.  Use cartesian_impedance_msgs-msg:damping instead.")
  (damping m))

(cl:ensure-generic-function 'max_cart_vel-val :lambda-list '(m))
(cl:defmethod max_cart_vel-val ((m <SetCartesianImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:max_cart_vel-val is deprecated.  Use cartesian_impedance_msgs-msg:max_cart_vel instead.")
  (max_cart_vel m))

(cl:ensure-generic-function 'max_ctrl_force-val :lambda-list '(m))
(cl:defmethod max_ctrl_force-val ((m <SetCartesianImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:max_ctrl_force-val is deprecated.  Use cartesian_impedance_msgs-msg:max_ctrl_force instead.")
  (max_ctrl_force m))

(cl:ensure-generic-function 'max_path_deviation-val :lambda-list '(m))
(cl:defmethod max_path_deviation-val ((m <SetCartesianImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:max_path_deviation-val is deprecated.  Use cartesian_impedance_msgs-msg:max_path_deviation instead.")
  (max_path_deviation m))

(cl:ensure-generic-function 'null_space_params-val :lambda-list '(m))
(cl:defmethod null_space_params-val ((m <SetCartesianImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-msg:null_space_params-val is deprecated.  Use cartesian_impedance_msgs-msg:null_space_params instead.")
  (null_space_params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCartesianImpedance>) ostream)
  "Serializes a message object of type '<SetCartesianImpedance>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tool))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tool))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stiffness) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'damping) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_cart_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_ctrl_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_path_deviation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'null_space_params) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCartesianImpedance>) istream)
  "Deserializes a message object of type '<SetCartesianImpedance>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tool) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tool) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stiffness) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'damping) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_cart_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_ctrl_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_path_deviation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'null_space_params) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCartesianImpedance>)))
  "Returns string type for a message object of type '<SetCartesianImpedance>"
  "cartesian_impedance_msgs/SetCartesianImpedance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCartesianImpedance)))
  "Returns string type for a message object of type 'SetCartesianImpedance"
  "cartesian_impedance_msgs/SetCartesianImpedance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCartesianImpedance>)))
  "Returns md5sum for a message object of type '<SetCartesianImpedance>"
  "b24937cc6fdd3861e00c0a10eecbfb67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCartesianImpedance)))
  "Returns md5sum for a message object of type 'SetCartesianImpedance"
  "b24937cc6fdd3861e00c0a10eecbfb67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCartesianImpedance>)))
  "Returns full string definition for message of type '<SetCartesianImpedance>"
  (cl:format cl:nil "# Here we combine all the parameters message definitions into a single message~%# that needs to be send to the controller in order to adjust the Cartesian Impedance Parameters~%~%string                 tool~%CartesianStiffness     stiffness~%#use this if the damping parameters are defined as ratios (Lehr's damping ratio)~%CartesianDamping       damping~%MaxCartesianVelocity   max_cart_vel~%MaxControlForce        max_ctrl_force~%MaxPathDeviation       max_path_deviation~%NullSpace              null_space_params~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianStiffness~%# Stiffness parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# [N/m]~%geometry_msgs/Vector3 translational~%# [Nm/rad]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianDamping~%# Damping parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# Spring damping (type: double)~%# The spring damping determines the extent to which the virtual springs~%# oscillate after deflection.~%# For all degrees of freedom (without unit: Lehr’s damping ratio)~%~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 translational~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCartesianVelocity~%# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance~%# the values are divided into translational and rotational~%# the overall message is defined as Twist.~%# The Twist message is composed of:~%#  1. geometry_msgs/Vector3 linear~%#  2. geometry_msgs/Vector3 angular~%~%# trans: [m/s]~%# rotation: [rad/s]~%geometry_msgs/Twist set~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxControlForce~%# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance~%# This is not the values that the user needs to set for Force Control on the controller~%# these parameters are just a safety set and if the controller exceeds the maximum external force~%# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.~%~%# Wrench is defined with two components:~%# Vector3  force~%# Vector3  torque~%~%# xyz: Newtons  (all >=0)~%# rpy:Nm~%geometry_msgs/Wrench set~%~%# handler if max control force is exceeded~% MaxCtrlForceExceeded exceeded_action~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded~%# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxPathDeviation~%# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# maximum deviation from set goal in m~%geometry_msgs/Vector3 translation~%~%# maximum deviation from set goal in radians~%geometry_msgs/Vector3 rotation~%~%================================================================================~%MSG: cartesian_impedance_msgs/NullSpace~%# parameters for a redundant joint of the robot when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Float64~%~%# Kinematically, the manipulator's null space describes the motions~%# the arm can make that don't move the end effector, known shorthand as \"self-motion\";~%# for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.~%# The range of self-motion for a manipulator is a mathematically well defined space.~%# Khatib et al., 1987~%~%string[] link_names~%~%# [Nm/rad] must be => 0.0~%float64[] stiffness~%~%# without unit: Lehr’s damping ratio~%# must be between 0.3-1.0 suggested is 0.7~%float64[] damping~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCartesianImpedance)))
  "Returns full string definition for message of type 'SetCartesianImpedance"
  (cl:format cl:nil "# Here we combine all the parameters message definitions into a single message~%# that needs to be send to the controller in order to adjust the Cartesian Impedance Parameters~%~%string                 tool~%CartesianStiffness     stiffness~%#use this if the damping parameters are defined as ratios (Lehr's damping ratio)~%CartesianDamping       damping~%MaxCartesianVelocity   max_cart_vel~%MaxControlForce        max_ctrl_force~%MaxPathDeviation       max_path_deviation~%NullSpace              null_space_params~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianStiffness~%# Stiffness parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# [N/m]~%geometry_msgs/Vector3 translational~%# [Nm/rad]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianDamping~%# Damping parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# Spring damping (type: double)~%# The spring damping determines the extent to which the virtual springs~%# oscillate after deflection.~%# For all degrees of freedom (without unit: Lehr’s damping ratio)~%~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 translational~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCartesianVelocity~%# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance~%# the values are divided into translational and rotational~%# the overall message is defined as Twist.~%# The Twist message is composed of:~%#  1. geometry_msgs/Vector3 linear~%#  2. geometry_msgs/Vector3 angular~%~%# trans: [m/s]~%# rotation: [rad/s]~%geometry_msgs/Twist set~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxControlForce~%# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance~%# This is not the values that the user needs to set for Force Control on the controller~%# these parameters are just a safety set and if the controller exceeds the maximum external force~%# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.~%~%# Wrench is defined with two components:~%# Vector3  force~%# Vector3  torque~%~%# xyz: Newtons  (all >=0)~%# rpy:Nm~%geometry_msgs/Wrench set~%~%# handler if max control force is exceeded~% MaxCtrlForceExceeded exceeded_action~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded~%# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxPathDeviation~%# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# maximum deviation from set goal in m~%geometry_msgs/Vector3 translation~%~%# maximum deviation from set goal in radians~%geometry_msgs/Vector3 rotation~%~%================================================================================~%MSG: cartesian_impedance_msgs/NullSpace~%# parameters for a redundant joint of the robot when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Float64~%~%# Kinematically, the manipulator's null space describes the motions~%# the arm can make that don't move the end effector, known shorthand as \"self-motion\";~%# for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.~%# The range of self-motion for a manipulator is a mathematically well defined space.~%# Khatib et al., 1987~%~%string[] link_names~%~%# [Nm/rad] must be => 0.0~%float64[] stiffness~%~%# without unit: Lehr’s damping ratio~%# must be between 0.3-1.0 suggested is 0.7~%float64[] damping~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCartesianImpedance>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tool))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stiffness))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'damping))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_cart_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_ctrl_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_path_deviation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'null_space_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCartesianImpedance>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCartesianImpedance
    (cl:cons ':tool (tool msg))
    (cl:cons ':stiffness (stiffness msg))
    (cl:cons ':damping (damping msg))
    (cl:cons ':max_cart_vel (max_cart_vel msg))
    (cl:cons ':max_ctrl_force (max_ctrl_force msg))
    (cl:cons ':max_path_deviation (max_path_deviation msg))
    (cl:cons ':null_space_params (null_space_params msg))
))
