;; Auto-generated. Do not edit!


(when (boundp 'robot_hw_interface::ToiletBrush)
  (if (not (find-package "ROBOT_HW_INTERFACE"))
    (make-package "ROBOT_HW_INTERFACE"))
  (shadow 'ToiletBrush (find-package "ROBOT_HW_INTERFACE")))
(unless (find-package "ROBOT_HW_INTERFACE::TOILETBRUSH")
  (make-package "ROBOT_HW_INTERFACE::TOILETBRUSH"))

(in-package "ROS")
;;//! \htmlinclude ToiletBrush.msg.html


(defclass robot_hw_interface::ToiletBrush
  :super ros::object
  :slots (_brush_lock_status _motor_speed ))

(defmethod robot_hw_interface::ToiletBrush
  (:init
   (&key
    ((:brush_lock_status __brush_lock_status) nil)
    ((:motor_speed __motor_speed) 0)
    )
   (send-super :init)
   (setq _brush_lock_status __brush_lock_status)
   (setq _motor_speed (round __motor_speed))
   self)
  (:brush_lock_status
   (&optional (__brush_lock_status :null))
   (if (not (eq __brush_lock_status :null)) (setq _brush_lock_status __brush_lock_status)) _brush_lock_status)
  (:motor_speed
   (&optional __motor_speed)
   (if __motor_speed (setq _motor_speed __motor_speed)) _motor_speed)
  (:serialization-length
   ()
   (+
    ;; bool _brush_lock_status
    1
    ;; int32 _motor_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _brush_lock_status
       (if _brush_lock_status (write-byte -1 s) (write-byte 0 s))
     ;; int32 _motor_speed
       (write-long _motor_speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _brush_lock_status
     (setq _brush_lock_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _motor_speed
     (setq _motor_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_hw_interface::ToiletBrush :md5sum-) "6c569dc66f46b973be15ef66b1f2c87f")
(setf (get robot_hw_interface::ToiletBrush :datatype-) "robot_hw_interface/ToiletBrush")
(setf (get robot_hw_interface::ToiletBrush :definition-)
      "bool brush_lock_status
int32 motor_speed

")



(provide :robot_hw_interface/ToiletBrush "6c569dc66f46b973be15ef66b1f2c87f")


