;; Auto-generated. Do not edit!


(when (boundp 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes)
  (if (not (find-package "CARTESIAN_IMPEDANCE_MSGS"))
    (make-package "CARTESIAN_IMPEDANCE_MSGS"))
  (shadow 'CartesianImpedanceErrorCodes (find-package "CARTESIAN_IMPEDANCE_MSGS")))
(unless (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES")
  (make-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))

(in-package "ROS")
;;//! \htmlinclude CartesianImpedanceErrorCodes.msg.html


(intern "*SUCCESS*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*SUCCESS* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SUCCESS* 1)
(intern "*FAILURE*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*FAILURE* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*FAILURE* 99999)
(intern "*SET_STIFFNESS_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*SET_STIFFNESS_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_STIFFNESS_FAILED* -1)
(intern "*SET_DAMPING_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*SET_DAMPING_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_DAMPING_FAILED* -2)
(intern "*SET_MAX_CARTESIAN_VELOCITY_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*SET_MAX_CARTESIAN_VELOCITY_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_MAX_CARTESIAN_VELOCITY_FAILED* -3)
(intern "*SET_MAX_CONTROL_FORCE_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*SET_MAX_CONTROL_FORCE_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_MAX_CONTROL_FORCE_FAILED* -4)
(intern "*SET_MAX_PATH_DEVIATION*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*SET_MAX_PATH_DEVIATION* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_MAX_PATH_DEVIATION* -5)
(intern "*SET_NULL_SPACE_PARAMETERS_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*SET_NULL_SPACE_PARAMETERS_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_NULL_SPACE_PARAMETERS_FAILED* -6)
(intern "*SET_CARTESIAN_CONTROL_FAILED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*SET_CARTESIAN_CONTROL_FAILED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_CARTESIAN_CONTROL_FAILED* -7)
(intern "*TIMED_OUT*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*TIMED_OUT* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*TIMED_OUT* -8)
(intern "*PREEMPTED*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*PREEMPTED* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*PREEMPTED* -9)
(intern "*NO_VALID_LOAD_DATA_SET*" (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(shadow '*NO_VALID_LOAD_DATA_SET* (find-package "CARTESIAN_IMPEDANCE_MSGS::CARTESIANIMPEDANCEERRORCODES"))
(defconstant cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*NO_VALID_LOAD_DATA_SET* -10)

(defun cartesian_impedance_msgs::CartesianImpedanceErrorCodes-to-symbol (const)
  (cond
        ((= const 1) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SUCCESS*)
        ((= const 99999) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*FAILURE*)
        ((= const -1) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_STIFFNESS_FAILED*)
        ((= const -2) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_DAMPING_FAILED*)
        ((= const -3) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_MAX_CARTESIAN_VELOCITY_FAILED*)
        ((= const -4) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_MAX_CONTROL_FORCE_FAILED*)
        ((= const -5) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_MAX_PATH_DEVIATION*)
        ((= const -6) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_NULL_SPACE_PARAMETERS_FAILED*)
        ((= const -7) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*SET_CARTESIAN_CONTROL_FAILED*)
        ((= const -8) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*TIMED_OUT*)
        ((= const -9) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*PREEMPTED*)
        ((= const -10) 'cartesian_impedance_msgs::CartesianImpedanceErrorCodes::*NO_VALID_LOAD_DATA_SET*)
        (t nil)))

(defclass cartesian_impedance_msgs::CartesianImpedanceErrorCodes
  :super ros::object
  :slots ())

(defmethod cartesian_impedance_msgs::CartesianImpedanceErrorCodes
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

(setf (get cartesian_impedance_msgs::CartesianImpedanceErrorCodes :md5sum-) "ebce641c819a67590ce717bdb7c4731b")
(setf (get cartesian_impedance_msgs::CartesianImpedanceErrorCodes :datatype-) "cartesian_impedance_msgs/CartesianImpedanceErrorCodes")
(setf (get cartesian_impedance_msgs::CartesianImpedanceErrorCodes :definition-)
      "# overall behavior
int32 SUCCESS=1
int32 FAILURE=99999

int32 SET_STIFFNESS_FAILED=-1
int32 SET_DAMPING_FAILED=-2
int32 SET_MAX_CARTESIAN_VELOCITY_FAILED=-3
int32 SET_MAX_CONTROL_FORCE_FAILED=-4
int32 SET_MAX_PATH_DEVIATION=-5
int32 SET_NULL_SPACE_PARAMETERS_FAILED = -6
int32 SET_CARTESIAN_CONTROL_FAILED=-7
int32 TIMED_OUT=-8
int32 PREEMPTED=-9

# these parameters are set for the load and center of gravity of the end-effector when we have tool attached to it
# It is important to set the right parameters for tool mass and center of gravity because in that way the robot can
# recalculate the torques necessary to be in gravity compensation or apply constant force when in force control
int32 NO_VALID_LOAD_DATA_SET=-10

")



(provide :cartesian_impedance_msgs/CartesianImpedanceErrorCodes "ebce641c819a67590ce717bdb7c4731b")


