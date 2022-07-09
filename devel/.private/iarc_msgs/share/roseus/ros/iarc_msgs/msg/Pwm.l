;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::Pwm)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'Pwm (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::PWM")
  (make-package "IARC_MSGS::PWM"))

(in-package "ROS")
;;//! \htmlinclude Pwm.msg.html


(defclass iarc_msgs::Pwm
  :super ros::object
  :slots (_roll _pitch _yaw ))

(defmethod iarc_msgs::Pwm
  (:init
   (&key
    ((:roll __roll) 0)
    ((:pitch __pitch) 0)
    ((:yaw __yaw) 0)
    )
   (send-super :init)
   (setq _roll (round __roll))
   (setq _pitch (round __pitch))
   (setq _yaw (round __yaw))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; int16 _roll
    2
    ;; int16 _pitch
    2
    ;; int16 _yaw
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _roll
       (write-word _roll s)
     ;; int16 _pitch
       (write-word _pitch s)
     ;; int16 _yaw
       (write-word _yaw s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _roll
     (setq _roll (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pitch
     (setq _pitch (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _yaw
     (setq _yaw (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get iarc_msgs::Pwm :md5sum-) "4bb90c46f846e8a977ec5c9f53409803")
(setf (get iarc_msgs::Pwm :datatype-) "iarc_msgs/Pwm")
(setf (get iarc_msgs::Pwm :definition-)
      "int16 roll
int16 pitch
int16 yaw

")



(provide :iarc_msgs/Pwm "4bb90c46f846e8a977ec5c9f53409803")


