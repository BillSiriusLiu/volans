;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::GetData)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'GetData (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::GETDATA")
  (make-package "IARC_MSGS::GETDATA"))

(in-package "ROS")
;;//! \htmlinclude GetData.msg.html


(defclass iarc_msgs::GetData
  :super ros::object
  :slots (_type _data ))

(defmethod iarc_msgs::GetData
  (:init
   (&key
    ((:type __type) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _data (string __data))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get iarc_msgs::GetData :md5sum-) "167124529e10dda68e69162baeaee3b8")
(setf (get iarc_msgs::GetData :datatype-) "iarc_msgs/GetData")
(setf (get iarc_msgs::GetData :definition-)
      "string type
string data

")



(provide :iarc_msgs/GetData "167124529e10dda68e69162baeaee3b8")


