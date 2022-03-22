;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::MaxCartesianVelocity)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'MaxCartesianVelocity (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::MAXCARTESIANVELOCITY")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::MAXCARTESIANVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude MaxCartesianVelocity.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartesian_impedance_msgs::MaxCartesianVelocity
  :super ros::object
  :slots (_set ))

(defmethod cartesian_impedance_msgs::MaxCartesianVelocity
  (:init
   (&key
    ((:set __set) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _set __set)
   self)
  (:set
   (&rest __set)
   (if (keywordp (car __set))
       (send* _set __set)
     (progn
       (if __set (setq _set (car __set)))
       _set)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _set
    (send _set :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _set
       (send _set :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _set
     (send _set :deserialize buf ptr-) (incf ptr- (send _set :serialization-length))
   ;;
   self)
  )

(setf (get cartesian_impedance_msgs::MaxCartesianVelocity :md5sum-) "3d6d020ac62f3de71dbfd1b4ad0a7689")
(setf (get cartesian_impedance_msgs::MaxCartesianVelocity :datatype-) "cartesian_impedance_msgs/MaxCartesianVelocity")
(setf (get cartesian_impedance_msgs::MaxCartesianVelocity :definition-)
      "# parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance
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
")



(provide :cartesian_impedance_msgs/MaxCartesianVelocity "3d6d020ac62f3de71dbfd1b4ad0a7689")


