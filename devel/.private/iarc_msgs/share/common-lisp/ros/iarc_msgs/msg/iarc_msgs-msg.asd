
(cl:in-package :asdf)

(defsystem "iarc_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Command" :depends-on ("_package_Command"))
    (:file "_package_Command" :depends-on ("_package"))
    (:file "GetData" :depends-on ("_package_GetData"))
    (:file "_package_GetData" :depends-on ("_package"))
    (:file "MissionState" :depends-on ("_package_MissionState"))
    (:file "_package_MissionState" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "Pwm" :depends-on ("_package_Pwm"))
    (:file "_package_Pwm" :depends-on ("_package"))
    (:file "QRCode" :depends-on ("_package_QRCode"))
    (:file "_package_QRCode" :depends-on ("_package"))
    (:file "QRMatrix" :depends-on ("_package_QRMatrix"))
    (:file "_package_QRMatrix" :depends-on ("_package"))
    (:file "QuadState" :depends-on ("_package_QuadState"))
    (:file "_package_QuadState" :depends-on ("_package"))
    (:file "QuadVelocity" :depends-on ("_package_QuadVelocity"))
    (:file "_package_QuadVelocity" :depends-on ("_package"))
    (:file "RoiPos" :depends-on ("_package_RoiPos"))
    (:file "_package_RoiPos" :depends-on ("_package"))
    (:file "Start_Cure" :depends-on ("_package_Start_Cure"))
    (:file "_package_Start_Cure" :depends-on ("_package"))
    (:file "Start_QRScan" :depends-on ("_package_Start_QRScan"))
    (:file "_package_Start_QRScan" :depends-on ("_package"))
  ))