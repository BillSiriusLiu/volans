;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::Start_Cure)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'Start_Cure (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::START_CURE")
  (make-package "IARC_MSGS::START_CURE"))

(in-package "ROS")
;;//! \htmlinclude Start_Cure.msg.html


(defclass iarc_msgs::Start_Cure
  :super ros::object
  :slots (_start_cure ))

(defmethod iarc_msgs::Start_Cure
  (:init
   (&key
    ((:start_cure __start_cure) 0)
    )
   (send-super :init)
   (setq _start_cure (round __start_cure))
   self)
  (:start_cure
   (&optional __start_cure)
   (if __start_cure (setq _start_cure __start_cure)) _start_cure)
  (:serialization-length
   ()
   (+
    ;; int8 _start_cure
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _start_cure
       (write-byte _start_cure s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _start_cure
     (setq _start_cure (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _start_cure 127) (setq _start_cure (- _start_cure 256)))
   ;;
   self)
  )

(setf (get iarc_msgs::Start_Cure :md5sum-) "12fc1e224eb302516363b13510ed18b4")
(setf (get iarc_msgs::Start_Cure :datatype-) "iarc_msgs/Start_Cure")
(setf (get iarc_msgs::Start_Cure :definition-)
      "int8 start_cure

")



(provide :iarc_msgs/Start_Cure "12fc1e224eb302516363b13510ed18b4")


