;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::CartesianForceCtrlErrorCodes)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'CartesianForceCtrlErrorCodes (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))

(in-package "ROS")
;;//! \htmlinclude CartesianForceCtrlErrorCodes.msg.html


(intern "*SUCCESS*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(shadow '*SUCCESS* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SUCCESS* 1)
(intern "*FAILURE*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(shadow '*FAILURE* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*FAILURE* 99999)
(intern "*SET_DOF_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(shadow '*SET_DOF_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SET_DOF_FAILED* -1)
(intern "*SET_CONTROL_FORCE_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(shadow '*SET_CONTROL_FORCE_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SET_CONTROL_FORCE_FAILED* -2)
(intern "*SET_FORCE_STIFFNESS_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(shadow '*SET_FORCE_STIFFNESS_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SET_FORCE_STIFFNESS_FAILED* -3)
(intern "*SET_CARTESIAN_CONTROL_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(shadow '*SET_CARTESIAN_CONTROL_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANFORCECTRLERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SET_CARTESIAN_CONTROL_FAILED* -4)

(defun cartesian_impedance_msgs::CartesianForceCtrlErrorCodes-to-symbol (const)
  (cond
        ((= const 1) 'cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SUCCESS*)
        ((= const 99999) 'cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*FAILURE*)
        ((= const -1) 'cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SET_DOF_FAILED*)
        ((= const -2) 'cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SET_CONTROL_FORCE_FAILED*)
        ((= const -3) 'cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SET_FORCE_STIFFNESS_FAILED*)
        ((= const -4) 'cartesian_impedance_msgs::CartesianForceCtrlErrorCodes::*SET_CARTESIAN_CONTROL_FAILED*)
        (t nil)))

(defclass cartesian_impedance_msgs::CartesianForceCtrlErrorCodes
  :super ros::object
  :slots ())

(defmethod cartesian_impedance_msgs::CartesianForceCtrlErrorCodes
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get cartesian_impedance_msgs::CartesianForceCtrlErrorCodes :md5sum-) "cdde8ee10c2b3283bacb3975eed8bd74")
(setf (get cartesian_impedance_msgs::CartesianForceCtrlErrorCodes :datatype-) "cartesian_impedance_msgs/CartesianForceCtrlErrorCodes")
(setf (get cartesian_impedance_msgs::CartesianForceCtrlErrorCodes :definition-)
      "# overall behavior
int32 SUCCESS=1
int32 FAILURE=99999

int32 SET_DOF_FAILED=-1
int32 SET_CONTROL_FORCE_FAILED=-2
int32 SET_FORCE_STIFFNESS_FAILED=-3
int32 SET_CARTESIAN_CONTROL_FAILED=-4

")



(provide :cartesian_impedance_msgs/CartesianForceCtrlErrorCodes "cdde8ee10c2b3283bacb3975eed8bd74")


