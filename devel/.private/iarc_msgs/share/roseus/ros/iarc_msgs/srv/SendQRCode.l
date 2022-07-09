;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::SendQRCode)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'SendQRCode (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::SENDQRCODE")
  (make-package "IARC_MSGS::SENDQRCODE"))
(unless (find-package "IARC_MSGS::SENDQRCODEREQUEST")
  (make-package "IARC_MSGS::SENDQRCODEREQUEST"))
(unless (find-package "IARC_MSGS::SENDQRCODERESPONSE")
  (make-package "IARC_MSGS::SENDQRCODERESPONSE"))

(in-package "ROS")





(defclass iarc_msgs::SendQRCodeRequest
  :super ros::object
  :slots (_channel _code ))

(defmethod iarc_msgs::SendQRCodeRequest
  (:init
   (&key
    ((:channel __channel) 0)
    ((:code __code) (make-array 4 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _code __code)
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:serialization-length
   ()
   (+
    ;; int64 _channel
    8
    ;; int64[4] _code
    (* 8    4)
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
     ;; int64[4] _code
     (dotimes (i 4)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _code i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _code i)) (= (length ((elt _code i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _code i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _code i) . bv) 1) -1) s))
             ((and (class (elt _code i)) (= (length ((elt _code i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _code i) . bv) 0) s)
              (write-long (if (>= (elt _code i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _code i) s)(write-long (if (>= (elt _code i) 0) 0 #xffffffff) s)))
       )
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
   ;; int64[4] _code
   (dotimes (i (length _code))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _code i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _code i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;;
   self)
  )

(defclass iarc_msgs::SendQRCodeResponse
  :super ros::object
  :slots (_feedback ))

(defmethod iarc_msgs::SendQRCodeResponse
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

(defclass iarc_msgs::SendQRCode
  :super ros::object
  :slots ())

(setf (get iarc_msgs::SendQRCode :md5sum-) "8193f777c6b316488f0375ed416381c5")
(setf (get iarc_msgs::SendQRCode :datatype-) "iarc_msgs/SendQRCode")
(setf (get iarc_msgs::SendQRCode :request) iarc_msgs::SendQRCodeRequest)
(setf (get iarc_msgs::SendQRCode :response) iarc_msgs::SendQRCodeResponse)

(defmethod iarc_msgs::SendQRCodeRequest
  (:response () (instance iarc_msgs::SendQRCodeResponse :init)))

(setf (get iarc_msgs::SendQRCodeRequest :md5sum-) "8193f777c6b316488f0375ed416381c5")
(setf (get iarc_msgs::SendQRCodeRequest :datatype-) "iarc_msgs/SendQRCodeRequest")
(setf (get iarc_msgs::SendQRCodeRequest :definition-)
      "int64 channel
int64[4] code
---
bool feedback

")

(setf (get iarc_msgs::SendQRCodeResponse :md5sum-) "8193f777c6b316488f0375ed416381c5")
(setf (get iarc_msgs::SendQRCodeResponse :datatype-) "iarc_msgs/SendQRCodeResponse")
(setf (get iarc_msgs::SendQRCodeResponse :definition-)
      "int64 channel
int64[4] code
---
bool feedback

")



(provide :iarc_msgs/SendQRCode "8193f777c6b316488f0375ed416381c5")


