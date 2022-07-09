; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-srv)


;//! \htmlinclude SendCommand-request.msg.html

(cl:defclass <SendCommand-request> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (command_code
    :reader command_code
    :initarg :command_code
    :type cl:integer
    :initform 0))
)

(cl:defclass SendCommand-request (<SendCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<SendCommand-request> is deprecated: use iarc_msgs-srv:SendCommand-request instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <SendCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:channel-val is deprecated.  Use iarc_msgs-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'command_code-val :lambda-list '(m))
(cl:defmethod command_code-val ((m <SendCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:command_code-val is deprecated.  Use iarc_msgs-srv:command_code instead.")
  (command_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCommand-request>) ostream)
  "Serializes a message object of type '<SendCommand-request>"
  (cl:let* ((signed (cl:slot-value msg 'channel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'command_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCommand-request>) istream)
  "Deserializes a message object of type '<SendCommand-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_code) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCommand-request>)))
  "Returns string type for a service object of type '<SendCommand-request>"
  "iarc_msgs/SendCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCommand-request)))
  "Returns string type for a service object of type 'SendCommand-request"
  "iarc_msgs/SendCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCommand-request>)))
  "Returns md5sum for a message object of type '<SendCommand-request>"
  "23fbd02f00f51588a9ba39cc1ae0975a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCommand-request)))
  "Returns md5sum for a message object of type 'SendCommand-request"
  "23fbd02f00f51588a9ba39cc1ae0975a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCommand-request>)))
  "Returns full string definition for message of type '<SendCommand-request>"
  (cl:format cl:nil "int64 channel~%int64 command_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCommand-request)))
  "Returns full string definition for message of type 'SendCommand-request"
  (cl:format cl:nil "int64 channel~%int64 command_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCommand-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCommand-request
    (cl:cons ':channel (channel msg))
    (cl:cons ':command_code (command_code msg))
))
;//! \htmlinclude SendCommand-response.msg.html

(cl:defclass <SendCommand-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendCommand-response (<SendCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<SendCommand-response> is deprecated: use iarc_msgs-srv:SendCommand-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <SendCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:feedback-val is deprecated.  Use iarc_msgs-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCommand-response>) ostream)
  "Serializes a message object of type '<SendCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCommand-response>) istream)
  "Deserializes a message object of type '<SendCommand-response>"
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCommand-response>)))
  "Returns string type for a service object of type '<SendCommand-response>"
  "iarc_msgs/SendCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCommand-response)))
  "Returns string type for a service object of type 'SendCommand-response"
  "iarc_msgs/SendCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCommand-response>)))
  "Returns md5sum for a message object of type '<SendCommand-response>"
  "23fbd02f00f51588a9ba39cc1ae0975a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCommand-response)))
  "Returns md5sum for a message object of type 'SendCommand-response"
  "23fbd02f00f51588a9ba39cc1ae0975a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCommand-response>)))
  "Returns full string definition for message of type '<SendCommand-response>"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCommand-response)))
  "Returns full string definition for message of type 'SendCommand-response"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCommand-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCommand-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendCommand)))
  'SendCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendCommand)))
  'SendCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCommand)))
  "Returns string type for a service object of type '<SendCommand>"
  "iarc_msgs/SendCommand")