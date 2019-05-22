#include <string>

#include <ros/ros.h>

#include <ros_opencart/GetCurrentOrders.h>
#include <ros_opencart/Order.h>
#include <ros_opencart/Item.h>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "order_polling");

  ros::NodeHandle n;

  double pollfrq;
  std::string service_topic;
  std::string order_topic;
  n.param<double>("poll_frq", pollfrq, 1.);
  n.param<std::string>("service_topic", service_topic, std::string("/ordersrc"));
  n.param<std::string>("order_topic", order_topic, std::string("/orderdst"));
 
  ros::Publisher pub = n.advertise<ros_opencart::Order>(order_topic, 1); 
  ros::ServiceClient client = n.serviceClient<ros_opencart::GetCurrentOrders>("add_two_ints");
  ros_opencart::GetCurrentOrders service;

  ros::Rate rate(pollfrq);
  while(ros::ok()) {
    if(client.call(service)) {
      //-- TODO: * get order obj from service.response
      //--       * publish order
      //--       * mark order id as already forwared... somehow
    }

    ros::spinOnce();
    rate.sleep();
  }

  return 0;
}
