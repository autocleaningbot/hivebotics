;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::SetCartesianForceCtrl)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'SetCartesianForceCtrl (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::SETCARTESIANFORCECTRL")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::SETCARTESIANFORCECTRL"))

(in-package "ROS")
;;//! \htmlinclude SetCartesianForceCtrl.msg.html


(defclass cartesian_impedance_msgs::SetCartesianForceCtrl
  :super ros::object
  :slots (_DOF _force _stiffness ))

(defmethod cartesian_impedance_msgs::SetCartesianForceCtrl
  (:init
   (&key
    ((:DOF __DOF) "")
    ((:force __force) 0.0)
    ((:stiffness __stiffness) 0.0)
    )
   (send-super :init)
   (setq _DOF (string __DOF))
   (setq _force (float __force))
   (setq _stiffness (float __stiffness))
   self)
  (:DOF
   (&optional __DOF)
   (if __DOF (setq _DOF __DOF)) _DOF)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:stiffness
   (&optional __stiffness)
   (if __stiffness (setq _stiffness __stiffness)) _stiffness)
  (:serialization-length
   ()
   (+
    ;; string _DOF
    4 (length _DOF)
    ;; float64 _force
    8
    ;; float64 _stiffness
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _DOF
       (write-long (length _DOF) s) (princ _DOF s)
     ;; float64 _force
       (sys::poke _force (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _stiffness
       (sys::poke _stiffness (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _DOF
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _DOF (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _force
     (setq _force (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _stiffness
     (setq _stiffness (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cartesian_impedance_msgs::SetCartesianForceCtrl :md5sum-) "f4f7772e7871d1a624600d97bd177326")
(setf (get cartesian_impedance_msgs::SetCartesianForceCtrl :datatype-) "cartesian_impedance_msgs/SetCartesianForceCtrl")
(setf (get cartesian_impedance_msgs::SetCartesianForceCtrl :definition-)
      "#this is the axis we want the robot to exert constant force.
string DOF
#the amount of force that the end effector needs to apply in the selected DOF
float64 force
#set the stiffness of that DOF
float64 stiffness

")



(provide :cartesian_impedance_msgs/SetCartesianForceCtrl "f4f7772e7871d1a624600d97bd177326")


