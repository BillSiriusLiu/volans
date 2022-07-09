;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::Command)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'Command (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::COMMAND")
  (make-package "IARC_MSGS::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass iarc_msgs::Command
  :super ros::object
  :slots (_command_num ))

(defmethod iarc_msgs::Command
  (:init
   (&key
    ((:command_num __command_num) 0)
    )
   (send-super :init)
   (setq _command_num (round __command_num))
   self)
  (:command_num
   (&optional __command_num)
   (if __command_num (setq _command_num __command_num)) _command_num)
  (:serialization-length
   ()
   (+
    ;; int64 _command_num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _command_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _command_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _command_num) (= (length (_command_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_command_num . bv) 0) 0) s)
              (write-long (ash (elt (_command_num . bv) 1) -1) s))
             ((and (class _command_num) (= (length (_command_num . bv)) 1)) ;; big1
              (write-long (elt (_command_num . bv) 0) s)
              (write-long (if (>= _command_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _command_num s)(write-long (if (>= _command_num 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _command_num
#+(or :alpha :irix6 :x86_64)
      (setf _command_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _command_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get iarc_msgs::Command :md5sum-) "c309d1b38a34db114a7283dc4ce576c7")
(setf (get iarc_msgs::Command :datatype-) "iarc_msgs/Command")
(setf (get iarc_msgs::Command :definition-)
      "int64 command_num

")



(provide :iarc_msgs/Command "c309d1b38a34db114a7283dc4ce576c7")


