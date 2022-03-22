;; Auto-generated. Do not edit!


(when (boundp 'robot_hw_interface::ToolUpdate)
  (if (not (find-package "ROBOT_HW_INTERFACE"))
    (make-package "ROBOT_HW_INTERFACE"))
  (shadow 'ToolUpdate (find-package "ROBOT_HW_INTERFACE")))
(unless (find-package "ROBOT_HW_INTERFACE::TOOLUPDATE")
  (make-package "ROBOT_HW_INTERFACE::TOOLUPDATE"))

(in-package "ROS")
;;//! \htmlinclude ToolUpdate.msg.html


(defclass robot_hw_interface::ToolUpdate
  :super ros::object
  :slots (_water_pump _toilet_brush ))

(defmethod robot_hw_interface::ToolUpdate
  (:init
   (&key
    ((:water_pump __water_pump) (instance robot_hw_interface::WaterPump :init))
    ((:toilet_brush __toilet_brush) (instance robot_hw_interface::ToiletBrush :init))
    )
   (send-super :init)
   (setq _water_pump __water_pump)
   (setq _toilet_brush __toilet_brush)
   self)
  (:water_pump
   (&rest __water_pump)
   (if (keywordp (car __water_pump))
       (send* _water_pump __water_pump)
     (progn
       (if __water_pump (setq _water_pump (car __water_pump)))
       _water_pump)))
  (:toilet_brush
   (&rest __toilet_brush)
   (if (keywordp (car __toilet_brush))
       (send* _toilet_brush __toilet_brush)
     (progn
       (if __toilet_brush (setq _toilet_brush (car __toilet_brush)))
       _toilet_brush)))
  (:serialization-length
   ()
   (+
    ;; robot_hw_interface/WaterPump _water_pump
    (send _water_pump :serialization-length)
    ;; robot_hw_interface/ToiletBrush _toilet_brush
    (send _toilet_brush :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_hw_interface/WaterPump _water_pump
       (send _water_pump :serialize s)
     ;; robot_hw_interface/ToiletBrush _toilet_brush
       (send _toilet_brush :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_hw_interface/WaterPump _water_pump
     (send _water_pump :deserialize buf ptr-) (incf ptr- (send _water_pump :serialization-length))
   ;; robot_hw_interface/ToiletBrush _toilet_brush
     (send _toilet_brush :deserialize buf ptr-) (incf ptr- (send _toilet_brush :serialization-length))
   ;;
   self)
  )

(setf (get robot_hw_interface::ToolUpdate :md5sum-) "9d03c3706e095d719dab6e015f4f6e19")
(setf (get robot_hw_interface::ToolUpdate :datatype-) "robot_hw_interface/ToolUpdate")
(setf (get robot_hw_interface::ToolUpdate :definition-)
      "WaterPump water_pump
ToiletBrush toilet_brush
================================================================================
MSG: robot_hw_interface/WaterPump
bool water_pump_status
int32 speed
================================================================================
MSG: robot_hw_interface/ToiletBrush
bool brush_lock_status
int32 motor_speed

")



(provide :robot_hw_interface/ToolUpdate "9d03c3706e095d719dab6e015f4f6e19")


