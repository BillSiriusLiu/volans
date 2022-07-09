;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::QRMatrix)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'QRMatrix (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::QRMATRIX")
  (make-package "IARC_MSGS::QRMATRIX"))

(in-package "ROS")
;;//! \htmlinclude QRMatrix.msg.html


(defclass iarc_msgs::QRMatrix
  :super ros::object
  :slots (_matrix ))

(defmethod iarc_msgs::QRMatrix
  (:init
   (&key
    ((:matrix __matrix) (make-array 121 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _matrix __matrix)
   self)
  (:matrix
   (&optional __matrix)
   (if __matrix (setq _matrix __matrix)) _matrix)
  (:serialization-length
   ()
   (+
    ;; int64[121] _matrix
    (* 8    121)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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

(setf (get iarc_msgs::QRMatrix :md5sum-) "6613d284da8b77ddadc769d602bc297f")
(setf (get iarc_msgs::QRMatrix :datatype-) "iarc_msgs/QRMatrix")
(setf (get iarc_msgs::QRMatrix :definition-)
      "int64[121] matrix

")



(provide :iarc_msgs/QRMatrix "6613d284da8b77ddadc769d602bc297f")


