;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::MaxCtrlForceExceeded)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'MaxCtrlForceExceeded (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::MAXCTRLFORCEEXCEEDED")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::MAXCTRLFORCEEXCEEDED"))

(in-package "ROS")
;;//! \htmlinclude MaxCtrlForceExceeded.msg.html


(defclass cartesian_impedance_msgs::MaxCtrlForceExceeded
  :super ros::object
  :slots (_stop _gravity_compensation _move_away ))

(defmethod cartesian_impedance_msgs::MaxCtrlForceExceeded
  (:init
   (&key
    ((:stop __stop) nil)
    ((:gravity_compensation __gravity_compensation) nil)
    ((:move_away __move_away) nil)
    )
   (send-super :init)
   (setq _stop __stop)
   (setq _gravity_compensation __gravity_compensation)
   (setq _move_away __move_away)
   self)
  (:stop
   (&optional (__stop :null))
   (if (not (eq __stop :null)) (setq _stop __stop)) _stop)
  (:gravity_compensation
   (&optional (__gravity_compensation :null))
   (if (not (eq __gravity_compensation :null)) (setq _gravity_compensation __gravity_compensation)) _gravity_compensation)
  (:move_away
   (&optional (__move_away :null))
   (if (not (eq __move_away :null)) (setq _move_away __move_away)) _move_away)
  (:serialization-length
   ()
   (+
    ;; bool _stop
    1
    ;; bool _gravity_compensation
    1
    ;; bool _move_away
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _gravity_compensation
       (if _gravity_compensation (write-byte -1 s) (write-byte 0 s))
     ;; bool _move_away
       (if _move_away (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gravity_compensation
     (setq _gravity_compensation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _move_away
     (setq _move_away (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cartesian_impedance_msgs::MaxCtrlForceExceeded :md5sum-) "f6ac6c0e9102c9975ab762de235b8e60")
(setf (get cartesian_impedance_msgs::MaxCtrlForceExceeded :datatype-) "cartesian_impedance_msgs/MaxCtrlForceExceeded")
(setf (get cartesian_impedance_msgs::MaxCtrlForceExceeded :definition-)
      "# Message for handling different actions if the end-effector
# exceeds maximum force set in the Cartesian Impedance parameters

bool stop
bool gravity_compensation
bool move_away

")



(provide :cartesian_impedance_msgs/MaxCtrlForceExceeded "f6ac6c0e9102c9975ab762de235b8e60")


