; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-msg)


;//! \htmlinclude QuadVelocity.msg.html

(cl:defclass <QuadVelocity> (roslisp-msg-protocol:ros-message)
  ((vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuadVelocity (<QuadVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-msg:<QuadVelocity> is deprecated: use iarc_msgs-msg:QuadVelocity instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <QuadVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:vx-val is deprecated.  Use iarc_msgs-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <QuadVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:vy-val is deprecated.  Use iarc_msgs-msg:vy instead.")
  (vy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadVelocity>) ostream)
  "Serializes a message object of type '<QuadVelocity>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadVelocity>) istream)
  "Deserializes a message object of type '<QuadVelocity>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadVelocity>)))
  "Returns string type for a message object of type '<QuadVelocity>"
  "iarc_msgs/QuadVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadVelocity)))
  "Returns string type for a message object of type 'QuadVelocity"
  "iarc_msgs/QuadVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadVelocity>)))
  "Returns md5sum for a message object of type '<QuadVelocity>"
  "95d7cdcc3a89a9361eb29eff06cd1058")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadVelocity)))
  "Returns md5sum for a message object of type 'QuadVelocity"
  "95d7cdcc3a89a9361eb29eff06cd1058")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadVelocity>)))
  "Returns full string definition for message of type '<QuadVelocity>"
  (cl:format cl:nil "float64 vx~%float64 vy~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadVelocity)))
  "Returns full string definition for message of type 'QuadVelocity"
  (cl:format cl:nil "float64 vx~%float64 vy~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadVelocity>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadVelocity
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
))
