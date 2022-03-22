;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::CartesianDamping)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'CartesianDamping (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANDAMPING")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANDAMPING"))

(in-package "ROS")
;;//! \htmlinclude CartesianDamping.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartesian_impedance_msgs::CartesianDamping
  :super ros::object
  :slots (_translational _rotational ))

(defmethod cartesian_impedance_msgs::CartesianDamping
  (:init
   (&key
    ((:translational __translational) (instance geometry_msgs::Vector3 :init))
    ((:rotational __rotational) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _translational __translational)
   (setq _rotational __rotational)
   self)
  (:translational
   (&rest __translational)
   (if (keywordp (car __translational))
       (send* _translational __translational)
     (progn
       (if __translational (setq _translational (car __translational)))
       _translational)))
  (:rotational
   (&rest __rotational)
   (if (keywordp (car __rotational))
       (send* _rotational __rotational)
     (progn
       (if __rotational (setq _rotational (car __rotational)))
       _rotational)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _translational
    (send _translational :serialization-length)
    ;; geometry_msgs/Vector3 _rotational
    (send _rotational :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _translational
       (send _translational :serialize s)
     ;; geometry_msgs/Vector3 _rotational
       (send _rotational :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _translational
     (send _translational :deserialize buf ptr-) (incf ptr- (send _translational :serialization-length))
   ;; geometry_msgs/Vector3 _rotational
     (send _rotational :deserialize buf ptr-) (incf ptr- (send _rotational :serialization-length))
   ;;
   self)
  )

(setf (get cartesian_impedance_msgs::CartesianDamping :md5sum-) "866c599e7e51951dfb12da14910fd482")
(setf (get cartesian_impedance_msgs::CartesianDamping :datatype-) "cartesian_impedance_msgs/CartesianDamping")
(setf (get cartesian_impedance_msgs::CartesianDamping :definition-)
      "# Damping parameters for the Cartesian Impedance
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



(provide :cartesian_impedance_msgs/CartesianDamping "866c599e7e51951dfb12da14910fd482")


