
(cl:in-package :asdf)

(defsystem "abluo_1_communication-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmMotionGroupAction" :depends-on ("_package_ArmMotionGroupAction"))
    (:file "_package_ArmMotionGroupAction" :depends-on ("_package"))
    (:file "ArmMotionGroupActionFeedback" :depends-on ("_package_ArmMotionGroupActionFeedback"))
    (:file "_package_ArmMotionGroupActionFeedback" :depends-on ("_package"))
    (:file "ArmMotionGroupActionGoal" :depends-on ("_package_ArmMotionGroupActionGoal"))
    (:file "_package_ArmMotionGroupActionGoal" :depends-on ("_package"))
    (:file "ArmMotionGroupActionResult" :depends-on ("_package_ArmMotionGroupActionResult"))
    (:file "_package_ArmMotionGroupActionResult" :depends-on ("_package"))
    (:file "ArmMotionGroupFeedback" :depends-on ("_package_ArmMotionGroupFeedback"))
    (:file "_package_ArmMotionGroupFeedback" :depends-on ("_package"))
    (:file "ArmMotionGroupGoal" :depends-on ("_package_ArmMotionGroupGoal"))
    (:file "_package_ArmMotionGroupGoal" :depends-on ("_package"))
    (:file "ArmMotionGroupResult" :depends-on ("_package_ArmMotionGroupResult"))
    (:file "_package_ArmMotionGroupResult" :depends-on ("_package"))
  ))