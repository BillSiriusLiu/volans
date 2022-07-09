;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::QuadVelocity)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'QuadVelocity (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::QUADVELOCITY")
  (make-package "IARC_MSGS::QUADVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude QuadVelocity.msg.html


(defclass iarc_msgs::QuadVelocity
  :super ros::object
  :slots (_vx _vy ))

(defmethod iarc_msgs::QuadVelocity
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get iarc_msgs::QuadVelocity :md5sum-) "95d7cdcc3a89a9361eb29eff06cd1058")
(setf (get iarc_msgs::QuadVelocity :datatype-) "iarc_msgs/QuadVelocity")
(setf (get iarc_msgs::QuadVelocity :definition-)
      "float64 vx
float64 vy
")



(provide :iarc_msgs/QuadVelocity "95d7cdcc3a89a9361eb29eff06cd1058")


