;; Auto-generated. Do not edit!


(when (boundp 'robot_hw_interface::LinearActuatorPose)
  (if (not (find-package "ROBOT_HW_INTERFACE"))
    (make-package "ROBOT_HW_INTERFACE"))
  (shadow 'LinearActuatorPose (find-package "ROBOT_HW_INTERFACE")))
(unless (find-package "ROBOT_HW_INTERFACE::LINEARACTUATORPOSE")
  (make-package "ROBOT_HW_INTERFACE::LINEARACTUATORPOSE"))

(in-package "ROS")
;;//! \htmlinclude LinearActuatorPose.msg.html


(defclass robot_hw_interface::LinearActuatorPose
  :super ros::object
  :slots (_targetPos _speed ))

(defmethod robot_hw_interface::LinearActuatorPose
  (:init
   (&key
    ((:targetPos __targetPos) 0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _targetPos (round __targetPos))
   (setq _speed (round __speed))
   self)
  (:targetPos
   (&optional __targetPos)
   (if __targetPos (setq _targetPos __targetPos)) _targetPos)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int32 _targetPos
    4
    ;; int32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _targetPos
       (write-long _targetPos s)
     ;; int32 _speed
       (write-long _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _targetPos
     (setq _targetPos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_hw_interface::LinearActuatorPose :md5sum-) "16c889283f8cdf9d34c6303b6c5d3692")
(setf (get robot_hw_interface::LinearActuatorPose :datatype-) "robot_hw_interface/LinearActuatorPose")
(setf (get robot_hw_interface::LinearActuatorPose :definition-)
      "int32 targetPos
int32 speed
")



(provide :robot_hw_interface/LinearActuatorPose "16c889283f8cdf9d34c6303b6c5d3692")


