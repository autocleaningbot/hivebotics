;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::SetCartesianImpedance)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'SetCartesianImpedance (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::SETCARTESIANIMPEDANCE")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::SETCARTESIANIMPEDANCE"))

(in-package "ROS")
;;//! \htmlinclude SetCartesianImpedance.msg.html


(defclass cartesian_impedance_msgs::SetCartesianImpedance
  :super ros::object
  :slots (_tool _stiffness _damping _max_cart_vel _max_ctrl_force _max_path_deviation _null_space_params ))

(defmethod cartesian_impedance_msgs::SetCartesianImpedance
  (:init
   (&key
    ((:tool __tool) "")
    ((:stiffness __stiffness) (instance cartesian_impedance_msgs::CartesianStiffness :init))
    ((:damping __damping) (instance cartesian_impedance_msgs::CartesianDamping :init))
    ((:max_cart_vel __max_cart_vel) (instance cartesian_impedance_msgs::MaxCartesianVelocity :init))
    ((:max_ctrl_force __max_ctrl_force) (instance cartesian_impedance_msgs::MaxControlForce :init))
    ((:max_path_deviation __max_path_deviation) (instance cartesian_impedance_msgs::MaxPathDeviation :init))
    ((:null_space_params __null_space_params) (instance cartesian_impedance_msgs::NullSpace :init))
    )
   (send-super :init)
   (setq _tool (string __tool))
   (setq _stiffness __stiffness)
   (setq _damping __damping)
   (setq _max_cart_vel __max_cart_vel)
   (setq _max_ctrl_force __max_ctrl_force)
   (setq _max_path_deviation __max_path_deviation)
   (setq _null_space_params __null_space_params)
   self)
  (:tool
   (&optional __tool)
   (if __tool (setq _tool __tool)) _tool)
  (:stiffness
   (&rest __stiffness)
   (if (keywordp (car __stiffness))
       (send* _stiffness __stiffness)
     (progn
       (if __stiffness (setq _stiffness (car __stiffness)))
       _stiffness)))
  (:damping
   (&rest __damping)
   (if (keywordp (car __damping))
       (send* _damping __damping)
     (progn
       (if __damping (setq _damping (car __damping)))
       _damping)))
  (:max_cart_vel
   (&rest __max_cart_vel)
   (if (keywordp (car __max_cart_vel))
       (send* _max_cart_vel __max_cart_vel)
     (progn
       (if __max_cart_vel (setq _max_cart_vel (car __max_cart_vel)))
       _max_cart_vel)))
  (:max_ctrl_force
   (&rest __max_ctrl_force)
   (if (keywordp (car __max_ctrl_force))
       (send* _max_ctrl_force __max_ctrl_force)
     (progn
       (if __max_ctrl_force (setq _max_ctrl_force (car __max_ctrl_force)))
       _max_ctrl_force)))
  (:max_path_deviation
   (&rest __max_path_deviation)
   (if (keywordp (car __max_path_deviation))
       (send* _max_path_deviation __max_path_deviation)
     (progn
       (if __max_path_deviation (setq _max_path_deviation (car __max_path_deviation)))
       _max_path_deviation)))
  (:null_space_params
   (&rest __null_space_params)
   (if (keywordp (car __null_space_params))
       (send* _null_space_params __null_space_params)
     (progn
       (if __null_space_params (setq _null_space_params (car __null_space_params)))
       _null_space_params)))
  (:serialization-length
   ()
   (+
    ;; string _tool
    4 (length _tool)
    ;; cartesian_impedance_msgs/CartesianStiffness _stiffness
    (send _stiffness :serialization-length)
    ;; cartesian_impedance_msgs/CartesianDamping _damping
    (send _damping :serialization-length)
    ;; cartesian_impedance_msgs/MaxCartesianVelocity _max_cart_vel
    (send _max_cart_vel :serialization-length)
    ;; cartesian_impedance_msgs/MaxControlForce _max_ctrl_force
    (send _max_ctrl_force :serialization-length)
    ;; cartesian_impedance_msgs/MaxPathDeviation _max_path_deviation
    (send _max_path_deviation :serialization-length)
    ;; cartesian_impedance_msgs/NullSpace _null_space_params
    (send _null_space_params :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tool
       (write-long (length _tool) s) (princ _tool s)
     ;; cartesian_impedance_msgs/CartesianStiffness _stiffness
       (send _stiffness :serialize s)
     ;; cartesian_impedance_msgs/CartesianDamping _damping
       (send _damping :serialize s)
     ;; cartesian_impedance_msgs/MaxCartesianVelocity _max_cart_vel
       (send _max_cart_vel :serialize s)
     ;; cartesian_impedance_msgs/MaxControlForce _max_ctrl_force
       (send _max_ctrl_force :serialize s)
     ;; cartesian_impedance_msgs/MaxPathDeviation _max_path_deviation
       (send _max_path_deviation :serialize s)
     ;; cartesian_impedance_msgs/NullSpace _null_space_params
       (send _null_space_params :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tool
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tool (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; cartesian_impedance_msgs/CartesianStiffness _stiffness
     (send _stiffness :deserialize buf ptr-) (incf ptr- (send _stiffness :serialization-length))
   ;; cartesian_impedance_msgs/CartesianDamping _damping
     (send _damping :deserialize buf ptr-) (incf ptr- (send _damping :serialization-length))
   ;; cartesian_impedance_msgs/MaxCartesianVelocity _max_cart_vel
     (send _max_cart_vel :deserialize buf ptr-) (incf ptr- (send _max_cart_vel :serialization-length))
   ;; cartesian_impedance_msgs/MaxControlForce _max_ctrl_force
     (send _max_ctrl_force :deserialize buf ptr-) (incf ptr- (send _max_ctrl_force :serialization-length))
   ;; cartesian_impedance_msgs/MaxPathDeviation _max_path_deviation
     (send _max_path_deviation :deserialize buf ptr-) (incf ptr- (send _max_path_deviation :serialization-length))
   ;; cartesian_impedance_msgs/NullSpace _null_space_params
     (send _null_space_params :deserialize buf ptr-) (incf ptr- (send _null_space_params :serialization-length))
   ;;
   self)
  )

(setf (get cartesian_impedance_msgs::SetCartesianImpedance :md5sum-) "b24937cc6fdd3861e00c0a10eecbfb67")
(setf (get cartesian_impedance_msgs::SetCartesianImpedance :datatype-) "cartesian_impedance_msgs/SetCartesianImpedance")
(setf (get cartesian_impedance_msgs::SetCartesianImpedance :definition-)
      "# Here we combine all the parameters message definitions into a single message
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

")



(provide :cartesian_impedance_msgs/SetCartesianImpedance "b24937cc6fdd3861e00c0a10eecbfb67")


