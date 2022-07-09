; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-msg)


;//! \htmlinclude QRCode.msg.html

(cl:defclass <QRCode> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass QRCode (<QRCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QRCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QRCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-msg:<QRCode> is deprecated: use iarc_msgs-msg:QRCode instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <QRCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:code-val is deprecated.  Use iarc_msgs-msg:code instead.")
  (code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QRCode>) ostream)
  "Serializes a message object of type '<QRCode>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QRCode>) istream)
  "Deserializes a message object of type '<QRCode>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QRCode>)))
  "Returns string type for a message object of type '<QRCode>"
  "iarc_msgs/QRCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QRCode)))
  "Returns string type for a message object of type 'QRCode"
  "iarc_msgs/QRCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QRCode>)))
  "Returns md5sum for a message object of type '<QRCode>"
  "fdbad0f70adc75d9bbd4ce667ab39d53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QRCode)))
  "Returns md5sum for a message object of type 'QRCode"
  "fdbad0f70adc75d9bbd4ce667ab39d53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QRCode>)))
  "Returns full string definition for message of type '<QRCode>"
  (cl:format cl:nil "int64[4] code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QRCode)))
  "Returns full string definition for message of type 'QRCode"
  (cl:format cl:nil "int64[4] code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QRCode>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'code) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QRCode>))
  "Converts a ROS message object to a list"
  (cl:list 'QRCode
    (cl:cons ':code (code msg))
))
