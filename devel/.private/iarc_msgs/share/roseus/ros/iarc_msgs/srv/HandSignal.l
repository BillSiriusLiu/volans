;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::HandSignal)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'HandSignal (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::HANDSIGNAL")
  (make-package "IARC_MSGS::HANDSIGNAL"))
(unless (find-package "IARC_MSGS::HANDSIGNALREQUEST")
  (make-package "IARC_MSGS::HANDSIGNALREQUEST"))
(unless (find-package "IARC_MSGS::HANDSIGNALRESPONSE")
  (make-package "IARC_MSGS::HANDSIGNALRESPONSE"))

(in-package "ROS")





(defclass iarc_msgs::HandSignalRequest
  :super ros::object
  :slots ())

(defmethod iarc_msgs::HandSignalRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass iarc_msgs::HandSignalResponse
  :super ros::object
  :slots (_signal_num ))

(defmethod iarc_msgs::HandSignalResponse
  (:init
   (&key
    ((:signal_num __signal_num) 0)
    )
   (send-super :init)
   (setq _signal_num (round __signal_num))
   self)
  (:signal_num
   (&optional __signal_num)
   (if __signal_num (setq _signal_num __signal_num)) _signal_num)
  (:serialization-length
   ()
   (+
    ;; int64 _signal_num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _signal_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _signal_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _signal_num) (= (length (_signal_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_signal_num . bv) 0) 0) s)
              (write-long (ash (elt (_signal_num . bv) 1) -1) s))
             ((and (class _signal_num) (= (length (_signal_num . bv)) 1)) ;; big1
              (write-long (elt (_signal_num . bv) 0) s)
              (write-long (if (>= _signal_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _signal_num s)(write-long (if (>= _signal_num 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _signal_num
#+(or :alpha :irix6 :x86_64)
      (setf _signal_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _signal_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass iarc_msgs::HandSignal
  :super ros::object
  :slots ())

(setf (get iarc_msgs::HandSignal :md5sum-) "66389ecef7e0d1c6c3fdf9137ae8737e")
(setf (get iarc_msgs::HandSignal :datatype-) "iarc_msgs/HandSignal")
(setf (get iarc_msgs::HandSignal :request) iarc_msgs::HandSignalRequest)
(setf (get iarc_msgs::HandSignal :response) iarc_msgs::HandSignalResponse)

(defmethod iarc_msgs::HandSignalRequest
  (:response () (instance iarc_msgs::HandSignalResponse :init)))

(setf (get iarc_msgs::HandSignalRequest :md5sum-) "66389ecef7e0d1c6c3fdf9137ae8737e")
(setf (get iarc_msgs::HandSignalRequest :datatype-) "iarc_msgs/HandSignalRequest")
(setf (get iarc_msgs::HandSignalRequest :definition-)
      "
---
int64 signal_num

")

(setf (get iarc_msgs::HandSignalResponse :md5sum-) "66389ecef7e0d1c6c3fdf9137ae8737e")
(setf (get iarc_msgs::HandSignalResponse :datatype-) "iarc_msgs/HandSignalResponse")
(setf (get iarc_msgs::HandSignalResponse :definition-)
      "
---
int64 signal_num

")



(provide :iarc_msgs/HandSignal "66389ecef7e0d1c6c3fdf9137ae8737e")


