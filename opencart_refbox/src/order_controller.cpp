#include <vector>
#include <string>
#include <exception>
#include <algorithm>

#include <iostream>

#include "order_controller.h"

#include <ros/ros.h>

OrderController::OrderController(const std::string& path) 
  : m_msgpath(path)
  , m_connected(false)
  , m_connection(nullptr)
  , transmitted_callback([] (uint32_t) -> void {})
  , delivered_callback([] (uint32_t) -> void {})
{
  initConnectionObj();
}


void OrderController::initConnectionObj() {
  std::vector<std::string> paths = {m_msgpath};
  m_connection = std::make_unique<protobuf_comm::ProtobufStreamClient>(paths); 
  m_connection->signal_connected().connect(
		  boost::bind(&OrderController::connected, boost::ref(*this))
		  );
  m_connection->signal_disconnected().connect(
		  boost::bind(&OrderController::disconnected, boost::ref(*this), boost::placeholders::_1)
	          );
  m_connection->signal_received().connect(
                  boost::bind(&OrderController::messageResceived
                            , boost::ref(*this)
                            , boost::placeholders::_1
                            , boost::placeholders::_2
                            , boost::placeholders::_3)
                  );
  m_connection->signal_receive_failed().connect(
		  boost::bind(&OrderController::messageResceivedfailed,
			      boost::ref(*this),
			      boost::placeholders::_1,
                              boost::placeholders::_2,
                              boost::placeholders::_3)
		  );
}

void OrderController::convertOrderInfo(const ros_opencart::Order& in_order, llsf_msgs::OrderInfo& out_orders) {
  
  for(const ros_opencart::Item& item : in_order.items) {
    llsf_msgs::Order* orderlist = out_orders.add_orders();
    llsf_msgs::Order order;
  
    //-- set complexity 
    int complexity = item.model[1]-'0';
    switch(complexity) {
      case 0:
        order.set_complexity(llsf_msgs::Order_Complexity::Order_Complexity_C0);
        break;
      case 1:
        order.set_complexity(llsf_msgs::Order_Complexity::Order_Complexity_C1);
        break;
      case 2:
        order.set_complexity(llsf_msgs::Order_Complexity::Order_Complexity_C2);
        break;
      case 3:
        order.set_complexity(llsf_msgs::Order_Complexity::Order_Complexity_C3);
        break;
    };

    //-- determine component colors
    llsf_msgs::BaseColor base_color;
    llsf_msgs::CapColor cap_color;
    std::vector<llsf_msgs::RingColor> ring_colors(complexity);

    for(const ros_opencart::Option& option : item.options) {
      std::string name = option.name;
      std::transform(name.begin(), name.end(), name.begin(), ::tolower);
      
      std::string value = option.value;
      std::transform(value.begin(), value.end(), value.begin(), ::tolower);

      if(!name.substr(0,5).compare("base_")) {
	if(!value.compare("red"))
	  base_color = llsf_msgs::BaseColor::BASE_RED;
	else if(!value.compare("black"))
	  base_color = llsf_msgs::BaseColor::BASE_BLACK;
	else  
  	  base_color = llsf_msgs::BaseColor::BASE_SILVER;

	order.set_base_color(base_color);

      } else if(!name.substr(0,4).compare("cap_")) {
	if(!value.compare("black"))
	  cap_color = llsf_msgs::CapColor::CAP_BLACK;
	else
	  cap_color = llsf_msgs::CapColor::CAP_GREY;
	
	order.set_cap_color(cap_color);
      
      } else if(!name.substr(0,5).compare("ring_")) {
	int ring_idx = name[name.length()-1]-'0'-1;

	if(!value.compare("blue"))
	  ring_colors[ring_idx] = llsf_msgs::RingColor::RING_BLUE;
	else if(!value.compare("green"))
	  ring_colors[ring_idx] = llsf_msgs::RingColor::RING_GREEN;
	else if(!value.compare("orange"))
	  ring_colors[ring_idx] = llsf_msgs::RingColor::RING_ORANGE;
	else  
  	  ring_colors[ring_idx] = llsf_msgs::RingColor::RING_YELLOW;
      }
    }
  
    //-- apply ring colors
    for(llsf_msgs::RingColor rc : ring_colors)
      order.add_ring_colors(rc);

    //-- transmit original order id to react on responses
    //-- THIS WILL NOT WORK FOR MULTIPLE ORDERS IN A SINGLE ORDERINFO AKA. SHOPPINGCART
    order.set_id(in_order.id);
    
    //-- this is ignored by refbox, anyways
    order.set_delivery_gate(1);
    order.set_delivery_period_begin(1);
    order.set_delivery_period_end(2);
    order.set_quantity_delivered_cyan(0);
    order.set_quantity_delivered_magenta(0);
    order.set_competitive(false);

    order.set_quantity_requested(item.quantity);

    orderlist[0] = order;
  }
}

void OrderController::connected() {
  m_connected = true;
}

void OrderController::disconnected(const boost::system::error_code& err) {
  m_connected = false;
  if(!(!err))
    m_last_error = err.message();
}

void OrderController::messageResceivedfailed(uint16_t comp_id, uint16_t msg_type, std::string recv_error){
	ROS_INFO("Error while receiving Msg: (%d):(%d)", comp_id, msg_type);
	ROS_INFO_STREAM("Error Message: " + recv_error);
}

void OrderController::messageResceived(uint16_t comp_id, uint16_t msg_type, std::shared_ptr<google::protobuf::Message> msg) {
	// DEBUG STUFF
	// ROS_INFO("msg_type: (%d)", msg_type);
	// DEBUG_STUFF
  if (msg_type == 43) {
    auto g = std::dynamic_pointer_cast<llsf_msgs::SetOrderDelivered>(msg);
    if (g != nullptr) {
      uint32_t ext_id = g->order_id();
      delivered_callback(ext_id);
      std::cout << "order " << ext_id << " was delivered\n";
    }

  } else if (msg_type == 42) { 
    auto g = std::dynamic_pointer_cast<llsf_msgs::Order>(msg);
    if (g != nullptr) {
      uint32_t ext_id = g->id();
      transmitted_callback(ext_id);
      std::cout << "order " << ext_id << " was transmitted\n";
    }
  } 
  // DEBUG_STUFF
  else if (msg_type != 42 || msg_type != 43) {
	//ROS_INFO("msg_type: (%d)", msg_type);
  }
	// DEBUG_STUFF
}


void OrderController::setRefboxHost(const std::string& host) {
  m_refboxhost = host;
}
const std::string& OrderController::getRefboxHost() {
  return m_refboxhost;
}

void OrderController::setPort(uint32_t port) {
  m_port = port;
}
uint32_t OrderController::getPort() {
 return m_port;
}

bool OrderController::isConnected() {
  return m_connected;
}

bool OrderController::getLastError(std::string& error_msg) {
  error_msg = m_last_error;
  m_last_error = "";
  return error_msg.length() > 0;
}



void OrderController::connect() {
  if(m_connected)
    return;

   m_connection->async_connect(m_refboxhost.c_str(), m_port);
}
void OrderController::disconnect() {
  if(!m_connected)
    return;

  m_connection->disconnect();
}

bool OrderController::sendOrder(const ros_opencart::Order& in_order) {
  if(!m_connected)
    return false;

  llsf_msgs::OrderInfo snd_order;

  try {
    convertOrderInfo(in_order, snd_order);
    m_connection->send(snd_order.COMP_ID, snd_order.MSG_TYPE, snd_order);

  } catch (std::runtime_error& ex) {
    throw ex;
  }

  return true;
}

