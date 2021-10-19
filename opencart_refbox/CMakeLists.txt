cmake_minimum_required(VERSION 2.8.3)
project(opencart_refbox)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++14)

find_package(catkin REQUIRED COMPONENTS
  ros_opencart
  roscpp
)
find_package(Boost REQUIRED COMPONENTS
  system
)
find_package(Protobuf REQUIRED)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES opencart_refbox
#  CATKIN_DEPENDS ros_opencart roscpp
#  DEPENDS system_lib
)


set(refbox_INCLUDE_DIRS "${REFBOX_PATH}/src/libs;${REFBOX_PATH}/src/")
set(refbox_LIBRARY_DIRS "${REFBOX_PATH}/lib/;${REFBOX_PATH}/lib/protobuf/")
set(refbox_LIBRARIES "llsf_protobuf_comm;llsf_msgs;llsf_log_msgs")
set(clips_INCLUDE_DIRS "/usr/include/clipsmm-0.3/;/usr/include/clips;/usr/include/glibmm-2.4;/usr/lib64/glibmm-2.4/include;/usr/include/glib-2.0;/usr/lib64/glib-2.0/include;/usr/include/sigc++-2.0;/usr/lib64/sigc++-2.0/include")


include_directories(
  ${catkin_INCLUDE_DIRS}
  ${clips_INCLUDE_DIRS}
  ${refbox_INCLUDE_DIRS}
)

link_directories(
  ${refbox_LIBRARY_DIRS}
  ${Boost_INCLUDE_DIR}
)


add_executable(order_node src/order_node.cpp src/order_controller.cpp)
add_executable(order_polling src/order_polling.cpp)

target_link_libraries(order_node
  ${catkin_LIBRARIES}
  ${refbox_LIBRARIES}
  ${Boost_LIBRARIES}
  ${Protobuf_LIBRARIES}
)

target_link_libraries(order_polling
  ${catkin_LIBRARIES}
)

add_dependencies(order_node ros_opencart ros_opencart_gencpp)
add_dependencies(order_polling ros_opencart ros_opencart_gencpp)
