; Auto-generated. Do not edit!


(cl:in-package iarc_msgs-msg)


;//! \htmlinclude QuadState.msg.html

(cl:defclass <QuadState> (roslisp-msg-protocol:ros-message)
  ((quad_state
    :reader quad_state
    :initarg :quad_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass QuadState (<QuadState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iarc_msgs-msg:<QuadState> is deprecated: use iarc_msgs-msg:QuadState instead.")))

(cl:ensure-generic-function 'quad_state-val :lambda-list '(m))
(cl:defmethod quad_state-val ((m <QuadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iarc_msgs-msg:quad_state-val is deprecated.  Use iarc_msgs-msg:quad_state instead.")
  (quad_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadState>) ostream)
  "Serializes a message object of type '<QuadState>"
  (cl:let* ((signed (cl:slot-value msg 'quad_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadState>) istream)
  "Deserializes a message object of type '<QuadState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quad_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadState>)))
  "Returns string type for a message object of type '<QuadState>"
  "iarc_msgs/QuadState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadState)))
  "Returns string type for a message object of type 'QuadState"
  "iarc_msgs/QuadState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadState>)))
  "Returns md5sum for a message object of type '<QuadState>"
  "49b8231aaa41ecfdd614616186a40519")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadState)))
  "Returns md5sum for a message object of type 'QuadState"
  "49b8231aaa41ecfdd614616186a40519")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadState>)))
  "Returns full string definition for message of type '<QuadState>"
  (cl:format cl:nil "int8 quad_state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadState)))
  "Returns full string definition for message of type 'QuadState"
  (cl:format cl:nil "int8 quad_state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadState>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadState
    (cl:cons ':quad_state (quad_state msg))
))
