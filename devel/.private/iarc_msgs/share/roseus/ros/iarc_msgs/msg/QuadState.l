;; Auto-generated. Do not edit!


(when (boundp 'iarc_msgs::QuadState)
  (if (not (find-package "IARC_MSGS"))
    (make-package "IARC_MSGS"))
  (shadow 'QuadState (find-package "IARC_MSGS")))
(unless (find-package "IARC_MSGS::QUADSTATE")
  (make-package "IARC_MSGS::QUADSTATE"))

(in-package "ROS")
;;//! \htmlinclude QuadState.msg.html


(defclass iarc_msgs::QuadState
  :super ros::object
  :slots (_quad_state ))

(defmethod iarc_msgs::QuadState
  (:init
   (&key
    ((:quad_state __quad_state) 0)
    )
   (send-super :init)
   (setq _quad_state (round __quad_state))
   self)
  (:quad_state
   (&optional __quad_state)
   (if __quad_state (setq _quad_state __quad_state)) _quad_state)
  (:serialization-length
   ()
   (+
    ;; int8 _quad_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _quad_state
       (write-byte _quad_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _quad_state
     (setq _quad_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _quad_state 127) (setq _quad_state (- _quad_state 256)))
   ;;
   self)
  )

(setf (get iarc_msgs::QuadState :md5sum-) "49b8231aaa41ecfdd614616186a40519")
(setf (get iarc_msgs::QuadState :datatype-) "iarc_msgs/QuadState")
(setf (get iarc_msgs::QuadState :definition-)
      "int8 quad_state
")



(provide :iarc_msgs/QuadState "49b8231aaa41ecfdd614616186a40519")


