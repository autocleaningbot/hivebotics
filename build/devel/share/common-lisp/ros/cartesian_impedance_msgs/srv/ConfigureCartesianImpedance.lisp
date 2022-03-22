; Auto-generated. Do not edit!


(cl:in-package cartesian_impedance_msgs-srv)


;//! \htmlinclude ConfigureCartesianImpedance-request.msg.html

(cl:defclass <ConfigureCartesianImpedance-request> (roslisp-msg-protocol:ros-message)
  ((cart_impedance_params
    :reader cart_impedance_params
    :initarg :cart_impedance_params
    :type cartesian_impedance_msgs-msg:SetCartesianImpedance
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:SetCartesianImpedance)))
)

(cl:defclass ConfigureCartesianImpedance-request (<ConfigureCartesianImpedance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigureCartesianImpedance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigureCartesianImpedance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-srv:<ConfigureCartesianImpedance-request> is deprecated: use cartesian_impedance_msgs-srv:ConfigureCartesianImpedance-request instead.")))

(cl:ensure-generic-function 'cart_impedance_params-val :lambda-list '(m))
(cl:defmethod cart_impedance_params-val ((m <ConfigureCartesianImpedance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-srv:cart_impedance_params-val is deprecated.  Use cartesian_impedance_msgs-srv:cart_impedance_params instead.")
  (cart_impedance_params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigureCartesianImpedance-request>) ostream)
  "Serializes a message object of type '<ConfigureCartesianImpedance-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cart_impedance_params) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigureCartesianImpedance-request>) istream)
  "Deserializes a message object of type '<ConfigureCartesianImpedance-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cart_impedance_params) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigureCartesianImpedance-request>)))
  "Returns string type for a service object of type '<ConfigureCartesianImpedance-request>"
  "cartesian_impedance_msgs/ConfigureCartesianImpedanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureCartesianImpedance-request)))
  "Returns string type for a service object of type 'ConfigureCartesianImpedance-request"
  "cartesian_impedance_msgs/ConfigureCartesianImpedanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigureCartesianImpedance-request>)))
  "Returns md5sum for a message object of type '<ConfigureCartesianImpedance-request>"
  "31f5fc4d2c180546cc19c45ae4dc3939")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigureCartesianImpedance-request)))
  "Returns md5sum for a message object of type 'ConfigureCartesianImpedance-request"
  "31f5fc4d2c180546cc19c45ae4dc3939")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigureCartesianImpedance-request>)))
  "Returns full string definition for message of type '<ConfigureCartesianImpedance-request>"
  (cl:format cl:nil "cartesian_impedance_msgs/SetCartesianImpedance cart_impedance_params~%~%================================================================================~%MSG: cartesian_impedance_msgs/SetCartesianImpedance~%# Here we combine all the parameters message definitions into a single message~%# that needs to be send to the controller in order to adjust the Cartesian Impedance Parameters~%~%string                 tool~%CartesianStiffness     stiffness~%#use this if the damping parameters are defined as ratios (Lehr's damping ratio)~%CartesianDamping       damping~%MaxCartesianVelocity   max_cart_vel~%MaxControlForce        max_ctrl_force~%MaxPathDeviation       max_path_deviation~%NullSpace              null_space_params~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianStiffness~%# Stiffness parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# [N/m]~%geometry_msgs/Vector3 translational~%# [Nm/rad]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianDamping~%# Damping parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# Spring damping (type: double)~%# The spring damping determines the extent to which the virtual springs~%# oscillate after deflection.~%# For all degrees of freedom (without unit: Lehr’s damping ratio)~%~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 translational~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCartesianVelocity~%# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance~%# the values are divided into translational and rotational~%# the overall message is defined as Twist.~%# The Twist message is composed of:~%#  1. geometry_msgs/Vector3 linear~%#  2. geometry_msgs/Vector3 angular~%~%# trans: [m/s]~%# rotation: [rad/s]~%geometry_msgs/Twist set~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxControlForce~%# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance~%# This is not the values that the user needs to set for Force Control on the controller~%# these parameters are just a safety set and if the controller exceeds the maximum external force~%# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.~%~%# Wrench is defined with two components:~%# Vector3  force~%# Vector3  torque~%~%# xyz: Newtons  (all >=0)~%# rpy:Nm~%geometry_msgs/Wrench set~%~%# handler if max control force is exceeded~% MaxCtrlForceExceeded exceeded_action~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded~%# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxPathDeviation~%# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# maximum deviation from set goal in m~%geometry_msgs/Vector3 translation~%~%# maximum deviation from set goal in radians~%geometry_msgs/Vector3 rotation~%~%================================================================================~%MSG: cartesian_impedance_msgs/NullSpace~%# parameters for a redundant joint of the robot when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Float64~%~%# Kinematically, the manipulator's null space describes the motions~%# the arm can make that don't move the end effector, known shorthand as \"self-motion\";~%# for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.~%# The range of self-motion for a manipulator is a mathematically well defined space.~%# Khatib et al., 1987~%~%string[] link_names~%~%# [Nm/rad] must be => 0.0~%float64[] stiffness~%~%# without unit: Lehr’s damping ratio~%# must be between 0.3-1.0 suggested is 0.7~%float64[] damping~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigureCartesianImpedance-request)))
  "Returns full string definition for message of type 'ConfigureCartesianImpedance-request"
  (cl:format cl:nil "cartesian_impedance_msgs/SetCartesianImpedance cart_impedance_params~%~%================================================================================~%MSG: cartesian_impedance_msgs/SetCartesianImpedance~%# Here we combine all the parameters message definitions into a single message~%# that needs to be send to the controller in order to adjust the Cartesian Impedance Parameters~%~%string                 tool~%CartesianStiffness     stiffness~%#use this if the damping parameters are defined as ratios (Lehr's damping ratio)~%CartesianDamping       damping~%MaxCartesianVelocity   max_cart_vel~%MaxControlForce        max_ctrl_force~%MaxPathDeviation       max_path_deviation~%NullSpace              null_space_params~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianStiffness~%# Stiffness parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# [N/m]~%geometry_msgs/Vector3 translational~%# [Nm/rad]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianDamping~%# Damping parameters for the Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# Spring damping (type: double)~%# The spring damping determines the extent to which the virtual springs~%# oscillate after deflection.~%# For all degrees of freedom (without unit: Lehr’s damping ratio)~%~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 translational~%# [ratio:0.1-1.0]~%geometry_msgs/Vector3 rotational~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCartesianVelocity~%# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance~%# the values are divided into translational and rotational~%# the overall message is defined as Twist.~%# The Twist message is composed of:~%#  1. geometry_msgs/Vector3 linear~%#  2. geometry_msgs/Vector3 angular~%~%# trans: [m/s]~%# rotation: [rad/s]~%geometry_msgs/Twist set~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxControlForce~%# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance~%# This is not the values that the user needs to set for Force Control on the controller~%# these parameters are just a safety set and if the controller exceeds the maximum external force~%# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.~%~%# Wrench is defined with two components:~%# Vector3  force~%# Vector3  torque~%~%# xyz: Newtons  (all >=0)~%# rpy:Nm~%geometry_msgs/Wrench set~%~%# handler if max control force is exceeded~% MaxCtrlForceExceeded exceeded_action~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded~%# Message for handling different actions if the end-effector~%# exceeds maximum force set in the Cartesian Impedance parameters~%~%bool stop~%bool gravity_compensation~%bool move_away~%~%================================================================================~%MSG: cartesian_impedance_msgs/MaxPathDeviation~%# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Vector3~%~%# maximum deviation from set goal in m~%geometry_msgs/Vector3 translation~%~%# maximum deviation from set goal in radians~%geometry_msgs/Vector3 rotation~%~%================================================================================~%MSG: cartesian_impedance_msgs/NullSpace~%# parameters for a redundant joint of the robot when in Cartesian Impedance~%# the values are divided into translational and rotational~%# each of the translational and rotational components is defined as Float64~%~%# Kinematically, the manipulator's null space describes the motions~%# the arm can make that don't move the end effector, known shorthand as \"self-motion\";~%# for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.~%# The range of self-motion for a manipulator is a mathematically well defined space.~%# Khatib et al., 1987~%~%string[] link_names~%~%# [Nm/rad] must be => 0.0~%float64[] stiffness~%~%# without unit: Lehr’s damping ratio~%# must be between 0.3-1.0 suggested is 0.7~%float64[] damping~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigureCartesianImpedance-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cart_impedance_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigureCartesianImpedance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigureCartesianImpedance-request
    (cl:cons ':cart_impedance_params (cart_impedance_params msg))
))
;//! \htmlinclude ConfigureCartesianImpedance-response.msg.html

(cl:defclass <ConfigureCartesianImpedance-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cartesian_impedance_msgs-msg:CartesianImpedanceErrorCodes
    :initform (cl:make-instance 'cartesian_impedance_msgs-msg:CartesianImpedanceErrorCodes)))
)

(cl:defclass ConfigureCartesianImpedance-response (<ConfigureCartesianImpedance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigureCartesianImpedance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigureCartesianImpedance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_impedance_msgs-srv:<ConfigureCartesianImpedance-response> is deprecated: use cartesian_impedance_msgs-srv:ConfigureCartesianImpedance-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConfigureCartesianImpedance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-srv:success-val is deprecated.  Use cartesian_impedance_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ConfigureCartesianImpedance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_impedance_msgs-srv:error-val is deprecated.  Use cartesian_impedance_msgs-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigureCartesianImpedance-response>) ostream)
  "Serializes a message object of type '<ConfigureCartesianImpedance-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigureCartesianImpedance-response>) istream)
  "Deserializes a message object of type '<ConfigureCartesianImpedance-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigureCartesianImpedance-response>)))
  "Returns string type for a service object of type '<ConfigureCartesianImpedance-response>"
  "cartesian_impedance_msgs/ConfigureCartesianImpedanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureCartesianImpedance-response)))
  "Returns string type for a service object of type 'ConfigureCartesianImpedance-response"
  "cartesian_impedance_msgs/ConfigureCartesianImpedanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigureCartesianImpedance-response>)))
  "Returns md5sum for a message object of type '<ConfigureCartesianImpedance-response>"
  "31f5fc4d2c180546cc19c45ae4dc3939")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigureCartesianImpedance-response)))
  "Returns md5sum for a message object of type 'ConfigureCartesianImpedance-response"
  "31f5fc4d2c180546cc19c45ae4dc3939")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigureCartesianImpedance-response>)))
  "Returns full string definition for message of type '<ConfigureCartesianImpedance-response>"
  (cl:format cl:nil "bool success~%CartesianImpedanceErrorCodes error~%~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianImpedanceErrorCodes~%# overall behavior~%int32 SUCCESS=1~%int32 FAILURE=99999~%~%int32 SET_STIFFNESS_FAILED=-1~%int32 SET_DAMPING_FAILED=-2~%int32 SET_MAX_CARTESIAN_VELOCITY_FAILED=-3~%int32 SET_MAX_CONTROL_FORCE_FAILED=-4~%int32 SET_MAX_PATH_DEVIATION=-5~%int32 SET_NULL_SPACE_PARAMETERS_FAILED = -6~%int32 SET_CARTESIAN_CONTROL_FAILED=-7~%int32 TIMED_OUT=-8~%int32 PREEMPTED=-9~%~%# these parameters are set for the load and center of gravity of the end-effector when we have tool attached to it~%# It is important to set the right parameters for tool mass and center of gravity because in that way the robot can~%# recalculate the torques necessary to be in gravity compensation or apply constant force when in force control~%int32 NO_VALID_LOAD_DATA_SET=-10~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigureCartesianImpedance-response)))
  "Returns full string definition for message of type 'ConfigureCartesianImpedance-response"
  (cl:format cl:nil "bool success~%CartesianImpedanceErrorCodes error~%~%~%================================================================================~%MSG: cartesian_impedance_msgs/CartesianImpedanceErrorCodes~%# overall behavior~%int32 SUCCESS=1~%int32 FAILURE=99999~%~%int32 SET_STIFFNESS_FAILED=-1~%int32 SET_DAMPING_FAILED=-2~%int32 SET_MAX_CARTESIAN_VELOCITY_FAILED=-3~%int32 SET_MAX_CONTROL_FORCE_FAILED=-4~%int32 SET_MAX_PATH_DEVIATION=-5~%int32 SET_NULL_SPACE_PARAMETERS_FAILED = -6~%int32 SET_CARTESIAN_CONTROL_FAILED=-7~%int32 TIMED_OUT=-8~%int32 PREEMPTED=-9~%~%# these parameters are set for the load and center of gravity of the end-effector when we have tool attached to it~%# It is important to set the right parameters for tool mass and center of gravity because in that way the robot can~%# recalculate the torques necessary to be in gravity compensation or apply constant force when in force control~%int32 NO_VALID_LOAD_DATA_SET=-10~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigureCartesianImpedance-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigureCartesianImpedance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigureCartesianImpedance-response
    (cl:cons ':success (success msg))
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConfigureCartesianImpedance)))
  'ConfigureCartesianImpedance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConfigureCartesianImpedance)))
  'ConfigureCartesianImpedance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureCartesianImpedance)))
  "Returns string type for a service object of type '<ConfigureCartesianImpedance>"
  "cartesian_impedance_msgs/ConfigureCartesianImpedance")