#include <string>
#include <memory>
#include <exception>

#include <ros/ros.h>

#include "order_controller.h"

std::unique_ptr<OrderController> order_ctrl;

void orderReceived(const ros_opencart::Order& order) {
  try {
    order_ctrl->sendOrder(order);

  } catch (const std::exception& ex) {
    ROS_ERROR("Error sending order (%s)", ex.what());
  }
}

int main(int argc, char** argv) {
  ros::init(argc, argv, "order_controller"); 

  ros::NodeHandle nh;

  std::string order_topic;
  nh.param("order_topic", order_topic, std::string("/orderinfo"));

  std::string refbox_host;
  nh.param("refbox_host", refbox_host, std::string("localhost"));
  int refbox_port;
  nh.param("refbox_port", refbox_port, 4444);
  std::string message_path;
  nh.param("message_path", message_path, std::string("/refbox/src/msgs"));

  ros::Subscriber order_sub = nh.subscribe(order_topic, 1, &orderReceived);

  order_ctrl = std::make_unique<OrderController>(message_path);
  order_ctrl->setRefboxHost(refbox_host);
  order_ctrl->setPort(static_cast<uint32_t>(refbox_port));

  order_ctrl->connect();

  //--wait for connection
  ros::Rate rate(100.);
  while(!order_ctrl->isConnected())
    rate.sleep();

  ROS_INFO("Conneced to refbox at %s:%d", refbox_host.c_str(), refbox_port);

  while(ros::ok())
    ros::spinOnce();
 
  try { 
    order_ctrl->disconnect();
    ROS_INFO("Disconnected from refbox.");

  } catch (const std::exception& ex) {
    ROS_ERROR("Error during disconnection (%s)", ex.what());
  }

  return 0;
}
