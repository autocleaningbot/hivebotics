;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::MaxPathDeviation)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'MaxPathDeviation (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::MAXPATHDEVIATION")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::MAXPATHDEVIATION"))

(in-package "ROS")
;;//! \htmlinclude MaxPathDeviation.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartesian_impedance_msgs::MaxPathDeviation
  :super ros::object
  :slots (_translation _rotation ))

(defmethod cartesian_impedance_msgs::MaxPathDeviation
  (:init
   (&key
    ((:translation __translation) (instance geometry_msgs::Vector3 :init))
    ((:rotation __rotation) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _translation __translation)
   (setq _rotation __rotation)
   self)
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:rotation
   (&rest __rotation)
   (if (keywordp (car __rotation))
       (send* _rotation __rotation)
     (progn
       (if __rotation (setq _rotation (car __rotation)))
       _rotation)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _translation
    (send _translation :serialization-length)
    ;; geometry_msgs/Vector3 _rotation
    (send _rotation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _translation
       (send _translation :serialize s)
     ;; geometry_msgs/Vector3 _rotation
       (send _rotation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; geometry_msgs/Vector3 _rotation
     (send _rotation :deserialize buf ptr-) (incf ptr- (send _rotation :serialization-length))
   ;;
   self)
  )

(setf (get cartesian_impedance_msgs::MaxPathDeviation :md5sum-) "41357283b9b8994fb9ee581a91f76c5e")
(setf (get cartesian_impedance_msgs::MaxPathDeviation :datatype-) "cartesian_impedance_msgs/MaxPathDeviation")
(setf (get cartesian_impedance_msgs::MaxPathDeviation :definition-)
      "# parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Vector3

# maximum deviation from set goal in m
geometry_msgs/Vector3 translation

# maximum deviation from set goal in radians
geometry_msgs/Vector3 rotation

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



(provide :cartesian_impedance_msgs/MaxPathDeviation "41357283b9b8994fb9ee581a91f76c5e")


