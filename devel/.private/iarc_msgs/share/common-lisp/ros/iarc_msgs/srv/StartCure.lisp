; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-srv)


;//! \htmlinclude StartCure-request.msg.html

(cl:defclass <StartCure-request> (roslisp-msg-protocol:ros-message)
  ((if_cure
    :reader if_cure
    :initarg :if_cure
    :type cl:integer
    :initform 0))
)

(cl:defclass StartCure-request (<StartCure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartCure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartCure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<StartCure-request> is deprecated: use iarc_msgs-srv:StartCure-request instead.")))

(cl:ensure-generic-function 'if_cure-val :lambda-list '(m))
(cl:defmethod if_cure-val ((m <StartCure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:if_cure-val is deprecated.  Use iarc_msgs-srv:if_cure instead.")
  (if_cure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartCure-request>) ostream)
  "Serializes a message object of type '<StartCure-request>"
  (cl:let* ((signed (cl:slot-value msg 'if_cure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartCure-request>) istream)
  "Deserializes a message object of type '<StartCure-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'if_cure) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartCure-request>)))
  "Returns string type for a service object of type '<StartCure-request>"
  "iarc_msgs/StartCureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartCure-request)))
  "Returns string type for a service object of type 'StartCure-request"
  "iarc_msgs/StartCureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartCure-request>)))
  "Returns md5sum for a message object of type '<StartCure-request>"
  "feb547387d54d09a610dd34314e9c411")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartCure-request)))
  "Returns md5sum for a message object of type 'StartCure-request"
  "feb547387d54d09a610dd34314e9c411")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartCure-request>)))
  "Returns full string definition for message of type '<StartCure-request>"
  (cl:format cl:nil "int64 if_cure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartCure-request)))
  "Returns full string definition for message of type 'StartCure-request"
  (cl:format cl:nil "int64 if_cure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartCure-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartCure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartCure-request
    (cl:cons ':if_cure (if_cure msg))
))
;//! \htmlinclude StartCure-response.msg.html

(cl:defclass <StartCure-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:integer
    :initform 0))
)

(cl:defclass StartCure-response (<StartCure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartCure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartCure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<StartCure-response> is deprecated: use iarc_msgs-srv:StartCure-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <StartCure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:feedback-val is deprecated.  Use iarc_msgs-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartCure-response>) ostream)
  "Serializes a message object of type '<StartCure-response>"
  (cl:let* ((signed (cl:slot-value msg 'feedback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartCure-response>) istream)
  "Deserializes a message object of type '<StartCure-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartCure-response>)))
  "Returns string type for a service object of type '<StartCure-response>"
  "iarc_msgs/StartCureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartCure-response)))
  "Returns string type for a service object of type 'StartCure-response"
  "iarc_msgs/StartCureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartCure-response>)))
  "Returns md5sum for a message object of type '<StartCure-response>"
  "feb547387d54d09a610dd34314e9c411")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartCure-response)))
  "Returns md5sum for a message object of type 'StartCure-response"
  "feb547387d54d09a610dd34314e9c411")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartCure-response>)))
  "Returns full string definition for message of type '<StartCure-response>"
  (cl:format cl:nil "int64 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartCure-response)))
  "Returns full string definition for message of type 'StartCure-response"
  (cl:format cl:nil "int64 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartCure-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartCure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartCure-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartCure)))
  'StartCure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartCure)))
  'StartCure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartCure)))
  "Returns string type for a service object of type '<StartCure>"
  "iarc_msgs/StartCure")