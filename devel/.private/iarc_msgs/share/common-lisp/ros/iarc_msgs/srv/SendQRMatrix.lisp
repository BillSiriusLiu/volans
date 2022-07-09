; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-srv)


;//! \htmlinclude SendQRMatrix-request.msg.html

(cl:defclass <SendQRMatrix-request> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (matrix
    :reader matrix
    :initarg :matrix
    :type (cl:vector cl:integer)
   :initform (cl:make-array 121 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SendQRMatrix-request (<SendQRMatrix-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendQRMatrix-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendQRMatrix-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<SendQRMatrix-request> is deprecated: use iarc_msgs-srv:SendQRMatrix-request instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <SendQRMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:channel-val is deprecated.  Use iarc_msgs-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'matrix-val :lambda-list '(m))
(cl:defmethod matrix-val ((m <SendQRMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:matrix-val is deprecated.  Use iarc_msgs-srv:matrix instead.")
  (matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendQRMatrix-request>) ostream)
  "Serializes a message object of type '<SendQRMatrix-request>"
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
   (cl:slot-value msg 'matrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendQRMatrix-request>) istream)
  "Deserializes a message object of type '<SendQRMatrix-request>"
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
  (cl:setf (cl:slot-value msg 'matrix) (cl:make-array 121))
  (cl:let ((vals (cl:slot-value msg 'matrix)))
    (cl:dotimes (i 121)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendQRMatrix-request>)))
  "Returns string type for a service object of type '<SendQRMatrix-request>"
  "iarc_msgs/SendQRMatrixRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendQRMatrix-request)))
  "Returns string type for a service object of type 'SendQRMatrix-request"
  "iarc_msgs/SendQRMatrixRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendQRMatrix-request>)))
  "Returns md5sum for a message object of type '<SendQRMatrix-request>"
  "fd173312d52f41d9b2e7080c044e0769")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendQRMatrix-request)))
  "Returns md5sum for a message object of type 'SendQRMatrix-request"
  "fd173312d52f41d9b2e7080c044e0769")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendQRMatrix-request>)))
  "Returns full string definition for message of type '<SendQRMatrix-request>"
  (cl:format cl:nil "int64 channel~%int64[121] matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendQRMatrix-request)))
  "Returns full string definition for message of type 'SendQRMatrix-request"
  (cl:format cl:nil "int64 channel~%int64[121] matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendQRMatrix-request>))
  (cl:+ 0
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendQRMatrix-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendQRMatrix-request
    (cl:cons ':channel (channel msg))
    (cl:cons ':matrix (matrix msg))
))
;//! \htmlinclude SendQRMatrix-response.msg.html

(cl:defclass <SendQRMatrix-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendQRMatrix-response (<SendQRMatrix-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendQRMatrix-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendQRMatrix-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-srv:<SendQRMatrix-response> is deprecated: use iarc_msgs-srv:SendQRMatrix-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <SendQRMatrix-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-srv:feedback-val is deprecated.  Use iarc_msgs-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendQRMatrix-response>) ostream)
  "Serializes a message object of type '<SendQRMatrix-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendQRMatrix-response>) istream)
  "Deserializes a message object of type '<SendQRMatrix-response>"
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendQRMatrix-response>)))
  "Returns string type for a service object of type '<SendQRMatrix-response>"
  "iarc_msgs/SendQRMatrixResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendQRMatrix-response)))
  "Returns string type for a service object of type 'SendQRMatrix-response"
  "iarc_msgs/SendQRMatrixResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendQRMatrix-response>)))
  "Returns md5sum for a message object of type '<SendQRMatrix-response>"
  "fd173312d52f41d9b2e7080c044e0769")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendQRMatrix-response)))
  "Returns md5sum for a message object of type 'SendQRMatrix-response"
  "fd173312d52f41d9b2e7080c044e0769")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendQRMatrix-response>)))
  "Returns full string definition for message of type '<SendQRMatrix-response>"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendQRMatrix-response)))
  "Returns full string definition for message of type 'SendQRMatrix-response"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendQRMatrix-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendQRMatrix-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendQRMatrix-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendQRMatrix)))
  'SendQRMatrix-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendQRMatrix)))
  'SendQRMatrix-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendQRMatrix)))
  "Returns string type for a service object of type '<SendQRMatrix>"
  "iarc_msgs/SendQRMatrix")