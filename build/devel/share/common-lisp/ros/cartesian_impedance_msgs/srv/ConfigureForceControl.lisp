; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-srv)


;//! \htmlinclude ConfigureForceControl-request.msg.html

(cl:defclass <ConfigureForceControl-request> (roslisp-msg-protocol:ros-message)
  ((cart_impedance_params
    :reader cart_impedance_params
    :initarg :cart_impedance_params
    :type cartesian_impedance_msgs-msg:SetCartesianImpedance
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:SetCartesianImpedance))
   (cart_force_control
    :reader cart_force_control
    :initarg :cart_force_control
    :type cartesian_impedance_msgs-msg:SetCartesianForceCtrl
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:SetCartesianForceCtrl)))
)

(cl:defclass ConfigureForceControl-request (<ConfigureForceControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigureForceControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigureForceControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-srv:<ConfigureForceControl-request> is deprecated: use cartesian_impedance_msgs-srv:ConfigureForceControl-request instead.")))

(cl:ensure-generic-function 'cart_impedance_params-val :lambda-list '(m))
(cl:defmethod cart_impedance_params-val ((m <ConfigureForceControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-srv:cart_impedance_params-val is deprecated.  Use cartesian_impedance_msgs-srv:cart_impedance_params instead.")
  (cart_impedance_params m))

(cl:ensure-generic-function 'cart_force_control-val :lambda-list '(m))
(cl:defmethod cart_force_control-val ((m <ConfigureForceControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-srv:cart_force_control-val is deprecated.  Use cartesian_impedance_msgs-srv:cart_force_control instead.")
  (cart_force_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigureForceControl-request>) ostream)
  "Serializes a message object of type '<ConfigureForceControl-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cart_impedance_params) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cart_force_control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigureForceControl-request>) istream)
  "Deserializes a message object of type '<ConfigureForceControl-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cart_impedance_params) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cart_force_control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigureForceControl-request>)))
  "Returns string type for a service object of type '<ConfigureForceControl-request>"
  "cartesian_impedance_msgs/ConfigureForceControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureForceControl-request)))
  "Returns string type for a service object of type 'ConfigureForceControl-request"
  "cartesian_impedance_msgs/ConfigureForceControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigureForceControl-request>)))
  "Returns md5sum for a message object of type '<ConfigureForceControl-request>"
  "cf3ce9f3d61d188954ed294028d91e13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigureForceControl-request)))
  "Returns md5sum for a message object of type 'ConfigureForceControl-request"
  "cf3ce9f3d61d188954ed294028d91e13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigureForceControl-request>)))
  "Returns full string definition for message of type '<ConfigureForceControl-request>"
  (cl:format cl:nil "cartesian_impedance_msgs/SetCartesianImpedance cart_impedance_params~%cartesian_impedance_msgs/SetCartesianForceCtrl cart_force_control~%~%================================================================================~%MSG: cartesian_impedance_msgs/SetCartesianImpedance~%# Here we combine all the parameters message definitions into a single message~%# that needs to be send to the controller in order to adjust the Cartesian Impedance Parameters~%~%string                 tool~%CartesianStiffness     stiffness~%#use this if the damping parameters are defined as ratios (Lehr's damping ratio)~%CartesianDamping       damping~%MaxCartesianVelocity   max_cart_vel~%MaxControlForce        max_ctrl_force~%MaxPathDeviation       max_path_deviation~%NullSpace              null_space_params~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianStiffness~%# Stiffness parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# [N/m]~%geometry_msgs/Vector3 translational~%# [Nm/rad]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianDamping~%# Damping parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# Spring damping (type: double)~%# The spring damping determines the extent to which the virtual springs~%# oscillate after deflection.~%# For all degrees of freedom (without unit: Lehr’s damping ratio)~%~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 translational~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCartesianVelocity~%# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance~%# the values are divided into translational and rotational~%# the overall message is defined as Twist.~%# The Twist message is composed of:~%#  1. geometry_msgs/Vector3 linear~%#  2. geometry_msgs/Vector3 angular~%~%# trans: [m/s]~%# rotation: [rad/s]~%geometry_msgs/Twist set~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxControlForce~%# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance~%# This is not the values that the user needs to set for Force Control on the controller~%# these parameters are just a safety set and if the controller exceeds the maximum external force~%# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.~%~%# Wrench is defined with two components:~%# Vector3  force~%# Vector3  torque~%~%# xyz: Newtons  (all >=0)~%# rpy:Nm~%geometry_msgs/Wrench set~%~%# handler if max control force is exceeded~% MaxCtrlForceExceeded exceeded_action~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded~%# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxPathDeviation~%# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# maximum deviation from set goal in m~%geometry_msgs/Vector3 translation~%~%# maximum deviation from set goal in radians~%geometry_msgs/Vector3 rotation~%~%================================================================================~%MSG: cartesian_impedance_msgs/NullSpace~%# parameters for a redundant joint of the robot when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Float64~%~%# Kinematically, the manipulator's null space describes the motions~%# the arm can make that don't move the end effector, known shorthand as \"self-motion\";~%# for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.~%# The range of self-motion for a manipulator is a mathematically well defined space.~%# Khatib et al., 1987~%~%string[] link_names~%~%# [Nm/rad] must be => 0.0~%float64[] stiffness~%~%# without unit: Lehr’s damping ratio~%# must be between 0.3-1.0 suggested is 0.7~%float64[] damping~%~%================================================================================~%MSG: cartesian_impedance_msgs/SetCartesianForceCtrl~%#this is the axis we want the robot to exert constant force.~%string DOF~%#the amount of force that the end effector needs to apply in the selected DOF~%float64 force~%#set the stiffness of that DOF~%float64 stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigureForceControl-request)))
  "Returns full string definition for message of type 'ConfigureForceControl-request"
  (cl:format cl:nil "cartesian_impedance_msgs/SetCartesianImpedance cart_impedance_params~%cartesian_impedance_msgs/SetCartesianForceCtrl cart_force_control~%~%================================================================================~%MSG: cartesian_impedance_msgs/SetCartesianImpedance~%# Here we combine all the parameters message definitions into a single message~%# that needs to be send to the controller in order to adjust the Cartesian Impedance Parameters~%~%string                 tool~%CartesianStiffness     stiffness~%#use this if the damping parameters are defined as ratios (Lehr's damping ratio)~%CartesianDamping       damping~%MaxCartesianVelocity   max_cart_vel~%MaxControlForce        max_ctrl_force~%MaxPathDeviation       max_path_deviation~%NullSpace              null_space_params~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianStiffness~%# Stiffness parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# [N/m]~%geometry_msgs/Vector3 translational~%# [Nm/rad]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianDamping~%# Damping parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# Spring damping (type: double)~%# The spring damping determines the extent to which the virtual springs~%# oscillate after deflection.~%# For all degrees of freedom (without unit: Lehr’s damping ratio)~%~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 translational~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCartesianVelocity~%# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance~%# the values are divided into translational and rotational~%# the overall message is defined as Twist.~%# The Twist message is composed of:~%#  1. geometry_msgs/Vector3 linear~%#  2. geometry_msgs/Vector3 angular~%~%# trans: [m/s]~%# rotation: [rad/s]~%geometry_msgs/Twist set~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxControlForce~%# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance~%# This is not the values that the user needs to set for Force Control on the controller~%# these parameters are just a safety set and if the controller exceeds the maximum external force~%# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.~%~%# Wrench is defined with two components:~%# Vector3  force~%# Vector3  torque~%~%# xyz: Newtons  (all >=0)~%# rpy:Nm~%geometry_msgs/Wrench set~%~%# handler if max control force is exceeded~% MaxCtrlForceExceeded exceeded_action~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded~%# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxPathDeviation~%# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# maximum deviation from set goal in m~%geometry_msgs/Vector3 translation~%~%# maximum deviation from set goal in radians~%geometry_msgs/Vector3 rotation~%~%================================================================================~%MSG: cartesian_impedance_msgs/NullSpace~%# parameters for a redundant joint of the robot when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Float64~%~%# Kinematically, the manipulator's null space describes the motions~%# the arm can make that don't move the end effector, known shorthand as \"self-motion\";~%# for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.~%# The range of self-motion for a manipulator is a mathematically well defined space.~%# Khatib et al., 1987~%~%string[] link_names~%~%# [Nm/rad] must be => 0.0~%float64[] stiffness~%~%# without unit: Lehr’s damping ratio~%# must be between 0.3-1.0 suggested is 0.7~%float64[] damping~%~%================================================================================~%MSG: cartesian_impedance_msgs/SetCartesianForceCtrl~%#this is the axis we want the robot to exert constant force.~%string DOF~%#the amount of force that the end effector needs to apply in the selected DOF~%float64 force~%#set the stiffness of that DOF~%float64 stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigureForceControl-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cart_impedance_params))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cart_force_control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigureForceControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigureForceControl-request
    (cl:cons ':cart_impedance_params (cart_impedance_params msg))
    (cl:cons ':cart_force_control (cart_force_control msg))
))
;//! \htmlinclude ConfigureForceControl-response.msg.html

(cl:defclass <ConfigureForceControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cartesian_impedance_msgs-msg:CartesianForceCtrlErrorCodes
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:CartesianForceCtrlErrorCodes)))
)

(cl:defclass ConfigureForceControl-response (<ConfigureForceControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigureForceControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigureForceControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-srv:<ConfigureForceControl-response> is deprecated: use cartesian_impedance_msgs-srv:ConfigureForceControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConfigureForceControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-srv:success-val is deprecated.  Use cartesian_impedance_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ConfigureForceControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-srv:error-val is deprecated.  Use cartesian_impedance_msgs-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigureForceControl-response>) ostream)
  "Serializes a message object of type '<ConfigureForceControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigureForceControl-response>) istream)
  "Deserializes a message object of type '<ConfigureForceControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigureForceControl-response>)))
  "Returns string type for a service object of type '<ConfigureForceControl-response>"
  "cartesian_impedance_msgs/ConfigureForceControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureForceControl-response)))
  "Returns string type for a service object of type 'ConfigureForceControl-response"
  "cartesian_impedance_msgs/ConfigureForceControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigureForceControl-response>)))
  "Returns md5sum for a message object of type '<ConfigureForceControl-response>"
  "cf3ce9f3d61d188954ed294028d91e13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigureForceControl-response)))
  "Returns md5sum for a message object of type 'ConfigureForceControl-response"
  "cf3ce9f3d61d188954ed294028d91e13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigureForceControl-response>)))
  "Returns full string definition for message of type '<ConfigureForceControl-response>"
  (cl:format cl:nil "bool success~%CartesianForceCtrlErrorCodes error~%~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianForceCtrlErrorCodes~%# overall behavior~%int32 SUCCESS=1~%int32 FAILURE=99999~%~%int32 SET_DOF_FAILED=-1~%int32 SET_CONTROL_FORCE_FAILED=-2~%int32 SET_FORCE_STIFFNESS_FAILED=-3~%int32 SET_CARTESIAN_CONTROL_FAILED=-4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigureForceControl-response)))
  "Returns full string definition for message of type 'ConfigureForceControl-response"
  (cl:format cl:nil "bool success~%CartesianForceCtrlErrorCodes error~%~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianForceCtrlErrorCodes~%# overall behavior~%int32 SUCCESS=1~%int32 FAILURE=99999~%~%int32 SET_DOF_FAILED=-1~%int32 SET_CONTROL_FORCE_FAILED=-2~%int32 SET_FORCE_STIFFNESS_FAILED=-3~%int32 SET_CARTESIAN_CONTROL_FAILED=-4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigureForceControl-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigureForceControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigureForceControl-response
    (cl:cons ':success (success msg))
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConfigureForceControl)))
  'ConfigureForceControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConfigureForceControl)))
  'ConfigureForceControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureForceControl)))
  "Returns string type for a service object of type '<ConfigureForceControl>"
  "cartesian_impedance_msgs/ConfigureForceControl")