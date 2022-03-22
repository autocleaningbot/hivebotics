;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::MaxControlForce)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'MaxControlForce (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::MAXCONTROLFORCE")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::MAXCONTROLFORCE"))

(in-package "ROS")
;;//! \htmlinclude MaxControlForce.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartesian_impedance_msgs::MaxControlForce
  :super ros::object
  :slots (_set _exceeded_action ))

(defmethod cartesian_impedance_msgs::MaxControlForce
  (:init
   (&key
    ((:set __set) (instance geometry_msgs::Wrench :init))
    ((:exceeded_action __exceeded_action) (instance cartesian_impedance_msgs::MaxCtrlForceExceeded :init))
    )
   (send-super :init)
   (setq _set __set)
   (setq _exceeded_action __exceeded_action)
   self)
  (:set
   (&rest __set)
   (if (keywordp (car __set))
       (send* _set __set)
     (progn
       (if __set (setq _set (car __set)))
       _set)))
  (:exceeded_action
   (&rest __exceeded_action)
   (if (keywordp (car __exceeded_action))
       (send* _exceeded_action __exceeded_action)
     (progn
       (if __exceeded_action (setq _exceeded_action (car __exceeded_action)))
       _exceeded_action)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Wrench _set
    (send _set :serialization-length)
    ;; cartesian_impedance_msgs/MaxCtrlForceExceeded _exceeded_action
    (send _exceeded_action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Wrench _set
       (send _set :serialize s)
     ;; cartesian_impedance_msgs/MaxCtrlForceExceeded _exceeded_action
       (send _exceeded_action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Wrench _set
     (send _set :deserialize buf ptr-) (incf ptr- (send _set :serialization-length))
   ;; cartesian_impedance_msgs/MaxCtrlForceExceeded _exceeded_action
     (send _exceeded_action :deserialize buf ptr-) (incf ptr- (send _exceeded_action :serialization-length))
   ;;
   self)
  )

(setf (get cartesian_impedance_msgs::MaxControlForce :md5sum-) "8d951f2d20cd888c5cd46241c4bebaba")
(setf (get cartesian_impedance_msgs::MaxControlForce :datatype-) "cartesian_impedance_msgs/MaxControlForce")
(setf (get cartesian_impedance_msgs::MaxControlForce :definition-)
      "# parameters for Maximum allowed Cartesian Force when in Cartesian Impedance
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
MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded
# Message for handling different actions if the end-effector
# exceeds maximum force set in the Cartesian Impedance parameters

bool stop
bool gravity_compensation
bool move_away

")



(provide :cartesian_impedance_msgs/MaxControlForce "8d951f2d20cd888c5cd46241c4bebaba")


