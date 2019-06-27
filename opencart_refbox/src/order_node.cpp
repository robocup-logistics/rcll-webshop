#include <string>
#include <memory>
#include <exception>
#include <map>

#include <ros/ros.h>

#include <ros_opencart/UpdateOrder.h>

#include "order_controller.h"

std::unique_ptr<OrderController> order_ctrl;
ros::ServiceClient* update_client;
std::map<int, ros_opencart::Order> order_queue;


void orderReceived(const ros_opencart::Order& order) {
  std::map<int, ros_opencart::Order>::iterator enqueued = order_queue.find(order.id);
  if(enqueued == order_queue.end()) {
    order_queue.insert(std::make_pair(order.id, order));
  }
}

void process_order(const ros_opencart::Order& order) {
  try {
    //-- pass incoming order to controller
    ROS_INFO("Recieved Order Message (%d)", order.id);
    order_ctrl->sendOrder(order);

    //-- create status update request
    ros_opencart::UpdateOrder updateService;
    updateService.request.status = "processing";

    //-- querry status update
    updateService.request.id = order.id;
    if(!update_client->call(updateService) || updateService.response.errorcode) {
      ROS_ERROR("Could not update order %d status to %s (%s)", order.id, updateService.request.status.c_str(), updateService.response.errormsg.c_str());
    }

  } catch (const std::exception& ex) {
    ROS_ERROR("Error sending order (%s)", ex.what());
  }
}

void update_order_delivered(uint32_t ext_order_id) {
  ROS_INFO("Order %d was delivered", ext_order_id);

  //-- create status update request
  ros_opencart::UpdateOrder updateService;
  updateService.request.status = "complete";

  //-- querry status update
  updateService.request.id = ext_order_id;
  if(!update_client->call(updateService) || updateService.response.errorcode) {
    ROS_ERROR("Could not update order %d status to %s (%s)", ext_order_id, updateService.request.status.c_str(), updateService.response.errormsg.c_str());
  }
}

int main(int argc, char** argv) {
  ros::init(argc, argv, "order_controller"); 

  ros::NodeHandle nh("~");

  std::string order_topic;
  nh.param("order_topic", order_topic, std::string("/orderinfo"));

  std::string update_topic;
  nh.param<std::string>("update_topic", update_topic, std::string("/updateorder"));
  ROS_INFO("%s: update_topic = %s", ros::this_node::getName().c_str(), update_topic.c_str());

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
  order_ctrl->delivered_callback = &update_order_delivered;

  order_ctrl->connect();

  //--wait for connection
  std::string connection_err_msg;
  bool connection_err;
  ros::Rate rate(100.);
  while(!order_ctrl->isConnected() && !(connection_err = order_ctrl->getLastError(connection_err_msg)))
    rate.sleep();

  if(connection_err) {
    ROS_ERROR("%s: %s. Shutting down.", ros::this_node::getName().c_str(), connection_err_msg.c_str());
    return 0;
  }

  ROS_INFO("Conneced to refbox at %s:%d", refbox_host.c_str(), refbox_port);

  //-- create service client controller
  ros::ServiceClient hack = nh.serviceClient<ros_opencart::UpdateOrder>(update_topic);
  update_client = &hack;

  while(ros::ok()) {
    ros::spinOnce();

    if(!order_queue.empty()) {
      for(const std::pair<int, ros_opencart::Order>& orderpair : order_queue) {
        const ros_opencart::Order& order = orderpair.second;
        process_order(order);
      }
      order_queue.clear();
    }

    rate.sleep();
  }
 
  try { 
    order_ctrl->disconnect();
    ROS_INFO("Disconnected from refbox.");

  } catch (const std::exception& ex) {
    ROS_ERROR("Error during disconnection (%s)", ex.what());
  }

  return 0;
}
