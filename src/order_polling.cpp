#include <string>
#include <vector>
#include <set>

#include <ros/ros.h>

#include <ros_opencart/GetCurrentOrders.h>
#include <ros_opencart/Order.h>
#include <ros_opencart/Item.h>

std::set<int32_t> already_forwarded_;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "order_polling");

  ros::NodeHandle n("~");

  double pollfrq;
  std::string service_topic;
  std::string order_topic;
  n.param<double>("poll_frq", pollfrq, 1.);
  n.param<std::string>("service_topic", service_topic, std::string("/ordersrc"));
  n.param<std::string>("order_topic", order_topic, std::string("/orderdst"));

  ROS_INFO("%s: poll_frq = %f", ros::this_node::getName().c_str(), pollfrq);
  ROS_INFO("%s: service_topic = %s", ros::this_node::getName().c_str(), service_topic.c_str());
  ROS_INFO("%s: order_topic = %s", ros::this_node::getName().c_str(), order_topic.c_str());

  ros::Publisher pub = n.advertise<ros_opencart::Order>(order_topic, 1, true); 
  ros::ServiceClient client = n.serviceClient<ros_opencart::GetCurrentOrders>(service_topic);
  ros_opencart::GetCurrentOrders service;

  ros::Rate rate(pollfrq);
  while(ros::ok()) {
    if(client.call(service)) {
      if(service.response.errorcode) {
        ROS_ERROR("Error receiving Opencart service response: %s (%d)", 
	  service.response.errormsg, service.response.errorcode);

      } else {
        std::vector<ros_opencart::Order> orders(service.response.orders);

	for(const ros_opencart::Order& order : orders) {
	  if(already_forwarded_.find(order.id) == already_forwarded_.end()) {
            ROS_INFO("Forwarding order (%d)", order.id);
            already_forwarded_.insert(order.id);
	    pub.publish(order);
	  }
	}
      }

    } else {
       ROS_WARN("Service call failed!");
    }

    ros::spinOnce();
    rate.sleep();
  }

  return 0;
}
