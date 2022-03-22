;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::ConfigureForceControl)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'ConfigureForceControl (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::CONFIGUREFORCECONTROL")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::CONFIGUREFORCECONTROL"))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::CONFIGUREFORCECONTROLREQUEST")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::CONFIGUREFORCECONTROLREQUEST"))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::CONFIGUREFORCECONTROLRESPONSE")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::CONFIGUREFORCECONTROLRESPONSE"))

(in-package "ROS")





(defclass cartesian_impedance_msgs::ConfigureForceControlRequest
  :super ros::object
  :slots (_cart_impedance_params _cart_force_control ))

(defmethod cartesian_impedance_msgs::ConfigureForceControlRequest
  (:init
   (&key
    ((:cart_impedance_params __cart_impedance_params) (instance cartesian_impedance_msgs::SetCartesianImpedance :init))
    ((:cart_force_control __cart_force_control) (instance cartesian_impedance_msgs::SetCartesianForceCtrl :init))
    )
   (send-super :init)
   (setq _cart_impedance_params __cart_impedance_params)
   (setq _cart_force_control __cart_force_control)
   self)
  (:cart_impedance_params
   (&rest __cart_impedance_params)
   (if (keywordp (car __cart_impedance_params))
       (send* _cart_impedance_params __cart_impedance_params)
     (progn
       (if __cart_impedance_params (setq _cart_impedance_params (car __cart_impedance_params)))
       _cart_impedance_params)))
  (:cart_force_control
   (&rest __cart_force_control)
   (if (keywordp (car __cart_force_control))
       (send* _cart_force_control __cart_force_control)
     (progn
       (if __cart_force_control (setq _cart_force_control (car __cart_force_control)))
       _cart_force_control)))
  (:serialization-length
   ()
   (+
    ;; cartesian_impedance_msgs/SetCartesianImpedance _cart_impedance_params
    (send _cart_impedance_params :serialization-length)
    ;; cartesian_impedance_msgs/SetCartesianForceCtrl _cart_force_control
    (send _cart_force_control :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cartesian_impedance_msgs/SetCartesianImpedance _cart_impedance_params
       (send _cart_impedance_params :serialize s)
     ;; cartesian_impedance_msgs/SetCartesianForceCtrl _cart_force_control
       (send _cart_force_control :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cartesian_impedance_msgs/SetCartesianImpedance _cart_impedance_params
     (send _cart_impedance_params :deserialize buf ptr-) (incf ptr- (send _cart_impedance_params :serialization-length))
   ;; cartesian_impedance_msgs/SetCartesianForceCtrl _cart_force_control
     (send _cart_force_control :deserialize buf ptr-) (incf ptr- (send _cart_force_control :serialization-length))
   ;;
   self)
  )

(defclass cartesian_impedance_msgs::ConfigureForceControlResponse
  :super ros::object
  :slots (_success _error ))

(defmethod cartesian_impedance_msgs::ConfigureForceControlResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error __error) (instance cartesian_impedance_msgs::CartesianForceCtrlErrorCodes :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _error __error)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error
   (&rest __error)
   (if (keywordp (car __error))
       (send* _error __error)
     (progn
       (if __error (setq _error (car __error)))
       _error)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; cartesian_impedance_msgs/CartesianForceCtrlErrorCodes _error
    (send _error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; cartesian_impedance_msgs/CartesianForceCtrlErrorCodes _error
       (send _error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; cartesian_impedance_msgs/CartesianForceCtrlErrorCodes _error
     (send _error :deserialize buf ptr-) (incf ptr- (send _error :serialization-length))
   ;;
   self)
  )

(defclass cartesian_impedance_msgs::ConfigureForceControl
  :super ros::object
  :slots ())

(setf (get cartesian_impedance_msgs::ConfigureForceControl :md5sum-) "cf3ce9f3d61d188954ed294028d91e13")
(setf (get cartesian_impedance_msgs::ConfigureForceControl :datatype-) "cartesian_impedance_msgs/ConfigureForceControl")
(setf (get cartesian_impedance_msgs::ConfigureForceControl :request) cartesian_impedance_msgs::ConfigureForceControlRequest)
(setf (get cartesian_impedance_msgs::ConfigureForceControl :response) cartesian_impedance_msgs::ConfigureForceControlResponse)

(defmethod cartesian_impedance_msgs::ConfigureForceControlRequest
  (:response () (instance cartesian_impedance_msgs::ConfigureForceControlResponse :init)))

(setf (get cartesian_impedance_msgs::ConfigureForceControlRequest :md5sum-) "cf3ce9f3d61d188954ed294028d91e13")
(setf (get cartesian_impedance_msgs::ConfigureForceControlRequest :datatype-) "cartesian_impedance_msgs/ConfigureForceControlRequest")
(setf (get cartesian_impedance_msgs::ConfigureForceControlRequest :definition-)
      "cartesian_impedance_msgs/SetCartesianImpedance cart_impedance_params
cartesian_impedance_msgs/SetCartesianForceCtrl cart_force_control

================================================================================
MSG: cartesian_impedance_msgs/SetCartesianImpedance
# Here we combine all the parameters message definitions into a single message
# that needs to be send to the controller in order to adjust the Cartesian Impedance Parameters

string                 tool
CartesianStiffness     stiffness
#use this if the damping parameters are defined as ratios (Lehr's damping ratio)
CartesianDamping       damping
MaxCartesianVelocity   max_cart_vel
MaxControlForce        max_ctrl_force
MaxPathDeviation       max_path_deviation
NullSpace              null_space_params

================================================================================
MSG: cartesian_impedance_msgs/CartesianStiffness
# Stiffness parameters for the Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Vector3

# [N/m]
geometry_msgs/Vector3 translational
# [Nm/rad]
geometry_msgs/Vector3 rotational

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: cartesian_impedance_msgs/CartesianDamping
# Damping parameters for the Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Vector3

# Spring damping (type: double)
# The spring damping determines the extent to which the virtual springs
# oscillate after deflection.
# For all degrees of freedom (without unit: Lehr’s damping ratio)

# [ratio:0.1-1.0]
geometry_msgs/Vector3 translational
# [ratio:0.1-1.0]
geometry_msgs/Vector3 rotational

================================================================================
MSG: cartesian_impedance_msgs/MaxCartesianVelocity
# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance
# the values are divided into translational and rotational
# the overall message is defined as Twist.
# The Twist message is composed of:
#  1. geometry_msgs/Vector3 linear
#  2. geometry_msgs/Vector3 angular

# trans: [m/s]
# rotation: [rad/s]
geometry_msgs/Twist set

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: cartesian_impedance_msgs/MaxControlForce
# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance
# This is not the values that the user needs to set for Force Control on the controller
# these parameters are just a safety set and if the controller exceeds the maximum external force
# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.

# Wrench is defined with two components:
# Vector3  force
# Vector3  torque

# xyz: Newtons  (all >=0)
# rpy:Nm
geometry_msgs/Wrench set

# handler if max control force is exceeded
 MaxCtrlForceExceeded exceeded_action

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded
# Message for handling different actions if the end-effector
# exceeds maximum force set in the Cartesian Impedance parameters

bool stop
bool gravity_compensation
bool move_away

================================================================================
MSG: cartesian_impedance_msgs/MaxPathDeviation
# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Vector3

# maximum deviation from set goal in m
geometry_msgs/Vector3 translation

# maximum deviation from set goal in radians
geometry_msgs/Vector3 rotation

================================================================================
MSG: cartesian_impedance_msgs/NullSpace
# parameters for a redundant joint of the robot when in Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Float64

# Kinematically, the manipulator's null space describes the motions
# the arm can make that don't move the end effector, known shorthand as \"self-motion\";
# for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.
# The range of self-motion for a manipulator is a mathematically well defined space.
# Khatib et al., 1987

string[] link_names

# [Nm/rad] must be => 0.0
float64[] stiffness

# without unit: Lehr’s damping ratio
# must be between 0.3-1.0 suggested is 0.7
float64[] damping

================================================================================
MSG: cartesian_impedance_msgs/SetCartesianForceCtrl
#this is the axis we want the robot to exert constant force.
string DOF
#the amount of force that the end effector needs to apply in the selected DOF
float64 force
#set the stiffness of that DOF
float64 stiffness
---
bool success
CartesianForceCtrlErrorCodes error


================================================================================
MSG: cartesian_impedance_msgs/CartesianForceCtrlErrorCodes
# overall behavior
int32 SUCCESS=1
int32 FAILURE=99999

int32 SET_DOF_FAILED=-1
int32 SET_CONTROL_FORCE_FAILED=-2
int32 SET_FORCE_STIFFNESS_FAILED=-3
int32 SET_CARTESIAN_CONTROL_FAILED=-4
")

(setf (get cartesian_impedance_msgs::ConfigureForceControlResponse :md5sum-) "cf3ce9f3d61d188954ed294028d91e13")
(setf (get cartesian_impedance_msgs::ConfigureForceControlResponse :datatype-) "cartesian_impedance_msgs/ConfigureForceControlResponse")
(setf (get cartesian_impedance_msgs::ConfigureForceControlResponse :definition-)
      "cartesian_impedance_msgs/SetCartesianImpedance cart_impedance_params
cartesian_impedance_msgs/SetCartesianForceCtrl cart_force_control

================================================================================
MSG: cartesian_impedance_msgs/SetCartesianImpedance
# Here we combine all the parameters message definitions into a single message
# that needs to be send to the controller in order to adjust the Cartesian Impedance Parameters

string                 tool
CartesianStiffness     stiffness
#use this if the damping parameters are defined as ratios (Lehr's damping ratio)
CartesianDamping       damping
MaxCartesianVelocity   max_cart_vel
MaxControlForce        max_ctrl_force
MaxPathDeviation       max_path_deviation
NullSpace              null_space_params

================================================================================
MSG: cartesian_impedance_msgs/CartesianStiffness
# Stiffness parameters for the Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Vector3

# [N/m]
geometry_msgs/Vector3 translational
# [Nm/rad]
geometry_msgs/Vector3 rotational

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: cartesian_impedance_msgs/CartesianDamping
# Damping parameters for the Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Vector3

# Spring damping (type: double)
# The spring damping determines the extent to which the virtual springs
# oscillate after deflection.
# For all degrees of freedom (without unit: Lehr’s damping ratio)

# [ratio:0.1-1.0]
geometry_msgs/Vector3 translational
# [ratio:0.1-1.0]
geometry_msgs/Vector3 rotational

================================================================================
MSG: cartesian_impedance_msgs/MaxCartesianVelocity
# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance
# the values are divided into translational and rotational
# the overall message is defined as Twist.
# The Twist message is composed of:
#  1. geometry_msgs/Vector3 linear
#  2. geometry_msgs/Vector3 angular

# trans: [m/s]
# rotation: [rad/s]
geometry_msgs/Twist set

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: cartesian_impedance_msgs/MaxControlForce
# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance
# This is not the values that the user needs to set for Force Control on the controller
# these parameters are just a safety set and if the controller exceeds the maximum external force
# the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.

# Wrench is defined with two components:
# Vector3  force
# Vector3  torque

# xyz: Newtons  (all >=0)
# rpy:Nm
geometry_msgs/Wrench set

# handler if max control force is exceeded
 MaxCtrlForceExceeded exceeded_action

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded
# Message for handling different actions if the end-effector
# exceeds maximum force set in the Cartesian Impedance parameters

bool stop
bool gravity_compensation
bool move_away

================================================================================
MSG: cartesian_impedance_msgs/MaxPathDeviation
# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Vector3

# maximum deviation from set goal in m
geometry_msgs/Vector3 translation

# maximum deviation from set goal in radians
geometry_msgs/Vector3 rotation

================================================================================
MSG: cartesian_impedance_msgs/NullSpace
# parameters for a redundant joint of the robot when in Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Float64

# Kinematically, the manipulator's null space describes the motions
# the arm can make that don't move the end effector, known shorthand as \"self-motion\";
# for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.
# The range of self-motion for a manipulator is a mathematically well defined space.
# Khatib et al., 1987

string[] link_names

# [Nm/rad] must be => 0.0
float64[] stiffness

# without unit: Lehr’s damping ratio
# must be between 0.3-1.0 suggested is 0.7
float64[] damping

================================================================================
MSG: cartesian_impedance_msgs/SetCartesianForceCtrl
#this is the axis we want the robot to exert constant force.
string DOF
#the amount of force that the end effector needs to apply in the selected DOF
float64 force
#set the stiffness of that DOF
float64 stiffness
---
bool success
CartesianForceCtrlErrorCodes error


================================================================================
MSG: cartesian_impedance_msgs/CartesianForceCtrlErrorCodes
# overall behavior
int32 SUCCESS=1
int32 FAILURE=99999

int32 SET_DOF_FAILED=-1
int32 SET_CONTROL_FORCE_FAILED=-2
int32 SET_FORCE_STIFFNESS_FAILED=-3
int32 SET_CARTESIAN_CONTROL_FAILED=-4
")



(provide :cartesian_impedance_msgs/ConfigureForceControl "cf3ce9f3d61d188954ed294028d91e13")


