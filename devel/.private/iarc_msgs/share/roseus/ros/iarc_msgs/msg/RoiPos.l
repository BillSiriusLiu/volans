;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::RoiPos)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'RoiPos (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::ROIPOS")
  (make-package "IARC_MSGS::ROIPOS"))

(in-package "ROS")
;;//! \htmlinclude RoiPos.msg.html


(defclass iarc_msgs::RoiPos
  :super ros::object
  :slots (_detectornot _dx _dy ))

(defmethod iarc_msgs::RoiPos
  (:init
   (&key
    ((:detectornot __detectornot) nil)
    ((:dx __dx) 0.0)
    ((:dy __dy) 0.0)
    )
   (send-super :init)
   (setq _detectornot __detectornot)
   (setq _dx (float __dx))
   (setq _dy (float __dy))
   self)
  (:detectornot
   (&optional (__detectornot :null))
   (if (not (eq __detectornot :null)) (setq _detectornot __detectornot)) _detectornot)
  (:dx
   (&optional __dx)
   (if __dx (setq _dx __dx)) _dx)
  (:dy
   (&optional __dy)
   (if __dy (setq _dy __dy)) _dy)
  (:serialization-length
   ()
   (+
    ;; bool _detectornot
    1
    ;; float64 _dx
    8
    ;; float64 _dy
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _detectornot
       (if _detectornot (write-byte -1 s) (write-byte 0 s))
     ;; float64 _dx
       (sys::poke _dx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dy
       (sys::poke _dy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _detectornot
     (setq _detectornot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _dx
     (setq _dx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dy
     (setq _dy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get iarc_msgs::RoiPos :md5sum-) "2b3f1c225c207c4782cf386506f6493e")
(setf (get iarc_msgs::RoiPos :datatype-) "iarc_msgs/RoiPos")
(setf (get iarc_msgs::RoiPos :definition-)
      "bool detectornot
float64 dx
float64 dy

")



(provide :iarc_msgs/RoiPos "2b3f1c225c207c4782cf386506f6493e")


