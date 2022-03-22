;; Auto-generated. Do not edit!


(when (boundp 'robot_hw_interface::WaterPump)
  (if (not (find-package "ROBOT_HW_INTERFACE"))
    (make-package "ROBOT_HW_INTERFACE"))
  (shadow 'WaterPump (find-package "ROBOT_HW_INTERFACE")))
(unless (find-package "ROBOT_HW_INTERFACE::WATERPUMP")
  (make-package "ROBOT_HW_INTERFACE::WATERPUMP"))

(in-package "ROS")
;;//! \htmlinclude WaterPump.msg.html


(defclass robot_hw_interface::WaterPump
  :super ros::object
  :slots (_water_pump_status _speed ))

(defmethod robot_hw_interface::WaterPump
  (:init
   (&key
    ((:water_pump_status __water_pump_status) nil)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _water_pump_status __water_pump_status)
   (setq _speed (round __speed))
   self)
  (:water_pump_status
   (&optional (__water_pump_status :null))
   (if (not (eq __water_pump_status :null)) (setq _water_pump_status __water_pump_status)) _water_pump_status)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; bool _water_pump_status
    1
    ;; int32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _water_pump_status
       (if _water_pump_status (write-byte -1 s) (write-byte 0 s))
     ;; int32 _speed
       (write-long _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _water_pump_status
     (setq _water_pump_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_hw_interface::WaterPump :md5sum-) "447554c189b87b52f4dedae471bf506e")
(setf (get robot_hw_interface::WaterPump :datatype-) "robot_hw_interface/WaterPump")
(setf (get robot_hw_interface::WaterPump :definition-)
      "bool water_pump_status
int32 speed
")



(provide :robot_hw_interface/WaterPump "447554c189b87b52f4dedae471bf506e")


