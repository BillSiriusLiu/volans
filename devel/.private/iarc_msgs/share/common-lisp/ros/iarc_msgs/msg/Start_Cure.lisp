; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-msg)


;//! \htmlinclude Start_Cure.msg.html

(cl:defclass <Start_Cure> (roslisp-msg-protocol:ros-message)
  ((start_cure
    :reader start_cure
    :initarg :start_cure
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Start_Cure (<Start_Cure>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Start_Cure>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Start_Cure)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-msg:<Start_Cure> is deprecated: use iarc_msgs-msg:Start_Cure instead.")))

(cl:ensure-generic-function 'start_cure-val :lambda-list '(m))
(cl:defmethod start_cure-val ((m <Start_Cure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:start_cure-val is deprecated.  Use iarc_msgs-msg:start_cure instead.")
  (start_cure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Start_Cure>) ostream)
  "Serializes a message object of type '<Start_Cure>"
  (cl:let* ((signed (cl:slot-value msg 'start_cure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Start_Cure>) istream)
  "Deserializes a message object of type '<Start_Cure>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_cure) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Start_Cure>)))
  "Returns string type for a message object of type '<Start_Cure>"
  "iarc_msgs/Start_Cure")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Start_Cure)))
  "Returns string type for a message object of type 'Start_Cure"
  "iarc_msgs/Start_Cure")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Start_Cure>)))
  "Returns md5sum for a message object of type '<Start_Cure>"
  "12fc1e224eb302516363b13510ed18b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Start_Cure)))
  "Returns md5sum for a message object of type 'Start_Cure"
  "12fc1e224eb302516363b13510ed18b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Start_Cure>)))
  "Returns full string definition for message of type '<Start_Cure>"
  (cl:format cl:nil "int8 start_cure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Start_Cure)))
  "Returns full string definition for message of type 'Start_Cure"
  (cl:format cl:nil "int8 start_cure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Start_Cure>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Start_Cure>))
  "Converts a ROS message object to a list"
  (cl:list 'Start_Cure
    (cl:cons ':start_cure (start_cure msg))
))
