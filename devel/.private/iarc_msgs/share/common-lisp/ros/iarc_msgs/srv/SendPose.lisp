; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-srv)


;//! \htmlinclude SendPose-request.msg.html

(cl:defclass <SendPose-request> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SendPose-request (<SendPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<SendPose-request> is deprecated: use iarc_msgs-srv:SendPose-request instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <SendPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:channel-val is deprecated.  Use iarc_msgs-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SendPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:x-val is deprecated.  Use iarc_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SendPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:y-val is deprecated.  Use iarc_msgs-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SendPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:angle-val is deprecated.  Use iarc_msgs-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendPose-request>) ostream)
  "Serializes a message object of type '<SendPose-request>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendPose-request>) istream)
  "Deserializes a message object of type '<SendPose-request>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendPose-request>)))
  "Returns string type for a service object of type '<SendPose-request>"
  "iarc_msgs/SendPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendPose-request)))
  "Returns string type for a service object of type 'SendPose-request"
  "iarc_msgs/SendPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendPose-request>)))
  "Returns md5sum for a message object of type '<SendPose-request>"
  "b6c3c7224290d99a0f16ac88a57622f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendPose-request)))
  "Returns md5sum for a message object of type 'SendPose-request"
  "b6c3c7224290d99a0f16ac88a57622f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendPose-request>)))
  "Returns full string definition for message of type '<SendPose-request>"
  (cl:format cl:nil "int64 channel~%float64 x~%float64 y~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendPose-request)))
  "Returns full string definition for message of type 'SendPose-request"
  (cl:format cl:nil "int64 channel~%float64 x~%float64 y~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendPose-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendPose-request
    (cl:cons ':channel (channel msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude SendPose-response.msg.html

(cl:defclass <SendPose-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendPose-response (<SendPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<SendPose-response> is deprecated: use iarc_msgs-srv:SendPose-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <SendPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:feedback-val is deprecated.  Use iarc_msgs-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendPose-response>) ostream)
  "Serializes a message object of type '<SendPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendPose-response>) istream)
  "Deserializes a message object of type '<SendPose-response>"
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendPose-response>)))
  "Returns string type for a service object of type '<SendPose-response>"
  "iarc_msgs/SendPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendPose-response)))
  "Returns string type for a service object of type 'SendPose-response"
  "iarc_msgs/SendPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendPose-response>)))
  "Returns md5sum for a message object of type '<SendPose-response>"
  "b6c3c7224290d99a0f16ac88a57622f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendPose-response)))
  "Returns md5sum for a message object of type 'SendPose-response"
  "b6c3c7224290d99a0f16ac88a57622f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendPose-response>)))
  "Returns full string definition for message of type '<SendPose-response>"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendPose-response)))
  "Returns full string definition for message of type 'SendPose-response"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendPose-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendPose)))
  'SendPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendPose)))
  'SendPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendPose)))
  "Returns string type for a service object of type '<SendPose>"
  "iarc_msgs/SendPose")