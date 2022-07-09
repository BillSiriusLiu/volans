; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-msg)


;//! \htmlinclude Start_QRScan.msg.html

(cl:defclass <Start_QRScan> (roslisp-msg-protocol:ros-message)
  ((start_qrscan
    :reader start_qrscan
    :initarg :start_qrscan
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Start_QRScan (<Start_QRScan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Start_QRScan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Start_QRScan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-msg:<Start_QRScan> is deprecated: use iarc_msgs-msg:Start_QRScan instead.")))

(cl:ensure-generic-function 'start_qrscan-val :lambda-list '(m))
(cl:defmethod start_qrscan-val ((m <Start_QRScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:start_qrscan-val is deprecated.  Use iarc_msgs-msg:start_qrscan instead.")
  (start_qrscan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Start_QRScan>) ostream)
  "Serializes a message object of type '<Start_QRScan>"
  (cl:let* ((signed (cl:slot-value msg 'start_qrscan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Start_QRScan>) istream)
  "Deserializes a message object of type '<Start_QRScan>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_qrscan) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Start_QRScan>)))
  "Returns string type for a message object of type '<Start_QRScan>"
  "iarc_msgs/Start_QRScan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Start_QRScan)))
  "Returns string type for a message object of type 'Start_QRScan"
  "iarc_msgs/Start_QRScan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Start_QRScan>)))
  "Returns md5sum for a message object of type '<Start_QRScan>"
  "88694611e19cf8dc57b2f35c3cd23ec9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Start_QRScan)))
  "Returns md5sum for a message object of type 'Start_QRScan"
  "88694611e19cf8dc57b2f35c3cd23ec9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Start_QRScan>)))
  "Returns full string definition for message of type '<Start_QRScan>"
  (cl:format cl:nil "int8 start_qrscan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Start_QRScan)))
  "Returns full string definition for message of type 'Start_QRScan"
  (cl:format cl:nil "int8 start_qrscan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Start_QRScan>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Start_QRScan>))
  "Converts a ROS message object to a list"
  (cl:list 'Start_QRScan
    (cl:cons ':start_qrscan (start_qrscan msg))
))
