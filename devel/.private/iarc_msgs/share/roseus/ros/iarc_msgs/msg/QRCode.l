;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::QRCode)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'QRCode (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::QRCODE")
  (make-package "IARC_MSGS::QRCODE"))

(in-package "ROS")
;;//! \htmlinclude QRCode.msg.html


(defclass iarc_msgs::QRCode
  :super ros::object
  :slots (_code ))

(defmethod iarc_msgs::QRCode
  (:init
   (&key
    ((:code __code) (make-array 4 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _code __code)
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:serialization-length
   ()
   (+
    ;; int64[4] _code
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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

(setf (get iarc_msgs::QRCode :md5sum-) "fdbad0f70adc75d9bbd4ce667ab39d53")
(setf (get iarc_msgs::QRCode :datatype-) "iarc_msgs/QRCode")
(setf (get iarc_msgs::QRCode :definition-)
      "int64[4] code

")



(provide :iarc_msgs/QRCode "fdbad0f70adc75d9bbd4ce667ab39d53")


