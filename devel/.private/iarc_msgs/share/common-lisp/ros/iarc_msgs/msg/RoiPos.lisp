; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-msg)


;//! \htmlinclude RoiPos.msg.html

(cl:defclass <RoiPos> (roslisp-msg-protocol:ros-message)
  ((detectornot
    :reader detectornot
    :initarg :detectornot
    :type cl:boolean
    :initform cl:nil)
   (dx
    :reader dx
    :initarg :dx
    :type cl:float
    :initform 0.0)
   (dy
    :reader dy
    :initarg :dy
    :type cl:float
    :initform 0.0))
)

(cl:defclass RoiPos (<RoiPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoiPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoiPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-msg:<RoiPos> is deprecated: use iarc_msgs-msg:RoiPos instead.")))

(cl:ensure-generic-function 'detectornot-val :lambda-list '(m))
(cl:defmethod detectornot-val ((m <RoiPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:detectornot-val is deprecated.  Use iarc_msgs-msg:detectornot instead.")
  (detectornot m))

(cl:ensure-generic-function 'dx-val :lambda-list '(m))
(cl:defmethod dx-val ((m <RoiPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:dx-val is deprecated.  Use iarc_msgs-msg:dx instead.")
  (dx m))

(cl:ensure-generic-function 'dy-val :lambda-list '(m))
(cl:defmethod dy-val ((m <RoiPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:dy-val is deprecated.  Use iarc_msgs-msg:dy instead.")
  (dy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoiPos>) ostream)
  "Serializes a message object of type '<RoiPos>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detectornot) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoiPos>) istream)
  "Deserializes a message object of type '<RoiPos>"
    (cl:setf (cl:slot-value msg 'detectornot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dy) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoiPos>)))
  "Returns string type for a message object of type '<RoiPos>"
  "iarc_msgs/RoiPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoiPos)))
  "Returns string type for a message object of type 'RoiPos"
  "iarc_msgs/RoiPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoiPos>)))
  "Returns md5sum for a message object of type '<RoiPos>"
  "2b3f1c225c207c4782cf386506f6493e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoiPos)))
  "Returns md5sum for a message object of type 'RoiPos"
  "2b3f1c225c207c4782cf386506f6493e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoiPos>)))
  "Returns full string definition for message of type '<RoiPos>"
  (cl:format cl:nil "bool detectornot~%float64 dx~%float64 dy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoiPos)))
  "Returns full string definition for message of type 'RoiPos"
  (cl:format cl:nil "bool detectornot~%float64 dx~%float64 dy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoiPos>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoiPos>))
  "Converts a ROS message object to a list"
  (cl:list 'RoiPos
    (cl:cons ':detectornot (detectornot msg))
    (cl:cons ':dx (dx msg))
    (cl:cons ':dy (dy msg))
))
