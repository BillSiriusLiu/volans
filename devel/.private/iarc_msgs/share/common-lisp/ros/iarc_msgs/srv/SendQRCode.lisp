; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-srv)


;//! \htmlinclude SendQRCode-request.msg.html

(cl:defclass <SendQRCode-request> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (code
    :reader code
    :initarg :code
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SendQRCode-request (<SendQRCode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendQRCode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendQRCode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<SendQRCode-request> is deprecated: use iarc_msgs-srv:SendQRCode-request instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <SendQRCode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:channel-val is deprecated.  Use iarc_msgs-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <SendQRCode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:code-val is deprecated.  Use iarc_msgs-srv:code instead.")
  (code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendQRCode-request>) ostream)
  "Serializes a message object of type '<SendQRCode-request>"
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
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendQRCode-request>) istream)
  "Deserializes a message object of type '<SendQRCode-request>"
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
  (cl:setf (cl:slot-value msg 'code) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'code)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendQRCode-request>)))
  "Returns string type for a service object of type '<SendQRCode-request>"
  "iarc_msgs/SendQRCodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendQRCode-request)))
  "Returns string type for a service object of type 'SendQRCode-request"
  "iarc_msgs/SendQRCodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendQRCode-request>)))
  "Returns md5sum for a message object of type '<SendQRCode-request>"
  "8193f777c6b316488f0375ed416381c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendQRCode-request)))
  "Returns md5sum for a message object of type 'SendQRCode-request"
  "8193f777c6b316488f0375ed416381c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendQRCode-request>)))
  "Returns full string definition for message of type '<SendQRCode-request>"
  (cl:format cl:nil "int64 channel~%int64[4] code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendQRCode-request)))
  "Returns full string definition for message of type 'SendQRCode-request"
  (cl:format cl:nil "int64 channel~%int64[4] code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendQRCode-request>))
  (cl:+ 0
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'code) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendQRCode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendQRCode-request
    (cl:cons ':channel (channel msg))
    (cl:cons ':code (code msg))
))
;//! \htmlinclude SendQRCode-response.msg.html

(cl:defclass <SendQRCode-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendQRCode-response (<SendQRCode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendQRCode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendQRCode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<SendQRCode-response> is deprecated: use iarc_msgs-srv:SendQRCode-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <SendQRCode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:feedback-val is deprecated.  Use iarc_msgs-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendQRCode-response>) ostream)
  "Serializes a message object of type '<SendQRCode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendQRCode-response>) istream)
  "Deserializes a message object of type '<SendQRCode-response>"
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendQRCode-response>)))
  "Returns string type for a service object of type '<SendQRCode-response>"
  "iarc_msgs/SendQRCodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendQRCode-response)))
  "Returns string type for a service object of type 'SendQRCode-response"
  "iarc_msgs/SendQRCodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendQRCode-response>)))
  "Returns md5sum for a message object of type '<SendQRCode-response>"
  "8193f777c6b316488f0375ed416381c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendQRCode-response)))
  "Returns md5sum for a message object of type 'SendQRCode-response"
  "8193f777c6b316488f0375ed416381c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendQRCode-response>)))
  "Returns full string definition for message of type '<SendQRCode-response>"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendQRCode-response)))
  "Returns full string definition for message of type 'SendQRCode-response"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendQRCode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendQRCode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendQRCode-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendQRCode)))
  'SendQRCode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendQRCode)))
  'SendQRCode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendQRCode)))
  "Returns string type for a service object of type '<SendQRCode>"
  "iarc_msgs/SendQRCode")