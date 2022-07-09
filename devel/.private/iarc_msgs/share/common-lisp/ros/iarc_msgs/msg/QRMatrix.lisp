; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-msg)


;//! \htmlinclude QRMatrix.msg.html

(cl:defclass <QRMatrix> (roslisp-msg-protocol:ros-message)
  ((matrix
    :reader matrix
    :initarg :matrix
    :type (cl:vector cl:integer)
   :initform (cl:make-array 121 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass QRMatrix (<QRMatrix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QRMatrix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QRMatrix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-msg:<QRMatrix> is deprecated: use iarc_msgs-msg:QRMatrix instead.")))

(cl:ensure-generic-function 'matrix-val :lambda-list '(m))
(cl:defmethod matrix-val ((m <QRMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:matrix-val is deprecated.  Use iarc_msgs-msg:matrix instead.")
  (matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QRMatrix>) ostream)
  "Serializes a message object of type '<QRMatrix>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QRMatrix>) istream)
  "Deserializes a message object of type '<QRMatrix>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QRMatrix>)))
  "Returns string type for a message object of type '<QRMatrix>"
  "iarc_msgs/QRMatrix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QRMatrix)))
  "Returns string type for a message object of type 'QRMatrix"
  "iarc_msgs/QRMatrix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QRMatrix>)))
  "Returns md5sum for a message object of type '<QRMatrix>"
  "6613d284da8b77ddadc769d602bc297f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QRMatrix)))
  "Returns md5sum for a message object of type 'QRMatrix"
  "6613d284da8b77ddadc769d602bc297f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QRMatrix>)))
  "Returns full string definition for message of type '<QRMatrix>"
  (cl:format cl:nil "int64[121] matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QRMatrix)))
  "Returns full string definition for message of type 'QRMatrix"
  (cl:format cl:nil "int64[121] matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QRMatrix>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QRMatrix>))
  "Converts a ROS message object to a list"
  (cl:list 'QRMatrix
    (cl:cons ':matrix (matrix msg))
))
