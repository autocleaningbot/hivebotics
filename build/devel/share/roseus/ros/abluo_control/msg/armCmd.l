;; Auto-generated. Do not edit!


(when (boundp 'abluo_control::armCmd)
  (if (not (find-package "ABLUO_CONTROL"))
    (make-package "ABLUO_CONTROL"))
  (shadow 'armCmd (find-package "ABLUO_CONTROL")))
(unless (find-package "ABLUO_CONTROL::ARMCMD")
  (make-package "ABLUO_CONTROL::ARMCMD"))

(in-package "ROS")
;;//! \htmlinclude armCmd.msg.html


(defclass abluo_control::armCmd
  :super ros::object
  :slots (_lin_act_pos _lin_act_vel _joint_pos _joint_vel ))

(defmethod abluo_control::armCmd
  (:init
   (&key
    ((:lin_act_pos __lin_act_pos) 0.0)
    ((:lin_act_vel __lin_act_vel) 0.0)
    ((:joint_pos __joint_pos) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:joint_vel __joint_vel) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _lin_act_pos (float __lin_act_pos))
   (setq _lin_act_vel (float __lin_act_vel))
   (setq _joint_pos __joint_pos)
   (setq _joint_vel __joint_vel)
   self)
  (:lin_act_pos
   (&optional __lin_act_pos)
   (if __lin_act_pos (setq _lin_act_pos __lin_act_pos)) _lin_act_pos)
  (:lin_act_vel
   (&optional __lin_act_vel)
   (if __lin_act_vel (setq _lin_act_vel __lin_act_vel)) _lin_act_vel)
  (:joint_pos
   (&optional __joint_pos)
   (if __joint_pos (setq _joint_pos __joint_pos)) _joint_pos)
  (:joint_vel
   (&optional __joint_vel)
   (if __joint_vel (setq _joint_vel __joint_vel)) _joint_vel)
  (:serialization-length
   ()
   (+
    ;; float32 _lin_act_pos
    4
    ;; float32 _lin_act_vel
    4
    ;; float32[6] _joint_pos
    (* 4    6)
    ;; float32[6] _joint_vel
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lin_act_pos
       (sys::poke _lin_act_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lin_act_vel
       (sys::poke _lin_act_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[6] _joint_pos
     (dotimes (i 6)
       (sys::poke (elt _joint_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _joint_vel
     (dotimes (i 6)
       (sys::poke (elt _joint_vel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lin_act_pos
     (setq _lin_act_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lin_act_vel
     (setq _lin_act_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[6] _joint_pos
   (dotimes (i (length _joint_pos))
     (setf (elt _joint_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _joint_vel
   (dotimes (i (length _joint_vel))
     (setf (elt _joint_vel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get abluo_control::armCmd :md5sum-) "be46fb345c061067c53d8d4d84c44a87")
(setf (get abluo_control::armCmd :datatype-) "abluo_control/armCmd")
(setf (get abluo_control::armCmd :definition-)
      "float32 lin_act_pos #val
float32 lin_act_vel
float32[6] joint_pos #degrees
float32[6] joint_vel #deg/s
# uint32 msg_ctr # count sent msgs to detected missed messages
")



(provide :abluo_control/armCmd "be46fb345c061067c53d8d4d84c44a87")


