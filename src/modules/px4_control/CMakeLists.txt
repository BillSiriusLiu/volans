cmake_minimum_required(VERSION 2.8.3)
project(px4_control)

## Compile as C++11, supported in ROS Kinetic and newer
 add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  message_generation  
  roscpp
  geometry_msgs
  sensor_msgs
  mavros
  nav_msgs
  std_msgs
  std_srvs
  tf2_ros
  tf2_eigen
  mavros_msgs
  actionlib
  trajectory_msgs
  pluginlib
)
find_package(cmake_modules REQUIRED)
find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIR})
add_definitions(${EIGEN_DEFINITIONS})

catkin_package(
 INCLUDE_DIRS include
#  LIBRARIES vision_to_mavros
#  CATKIN_DEPENDS roscpp rospy tf
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)


add_executable(position_to_mavros_node src/position_to_mavros.cpp)
add_executable(set_mode_node src/set_mode.cpp)
add_executable(collision_avoidance_vfh_node src/collision_avoidance_vfh.cpp)
add_executable(avoidance_car_vfh_node src/avoidance_car_vfh.cpp)
add_executable(collision_avoidance_matlabvfh_node src/collision_avoidance_matlabvfh.cpp)
add_executable(circular_node src/circular.cpp)
add_executable(circular_car_node src/circular_car.cpp)
add_executable(ros_nav_quadrotor_node src/ros_nav_quadrotor.cpp)
add_executable(mission_car_offboard_node src/mission_car_offboard.cpp)
add_executable(landing_quadrotor_node src/landing_quadrotor.cpp)
add_executable(tracking_ardupilot_node src/tracking_ardupilot.cpp)
add_executable(tracking_quadrotor_node src/tracking_quadrotor.cpp)
add_executable(tracking_down_kcf_quadrotor_node src/tracking_down__kcf_quadrotor.cpp)
add_executable(auto_2d_nav_node src/auto_2d_nav.cpp)
add_executable(simulinkVFH_node src/simulinkVFH.cpp)
add_executable(omplControlPx4_node src/omplControlPx4.cpp)

## Specify libraries to link a library or executable target against

target_link_libraries(position_to_mavros_node
  ${catkin_LIBRARIES}
)
target_link_libraries(set_mode_node
  ${catkin_LIBRARIES}
)
target_link_libraries(collision_avoidance_vfh_node
  ${catkin_LIBRARIES}
)
target_link_libraries(avoidance_car_vfh_node
  ${catkin_LIBRARIES}
)
target_link_libraries(collision_avoidance_matlabvfh_node
  ${catkin_LIBRARIES}
)
target_link_libraries(circular_node
  ${catkin_LIBRARIES}
)
target_link_libraries(circular_car_node
  ${catkin_LIBRARIES}
)
target_link_libraries(ros_nav_quadrotor_node
  ${catkin_LIBRARIES}
)
target_link_libraries(mission_car_offboard_node
  ${catkin_LIBRARIES}
)
target_link_libraries(landing_quadrotor_node
  ${catkin_LIBRARIES}
)
target_link_libraries(tracking_quadrotor_node
  ${catkin_LIBRARIES}
)
target_link_libraries(tracking_down_kcf_quadrotor_node
  ${catkin_LIBRARIES}
)
target_link_libraries(tracking_ardupilot_node
  ${catkin_LIBRARIES}
)
target_link_libraries(auto_2d_nav_node
  ${catkin_LIBRARIES}
)
target_link_libraries(simulinkVFH_node
  ${catkin_LIBRARIES}
)
target_link_libraries(omplControlPx4_node
  ${catkin_LIBRARIES}
)


## Mark cpp header files for installation
install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
)
## Mark executables and/or libraries for installation
install(TARGETS  position_to_mavros_node
  set_mode_node
  collision_avoidance_vfh_node
  avoidance_car_vfh_node
  collision_avoidance_matlabvfh_node
  circular_node circular_car_node 
  ros_nav_quadrotor_node 
  mission_car_offboard_node
  landing_quadrotor_node
  tracking_quadrotor_node
  tracking_down_kcf_quadrotor_node
  tracking_ardupilot_node
  auto_2d_nav_node
  simulinkVFH_node
  omplControlPx4_node
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY
  launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
