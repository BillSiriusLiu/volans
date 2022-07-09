;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::Start_QRScan)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'Start_QRScan (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::START_QRSCAN")
  (make-package "IARC_MSGS::START_QRSCAN"))

(in-package "ROS")
;;//! \htmlinclude Start_QRScan.msg.html


(defclass iarc_msgs::Start_QRScan
  :super ros::object
  :slots (_start_qrscan ))

(defmethod iarc_msgs::Start_QRScan
  (:init
   (&key
    ((:start_qrscan __start_qrscan) 0)
    )
   (send-super :init)
   (setq _start_qrscan (round __start_qrscan))
   self)
  (:start_qrscan
   (&optional __start_qrscan)
   (if __start_qrscan (setq _start_qrscan __start_qrscan)) _start_qrscan)
  (:serialization-length
   ()
   (+
    ;; int8 _start_qrscan
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _start_qrscan
       (write-byte _start_qrscan s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _start_qrscan
     (setq _start_qrscan (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _start_qrscan 127) (setq _start_qrscan (- _start_qrscan 256)))
   ;;
   self)
  )

(setf (get iarc_msgs::Start_QRScan :md5sum-) "88694611e19cf8dc57b2f35c3cd23ec9")
(setf (get iarc_msgs::Start_QRScan :datatype-) "iarc_msgs/Start_QRScan")
(setf (get iarc_msgs::Start_QRScan :definition-)
      "int8 start_qrscan

")



(provide :iarc_msgs/Start_QRScan "88694611e19cf8dc57b2f35c3cd23ec9")


