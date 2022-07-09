; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-msg)


;//! \htmlinclude Pwm.msg.html

(cl:defclass <Pwm> (roslisp-msg-protocol:ros-message)
  ((roll
    :reader roll
    :initarg :roll
    :type cl:fixnum
    :initform 0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:fixnum
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Pwm (<Pwm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pwm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pwm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-msg:<Pwm> is deprecated: use iarc_msgs-msg:Pwm instead.")))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <Pwm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:roll-val is deprecated.  Use iarc_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Pwm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:pitch-val is deprecated.  Use iarc_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Pwm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:yaw-val is deprecated.  Use iarc_msgs-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pwm>) ostream)
  "Serializes a message object of type '<Pwm>"
  (cl:let* ((signed (cl:slot-value msg 'roll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pwm>) istream)
  "Deserializes a message object of type '<Pwm>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roll) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pwm>)))
  "Returns string type for a message object of type '<Pwm>"
  "iarc_msgs/Pwm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pwm)))
  "Returns string type for a message object of type 'Pwm"
  "iarc_msgs/Pwm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pwm>)))
  "Returns md5sum for a message object of type '<Pwm>"
  "4bb90c46f846e8a977ec5c9f53409803")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pwm)))
  "Returns md5sum for a message object of type 'Pwm"
  "4bb90c46f846e8a977ec5c9f53409803")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pwm>)))
  "Returns full string definition for message of type '<Pwm>"
  (cl:format cl:nil "int16 roll~%int16 pitch~%int16 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pwm)))
  "Returns full string definition for message of type 'Pwm"
  (cl:format cl:nil "int16 roll~%int16 pitch~%int16 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pwm>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pwm>))
  "Converts a ROS message object to a list"
  (cl:list 'Pwm
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
))
