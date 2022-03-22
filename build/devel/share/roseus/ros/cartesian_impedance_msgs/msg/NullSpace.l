;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::NullSpace)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'NullSpace (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::NULLSPACE")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::NULLSPACE"))

(in-package "ROS")
;;//! \htmlinclude NullSpace.msg.html


(defclass cartesian_impedance_msgs::NullSpace
  :super ros::object
  :slots (_link_names _stiffness _damping ))

(defmethod cartesian_impedance_msgs::NullSpace
  (:init
   (&key
    ((:link_names __link_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:stiffness __stiffness) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:damping __damping) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _link_names __link_names)
   (setq _stiffness __stiffness)
   (setq _damping __damping)
   self)
  (:link_names
   (&optional __link_names)
   (if __link_names (setq _link_names __link_names)) _link_names)
  (:stiffness
   (&optional __stiffness)
   (if __stiffness (setq _stiffness __stiffness)) _stiffness)
  (:damping
   (&optional __damping)
   (if __damping (setq _damping __damping)) _damping)
  (:serialization-length
   ()
   (+
    ;; string[] _link_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _link_names)) 4
    ;; float64[] _stiffness
    (* 8    (length _stiffness)) 4
    ;; float64[] _damping
    (* 8    (length _damping)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _link_names
     (write-long (length _link_names) s)
     (dolist (elem _link_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _stiffness
     (write-long (length _stiffness) s)
     (dotimes (i (length _stiffness))
       (sys::poke (elt _stiffness i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _damping
     (write-long (length _damping) s)
     (dotimes (i (length _damping))
       (sys::poke (elt _damping i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _link_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _link_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _stiffness
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stiffness (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _stiffness i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _damping
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _damping (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _damping i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get cartesian_impedance_msgs::NullSpace :md5sum-) "09af4246cba0b182d004ca8ea38f9880")
(setf (get cartesian_impedance_msgs::NullSpace :datatype-) "cartesian_impedance_msgs/NullSpace")
(setf (get cartesian_impedance_msgs::NullSpace :definition-)
      "# parameters for a redundant joint of the robot when in Cartesian Impedance
# the values are divided into translational and rotational
# each of the translational and rotational components is defined as Float64

# Kinematically, the manipulator's null space describes the motions
# the arm can make that don't move the end effector, known shorthand as \"self-motion\";
# for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.
# The range of self-motion for a manipulator is a mathematically well defined space.
# Khatib et al., 1987

string[] link_names

# [Nm/rad] must be => 0.0
float64[] stiffness

# without unit: Lehr’s damping ratio
# must be between 0.3-1.0 suggested is 0.7
float64[] damping

")



(provide :cartesian_impedance_msgs/NullSpace "09af4246cba0b182d004ca8ea38f9880")


