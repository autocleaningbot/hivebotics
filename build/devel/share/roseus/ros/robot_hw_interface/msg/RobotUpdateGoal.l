;; Auto-generated. Do not edit!


(when (boundp 'robot_hw_interface::RobotUpdateGoal)
  (if (not (find-package "ROBOT_HW_INTERFACE"))
    (make-package "ROBOT_HW_INTERFACE"))
  (shadow 'RobotUpdateGoal (find-package "ROBOT_HW_INTERFACE")))
(unless (find-package "ROBOT_HW_INTERFACE::ROBOTUPDATEGOAL")
  (make-package "ROBOT_HW_INTERFACE::ROBOTUPDATEGOAL"))

(in-package "ROS")
;;//! \htmlinclude RobotUpdateGoal.msg.html


(defclass robot_hw_interface::RobotUpdateGoal
  :super ros::object
  :slots (_cmd _mycobot_angles _la_pose _tool_state ))

(defmethod robot_hw_interface::RobotUpdateGoal
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:mycobot_angles __mycobot_angles) (instance robot_hw_interface::MycobotAngles :init))
    ((:la_pose __la_pose) (instance robot_hw_interface::LinearActuatorPose :init))
    ((:tool_state __tool_state) (instance robot_hw_interface::ToolUpdate :init))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _mycobot_angles __mycobot_angles)
   (setq _la_pose __la_pose)
   (setq _tool_state __tool_state)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:mycobot_angles
   (&rest __mycobot_angles)
   (if (keywordp (car __mycobot_angles))
       (send* _mycobot_angles __mycobot_angles)
     (progn
       (if __mycobot_angles (setq _mycobot_angles (car __mycobot_angles)))
       _mycobot_angles)))
  (:la_pose
   (&rest __la_pose)
   (if (keywordp (car __la_pose))
       (send* _la_pose __la_pose)
     (progn
       (if __la_pose (setq _la_pose (car __la_pose)))
       _la_pose)))
  (:tool_state
   (&rest __tool_state)
   (if (keywordp (car __tool_state))
       (send* _tool_state __tool_state)
     (progn
       (if __tool_state (setq _tool_state (car __tool_state)))
       _tool_state)))
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ;; robot_hw_interface/MycobotAngles _mycobot_angles
    (send _mycobot_angles :serialization-length)
    ;; robot_hw_interface/LinearActuatorPose _la_pose
    (send _la_pose :serialization-length)
    ;; robot_hw_interface/ToolUpdate _tool_state
    (send _tool_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; robot_hw_interface/MycobotAngles _mycobot_angles
       (send _mycobot_angles :serialize s)
     ;; robot_hw_interface/LinearActuatorPose _la_pose
       (send _la_pose :serialize s)
     ;; robot_hw_interface/ToolUpdate _tool_state
       (send _tool_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; robot_hw_interface/MycobotAngles _mycobot_angles
     (send _mycobot_angles :deserialize buf ptr-) (incf ptr- (send _mycobot_angles :serialization-length))
   ;; robot_hw_interface/LinearActuatorPose _la_pose
     (send _la_pose :deserialize buf ptr-) (incf ptr- (send _la_pose :serialization-length))
   ;; robot_hw_interface/ToolUpdate _tool_state
     (send _tool_state :deserialize buf ptr-) (incf ptr- (send _tool_state :serialization-length))
   ;;
   self)
  )

(setf (get robot_hw_interface::RobotUpdateGoal :md5sum-) "9e86d241827f5238543928ccdf631b1b")
(setf (get robot_hw_interface::RobotUpdateGoal :datatype-) "robot_hw_interface/RobotUpdateGoal")
(setf (get robot_hw_interface::RobotUpdateGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Goal
# 
# The system has 2 types of commands 
# 1: arm_actuator_command 2: tool_command (water pump, solenoid valve, dc motor)

int32 cmd
MycobotAngles mycobot_angles
LinearActuatorPose la_pose
ToolUpdate tool_state

================================================================================
MSG: robot_hw_interface/MycobotAngles
float32 joint_1
float32 joint_2
float32 joint_3
float32 joint_4
float32 joint_5
float32 joint_6

int8 speed
================================================================================
MSG: robot_hw_interface/LinearActuatorPose
int32 targetPos
int32 speed
================================================================================
MSG: robot_hw_interface/ToolUpdate
WaterPump water_pump
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



(provide :robot_hw_interface/RobotUpdateGoal "9e86d241827f5238543928ccdf631b1b")

