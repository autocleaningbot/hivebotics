
(cl:in-package :asdf)

(defsystem "abluo_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "abluoTelemetry" :depends-on ("_package_abluoTelemetry"))
    (:file "_package_abluoTelemetry" :depends-on ("_package"))
    (:file "armCmd" :depends-on ("_package_armCmd"))
    (:file "_package_armCmd" :depends-on ("_package"))
  ))