; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-srv)


;//! \htmlinclude HandSignal-request.msg.html

(cl:defclass <HandSignal-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass HandSignal-request (<HandSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<HandSignal-request> is deprecated: use iarc_msgs-srv:HandSignal-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandSignal-request>) ostream)
  "Serializes a message object of type '<HandSignal-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandSignal-request>) istream)
  "Deserializes a message object of type '<HandSignal-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandSignal-request>)))
  "Returns string type for a service object of type '<HandSignal-request>"
  "iarc_msgs/HandSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandSignal-request)))
  "Returns string type for a service object of type 'HandSignal-request"
  "iarc_msgs/HandSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandSignal-request>)))
  "Returns md5sum for a message object of type '<HandSignal-request>"
  "66389ecef7e0d1c6c3fdf9137ae8737e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandSignal-request)))
  "Returns md5sum for a message object of type 'HandSignal-request"
  "66389ecef7e0d1c6c3fdf9137ae8737e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandSignal-request>)))
  "Returns full string definition for message of type '<HandSignal-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandSignal-request)))
  "Returns full string definition for message of type 'HandSignal-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandSignal-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HandSignal-request
))
;//! \htmlinclude HandSignal-response.msg.html

(cl:defclass <HandSignal-response> (roslisp-msg-protocol:ros-message)
  ((signal_num
    :reader signal_num
    :initarg :signal_num
    :type cl:integer
    :initform 0))
)

(cl:defclass HandSignal-response (<HandSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<HandSignal-response> is deprecated: use iarc_msgs-srv:HandSignal-response instead.")))

(cl:ensure-generic-function 'signal_num-val :lambda-list '(m))
(cl:defmethod signal_num-val ((m <HandSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:signal_num-val is deprecated.  Use iarc_msgs-srv:signal_num instead.")
  (signal_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandSignal-response>) ostream)
  "Serializes a message object of type '<HandSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'signal_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandSignal-response>) istream)
  "Deserializes a message object of type '<HandSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandSignal-response>)))
  "Returns string type for a service object of type '<HandSignal-response>"
  "iarc_msgs/HandSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandSignal-response)))
  "Returns string type for a service object of type 'HandSignal-response"
  "iarc_msgs/HandSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandSignal-response>)))
  "Returns md5sum for a message object of type '<HandSignal-response>"
  "66389ecef7e0d1c6c3fdf9137ae8737e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandSignal-response)))
  "Returns md5sum for a message object of type 'HandSignal-response"
  "66389ecef7e0d1c6c3fdf9137ae8737e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandSignal-response>)))
  "Returns full string definition for message of type '<HandSignal-response>"
  (cl:format cl:nil "int64 signal_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandSignal-response)))
  "Returns full string definition for message of type 'HandSignal-response"
  (cl:format cl:nil "int64 signal_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandSignal-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HandSignal-response
    (cl:cons ':signal_num (signal_num msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HandSignal)))
  'HandSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HandSignal)))
  'HandSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandSignal)))
  "Returns string type for a service object of type '<HandSignal>"
  "iarc_msgs/HandSignal")