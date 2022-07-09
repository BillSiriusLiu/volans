
(cl:in-package :asdf)

(defsystem "iarc_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HandSignal" :depends-on ("_package_HandSignal"))
    (:file "_package_HandSignal" :depends-on ("_package"))
    (:file "SendCommand" :depends-on ("_package_SendCommand"))
    (:file "_package_SendCommand" :depends-on ("_package"))
    (:file "SendPose" :depends-on ("_package_SendPose"))
    (:file "_package_SendPose" :depends-on ("_package"))
    (:file "SendQRCode" :depends-on ("_package_SendQRCode"))
    (:file "_package_SendQRCode" :depends-on ("_package"))
    (:file "SendQRMatrix" :depends-on ("_package_SendQRMatrix"))
    (:file "_package_SendQRMatrix" :depends-on ("_package"))
    (:file "StartCure" :depends-on ("_package_StartCure"))
    (:file "_package_StartCure" :depends-on ("_package"))
  ))