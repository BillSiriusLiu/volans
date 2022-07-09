;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::SendQRMatrix)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'SendQRMatrix (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::SENDQRMATRIX")
  (make-package "IARC_MSGS::SENDQRMATRIX"))
(unless (find-package "IARC_MSGS::SENDQRMATRIXREQUEST")
  (make-package "IARC_MSGS::SENDQRMATRIXREQUEST"))
(unless (find-package "IARC_MSGS::SENDQRMATRIXRESPONSE")
  (make-package "IARC_MSGS::SENDQRMATRIXRESPONSE"))

(in-package "ROS")





(defclass iarc_msgs::SendQRMatrixRequest
  :super ros::object
  :slots (_channel _matrix ))

(defmethod iarc_msgs::SendQRMatrixRequest
  (:init
   (&key
    ((:channel __channel) 0)
    ((:matrix __matrix) (make-array 121 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _matrix __matrix)
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:matrix
   (&optional __matrix)
   (if __matrix (setq _matrix __matrix)) _matrix)
  (:serialization-length
   ()
   (+
    ;; int64 _channel
    8
    ;; int64[121] _matrix
    (* 8    121)
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
     ;; int64[121] _matrix
     (dotimes (i 121)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _matrix i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _matrix i)) (= (length ((elt _matrix i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _matrix i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _matrix i) . bv) 1) -1) s))
             ((and (class (elt _matrix i)) (= (length ((elt _matrix i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _matrix i) . bv) 0) s)
              (write-long (if (>= (elt _matrix i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _matrix i) s)(write-long (if (>= (elt _matrix i) 0) 0 #xffffffff) s)))
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
   ;; int64[121] _matrix
   (dotimes (i (length _matrix))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _matrix i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _matrix i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass iarc_msgs::SendQRMatrixResponse
  :super ros::object
  :slots (_feedback ))

(defmethod iarc_msgs::SendQRMatrixResponse
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

(defclass iarc_msgs::SendQRMatrix
  :super ros::object
  :slots ())

(setf (get iarc_msgs::SendQRMatrix :md5sum-) "fd173312d52f41d9b2e7080c044e0769")
(setf (get iarc_msgs::SendQRMatrix :datatype-) "iarc_msgs/SendQRMatrix")
(setf (get iarc_msgs::SendQRMatrix :request) iarc_msgs::SendQRMatrixRequest)
(setf (get iarc_msgs::SendQRMatrix :response) iarc_msgs::SendQRMatrixResponse)

(defmethod iarc_msgs::SendQRMatrixRequest
  (:response () (instance iarc_msgs::SendQRMatrixResponse :init)))

(setf (get iarc_msgs::SendQRMatrixRequest :md5sum-) "fd173312d52f41d9b2e7080c044e0769")
(setf (get iarc_msgs::SendQRMatrixRequest :datatype-) "iarc_msgs/SendQRMatrixRequest")
(setf (get iarc_msgs::SendQRMatrixRequest :definition-)
      "int64 channel
int64[121] matrix
---
bool feedback

")

(setf (get iarc_msgs::SendQRMatrixResponse :md5sum-) "fd173312d52f41d9b2e7080c044e0769")
(setf (get iarc_msgs::SendQRMatrixResponse :datatype-) "iarc_msgs/SendQRMatrixResponse")
(setf (get iarc_msgs::SendQRMatrixResponse :definition-)
      "int64 channel
int64[121] matrix
---
bool feedback

")



(provide :iarc_msgs/SendQRMatrix "fd173312d52f41d9b2e7080c044e0769")


