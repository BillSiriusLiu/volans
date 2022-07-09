# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "iarc_msgs: 11 messages, 6 services")

set(MSG_I_FLAGS "-Iiarc_msgs:/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(iarc_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv" ""
)

get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv" NAME_WE)
add_custom_target(_iarc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iarc_msgs" "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)

### Generating Services
_generate_srv_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_cpp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
)

### Generating Module File
_generate_module_cpp(iarc_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(iarc_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(iarc_msgs_generate_messages iarc_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_cpp _iarc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iarc_msgs_gencpp)
add_dependencies(iarc_msgs_gencpp iarc_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iarc_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_msg_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)

### Generating Services
_generate_srv_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_srv_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_srv_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_srv_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_srv_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)
_generate_srv_eus(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
)

### Generating Module File
_generate_module_eus(iarc_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(iarc_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(iarc_msgs_generate_messages iarc_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_eus _iarc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iarc_msgs_geneus)
add_dependencies(iarc_msgs_geneus iarc_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iarc_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_msg_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)

### Generating Services
_generate_srv_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)
_generate_srv_lisp(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
)

### Generating Module File
_generate_module_lisp(iarc_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(iarc_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(iarc_msgs_generate_messages iarc_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_lisp _iarc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iarc_msgs_genlisp)
add_dependencies(iarc_msgs_genlisp iarc_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iarc_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_msg_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)

### Generating Services
_generate_srv_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_srv_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_srv_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_srv_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_srv_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)
_generate_srv_nodejs(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
)

### Generating Module File
_generate_module_nodejs(iarc_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(iarc_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(iarc_msgs_generate_messages iarc_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_nodejs _iarc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iarc_msgs_gennodejs)
add_dependencies(iarc_msgs_gennodejs iarc_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iarc_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_msg_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)

### Generating Services
_generate_srv_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_srv_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_srv_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_srv_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_srv_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)
_generate_srv_py(iarc_msgs
  "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
)

### Generating Module File
_generate_module_py(iarc_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(iarc_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(iarc_msgs_generate_messages iarc_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/GetData.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pose.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Command.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRMatrix.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QRCode.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Pwm.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/RoiPos.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadState.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/QuadVelocity.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_Cure.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/msg/Start_QRScan.msg" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/HandSignal.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendCommand.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendPose.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRMatrix.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/SendQRCode.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/billliu/trials/volans/src/mid/image_process/ros_kcf/iarc_msgs/srv/StartCure.srv" NAME_WE)
add_dependencies(iarc_msgs_generate_messages_py _iarc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iarc_msgs_genpy)
add_dependencies(iarc_msgs_genpy iarc_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iarc_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iarc_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(iarc_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iarc_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(iarc_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iarc_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(iarc_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iarc_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(iarc_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iarc_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(iarc_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
