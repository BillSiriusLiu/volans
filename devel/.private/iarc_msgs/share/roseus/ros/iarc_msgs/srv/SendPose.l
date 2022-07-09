;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::SendPose)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'SendPose (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::SENDPOSE")
  (make-package "IARC_MSGS::SENDPOSE"))
(unless (find-package "IARC_MSGS::SENDPOSEREQUEST")
  (make-package "IARC_MSGS::SENDPOSEREQUEST"))
(unless (find-package "IARC_MSGS::SENDPOSERESPONSE")
  (make-package "IARC_MSGS::SENDPOSERESPONSE"))

(in-package "ROS")





(defclass iarc_msgs::SendPoseRequest
  :super ros::object
  :slots (_channel _x _y _angle ))

(defmethod iarc_msgs::SendPoseRequest
  (:init
   (&key
    ((:channel __channel) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _angle (float __angle))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; int64 _channel
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _channel
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _channel (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _channel) (= (length (_channel . bv)) 2)) ;; bignum
              (write-long (ash (elt (_channel . bv) 0) 0) s)
              (write-long (ash (elt (_channel . bv) 1) -1) s))
             ((and (class _channel) (= (length (_channel . bv)) 1)) ;; big1
              (write-long (elt (_channel . bv) 0) s)
              (write-long (if (>= _channel 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _channel s)(write-long (if (>= _channel 0) 0 #xffffffff) s)))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _channel
#+(or :alpha :irix6 :x86_64)
      (setf _channel (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _channel (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass iarc_msgs::SendPoseResponse
  :super ros::object
  :slots (_feedback ))

(defmethod iarc_msgs::SendPoseResponse
  (:init
   (&key
    ((:feedback __feedback) nil)
    )
   (send-super :init)
   (setq _feedback __feedback)
   self)
  (:feedback
   (&optional (__feedback :null))
   (if (not (eq __feedback :null)) (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; bool _feedback
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _feedback
       (if _feedback (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _feedback
     (setq _feedback (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass iarc_msgs::SendPose
  :super ros::object
  :slots ())

(setf (get iarc_msgs::SendPose :md5sum-) "b6c3c7224290d99a0f16ac88a57622f1")
(setf (get iarc_msgs::SendPose :datatype-) "iarc_msgs/SendPose")
(setf (get iarc_msgs::SendPose :request) iarc_msgs::SendPoseRequest)
(setf (get iarc_msgs::SendPose :response) iarc_msgs::SendPoseResponse)

(defmethod iarc_msgs::SendPoseRequest
  (:response () (instance iarc_msgs::SendPoseResponse :init)))

(setf (get iarc_msgs::SendPoseRequest :md5sum-) "b6c3c7224290d99a0f16ac88a57622f1")
(setf (get iarc_msgs::SendPoseRequest :datatype-) "iarc_msgs/SendPoseRequest")
(setf (get iarc_msgs::SendPoseRequest :definition-)
      "int64 channel
float64 x
float64 y
float64 angle
---
bool feedback

")

(setf (get iarc_msgs::SendPoseResponse :md5sum-) "b6c3c7224290d99a0f16ac88a57622f1")
(setf (get iarc_msgs::SendPoseResponse :datatype-) "iarc_msgs/SendPoseResponse")
(setf (get iarc_msgs::SendPoseResponse :definition-)
      "int64 channel
float64 x
float64 y
float64 angle
---
bool feedback

")



(provide :iarc_msgs/SendPose "b6c3c7224290d99a0f16ac88a57622f1")


