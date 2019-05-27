#include <string>
#include <vector>
#include <set>

#include <ros/ros.h>

#include <ros_opencart/GetCurrentOrders.h>
#include <ros_opencart/UpdateOrder.h>
#include <ros_opencart/Order.h>
#include <ros_opencart/Item.h>

const std::string PENDING = "pending";
const std::string SHIPPED ="shipped";

int main(int argc, char **argv)
{
  ros::init(argc, argv, "order_polling");

  ros::NodeHandle n("~");

  double pollfrq;
  std::string service_topic;
  std::string update_topic;
  std::string order_topic;
  n.param<double>("poll_frq", pollfrq, 1.);
  n.param<std::string>("service_topic", service_topic, std::string("/ordersrc"));
  n.param<std::string>("update_topic", update_topic, std::string("/updateorder"));
  n.param<std::string>("order_topic", order_topic, std::string("/orderdst"));

  ROS_INFO("%s: poll_frq = %f", ros::this_node::getName().c_str(), pollfrq);
  ROS_INFO("%s: service_topic = %s", ros::this_node::getName().c_str(), service_topic.c_str());
  ROS_INFO("%s: update_topic = %s", ros::this_node::getName().c_str(), update_topic.c_str());
  ROS_INFO("%s: order_topic = %s", ros::this_node::getName().c_str(), order_topic.c_str());

  ros::Publisher pub = n.advertise<ros_opencart::Order>(order_topic, 1, true); 
  ros::ServiceClient client = n.serviceClient<ros_opencart::GetCurrentOrders>(service_topic);
  ros::ServiceClient update_client = n.serviceClient<ros_opencart::UpdateOrder>(update_topic);
  ros_opencart::GetCurrentOrders service;

  ros_opencart::UpdateOrder updateService;
  updateService.request.status = SHIPPED;

  ros::Rate rate(pollfrq);
  while(ros::ok()) {
    //-- request orders
    if(client.call(service)) {
      if(service.response.errorcode) {
        ROS_ERROR("Error receiving Opencart service response: %s (%d)", 
	  service.response.errormsg, service.response.errorcode);

      } else {
        std::vector<ros_opencart::Order> orders(service.response.orders);

        //-- forward all pending orders
	for(const ros_opencart::Order& order : orders) {
          std::string status = order.status;
          std::transform(status.begin(), status.end(), status.begin(), ::tolower);

          if(status.compare(PENDING) == 0) {
            ROS_INFO("Forwarding order (%d)", order.id);
	    pub.publish(order);

            //-- update farwarded order to shipped
            updateService.request.id = order.id;
            if(!update_client.call(updateService) || updateService.response.errorcode) {
              ROS_ERROR("Could not update order %d status to shipped (%s)", order.id, updateService.response.errormsg.c_str());
            }
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
