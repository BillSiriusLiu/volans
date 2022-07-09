;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::SendCommand)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'SendCommand (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::SENDCOMMAND")
  (make-package "IARC_MSGS::SENDCOMMAND"))
(unless (find-package "IARC_MSGS::SENDCOMMANDREQUEST")
  (make-package "IARC_MSGS::SENDCOMMANDREQUEST"))
(unless (find-package "IARC_MSGS::SENDCOMMANDRESPONSE")
  (make-package "IARC_MSGS::SENDCOMMANDRESPONSE"))

(in-package "ROS")





(defclass iarc_msgs::SendCommandRequest
  :super ros::object
  :slots (_channel _command_code ))

(defmethod iarc_msgs::SendCommandRequest
  (:init
   (&key
    ((:channel __channel) 0)
    ((:command_code __command_code) 0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _command_code (round __command_code))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:command_code
   (&optional __command_code)
   (if __command_code (setq _command_code __command_code)) _command_code)
  (:serialization-length
   ()
   (+
    ;; int64 _channel
    8
    ;; int64 _command_code
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
     ;; int64 _command_code
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _command_code (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _command_code) (= (length (_command_code . bv)) 2)) ;; bignum
              (write-long (ash (elt (_command_code . bv) 0) 0) s)
              (write-long (ash (elt (_command_code . bv) 1) -1) s))
             ((and (class _command_code) (= (length (_command_code . bv)) 1)) ;; big1
              (write-long (elt (_command_code . bv) 0) s)
              (write-long (if (>= _command_code 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _command_code s)(write-long (if (>= _command_code 0) 0 #xffffffff) s)))
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
   ;; int64 _command_code
#+(or :alpha :irix6 :x86_64)
      (setf _command_code (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _command_code (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass iarc_msgs::SendCommandResponse
  :super ros::object
  :slots (_feedback ))

(defmethod iarc_msgs::SendCommandResponse
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

(defclass iarc_msgs::SendCommand
  :super ros::object
  :slots ())

(setf (get iarc_msgs::SendCommand :md5sum-) "23fbd02f00f51588a9ba39cc1ae0975a")
(setf (get iarc_msgs::SendCommand :datatype-) "iarc_msgs/SendCommand")
(setf (get iarc_msgs::SendCommand :request) iarc_msgs::SendCommandRequest)
(setf (get iarc_msgs::SendCommand :response) iarc_msgs::SendCommandResponse)

(defmethod iarc_msgs::SendCommandRequest
  (:response () (instance iarc_msgs::SendCommandResponse :init)))

(setf (get iarc_msgs::SendCommandRequest :md5sum-) "23fbd02f00f51588a9ba39cc1ae0975a")
(setf (get iarc_msgs::SendCommandRequest :datatype-) "iarc_msgs/SendCommandRequest")
(setf (get iarc_msgs::SendCommandRequest :definition-)
      "int64 channel
int64 command_code
---
bool feedback

")

(setf (get iarc_msgs::SendCommandResponse :md5sum-) "23fbd02f00f51588a9ba39cc1ae0975a")
(setf (get iarc_msgs::SendCommandResponse :datatype-) "iarc_msgs/SendCommandResponse")
(setf (get iarc_msgs::SendCommandResponse :definition-)
      "int64 channel
int64 command_code
---
bool feedback

")



(provide :iarc_msgs/SendCommand "23fbd02f00f51588a9ba39cc1ae0975a")


