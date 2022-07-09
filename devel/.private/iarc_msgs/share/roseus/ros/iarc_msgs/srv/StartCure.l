;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::StartCure)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'StartCure (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::STARTCURE")
  (make-package "IARC_MSGS::STARTCURE"))
(unless (find-package "IARC_MSGS::STARTCUREREQUEST")
  (make-package "IARC_MSGS::STARTCUREREQUEST"))
(unless (find-package "IARC_MSGS::STARTCURERESPONSE")
  (make-package "IARC_MSGS::STARTCURERESPONSE"))

(in-package "ROS")





(defclass iarc_msgs::StartCureRequest
  :super ros::object
  :slots (_if_cure ))

(defmethod iarc_msgs::StartCureRequest
  (:init
   (&key
    ((:if_cure __if_cure) 0)
    )
   (send-super :init)
   (setq _if_cure (round __if_cure))
   self)
  (:if_cure
   (&optional __if_cure)
   (if __if_cure (setq _if_cure __if_cure)) _if_cure)
  (:serialization-length
   ()
   (+
    ;; int64 _if_cure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _if_cure
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _if_cure (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _if_cure) (= (length (_if_cure . bv)) 2)) ;; bignum
              (write-long (ash (elt (_if_cure . bv) 0) 0) s)
              (write-long (ash (elt (_if_cure . bv) 1) -1) s))
             ((and (class _if_cure) (= (length (_if_cure . bv)) 1)) ;; big1
              (write-long (elt (_if_cure . bv) 0) s)
              (write-long (if (>= _if_cure 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _if_cure s)(write-long (if (>= _if_cure 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _if_cure
#+(or :alpha :irix6 :x86_64)
      (setf _if_cure (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _if_cure (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass iarc_msgs::StartCureResponse
  :super ros::object
  :slots (_feedback ))

(defmethod iarc_msgs::StartCureResponse
  (:init
   (&key
    ((:feedback __feedback) 0)
    )
   (send-super :init)
   (setq _feedback (round __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; int64 _feedback
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _feedback
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _feedback (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _feedback) (= (length (_feedback . bv)) 2)) ;; bignum
              (write-long (ash (elt (_feedback . bv) 0) 0) s)
              (write-long (ash (elt (_feedback . bv) 1) -1) s))
             ((and (class _feedback) (= (length (_feedback . bv)) 1)) ;; big1
              (write-long (elt (_feedback . bv) 0) s)
              (write-long (if (>= _feedback 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _feedback s)(write-long (if (>= _feedback 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _feedback
#+(or :alpha :irix6 :x86_64)
      (setf _feedback (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _feedback (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass iarc_msgs::StartCure
  :super ros::object
  :slots ())

(setf (get iarc_msgs::StartCure :md5sum-) "feb547387d54d09a610dd34314e9c411")
(setf (get iarc_msgs::StartCure :datatype-) "iarc_msgs/StartCure")
(setf (get iarc_msgs::StartCure :request) iarc_msgs::StartCureRequest)
(setf (get iarc_msgs::StartCure :response) iarc_msgs::StartCureResponse)

(defmethod iarc_msgs::StartCureRequest
  (:response () (instance iarc_msgs::StartCureResponse :init)))

(setf (get iarc_msgs::StartCureRequest :md5sum-) "feb547387d54d09a610dd34314e9c411")
(setf (get iarc_msgs::StartCureRequest :datatype-) "iarc_msgs/StartCureRequest")
(setf (get iarc_msgs::StartCureRequest :definition-)
      "int64 if_cure
---
int64 feedback

")

(setf (get iarc_msgs::StartCureResponse :md5sum-) "feb547387d54d09a610dd34314e9c411")
(setf (get iarc_msgs::StartCureResponse :datatype-) "iarc_msgs/StartCureResponse")
(setf (get iarc_msgs::StartCureResponse :definition-)
      "int64 if_cure
---
int64 feedback

")



(provide :iarc_msgs/StartCure "feb547387d54d09a610dd34314e9c411")


