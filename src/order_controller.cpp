#include <vector>
#include <string>
#include <exception>
#include <algorithm>

#include "order_controller.h"

#include <ros/ros.h>

OrderController::OrderController(const std::string& path) 
  : m_msgpath(path)
  , m_connected(false)
  , m_connection(nullptr)
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
}

void OrderController::convertOrderInfo(const ros_opencart::Order& in_order, llsf_msgs::OrderInfo& out_orders) {

  //-- build dummy order
  llsf_msgs::Order order;

  bool base_appeared = false;
  bool base_color_err = false;
  bool cap_appeared = false;
  bool cap_color_err = false;
  uint8_t ring_count = 0;
  bool ring_color_err = false;

  //-- compose refbox order from message
  for(const ros_opencart::Item& item : in_order.items) {
    std::string model = item.model;
    std::transform(model.begin(), model.end(), model.begin(), ::tolower);

    if(model.substr(0,4).compare("cap_") == 0 && !cap_appeared) {
      std::string colorstr = model.substr(4);

      llsf_msgs::CapColor color;
      if(colorstr.compare("black") == 0)
        color = llsf_msgs::CapColor::CAP_BLACK;
      else if(colorstr.compare("gray") == 0)
        color = llsf_msgs::CapColor::CAP_GREY;

      else {
	std::stringstream errmsg;
	errmsg << "Unknown CAP_COLOR (" << model << ")"; 
	throw std::runtime_error(errmsg.str());
      }

      order.set_cap_color(color);
      cap_appeared = true;

    } else if(model.substr(0,5).compare("base_") == 0 && !base_appeared) {
      std::string colorstr = model.substr(5);

      llsf_msgs::BaseColor color;
      if(colorstr.compare("red") == 0)
        color = llsf_msgs::BaseColor::BASE_RED;

      else if(colorstr.compare("black") == 0)
        color = llsf_msgs::BaseColor::BASE_BLACK;

      else if(colorstr.compare("silver") == 0)
        color = llsf_msgs::BaseColor::BASE_SILVER;
      
      else {
	std::stringstream errmsg;
	errmsg << "Unknown BASE_COLOR (" << model << ")"; 
	throw std::runtime_error(errmsg.str());
      }

      order.set_base_color(color);
      base_appeared = true;

    } else if(model.substr(0,5).compare("ring_") == 0) {
      std::string colorstr = model.substr(5);

      llsf_msgs::RingColor color;
      if(colorstr.compare("blue") == 0)
        color = llsf_msgs::RingColor::RING_BLUE;

      else if(colorstr.compare("green") == 0)
        color = llsf_msgs::RingColor::RING_GREEN;

      else if(colorstr.compare("orange") == 0)
        color = llsf_msgs::RingColor::RING_ORANGE;

      else if(colorstr.compare("yellow") == 0)
        color = llsf_msgs::RingColor::RING_YELLOW;

      else {
	std::stringstream errmsg;
	errmsg << "Unknown RING_COLOR (" << model << ")"; 
	throw std::runtime_error(errmsg.str());
      }

      order.add_ring_colors(color);
      ring_count++;

    } else {
	std::stringstream errmsg;
	errmsg << "Unknown model (" << model << ")"; 
	throw std::runtime_error(errmsg.str());
    }
  }

  //-- invalid order
  if(!base_appeared)
    throw std::runtime_error("Base is missing.");

  else if(!cap_appeared)
    throw std::runtime_error("Cap is missing.");

  else if(ring_count > 3) {
    std::stringstream errmsg;
    errmsg << "To many rings added. max is 3 got " << ring_count;
    throw std::runtime_error(errmsg.str());
  }

  switch(ring_count) {
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

  //-- this is ignored by refbox, anyways
  order.set_id(1337);
  order.set_delivery_gate(1);
  order.set_delivery_period_begin(1);
  order.set_delivery_period_end(2);
  order.set_quantity_delivered_cyan(0);
  order.set_quantity_delivered_magenta(0);
  order.set_competitive(false);

  order.set_quantity_requested(1);

  llsf_msgs::Order* orderlist = out_orders.add_orders();
  orderlist[0] = order;
}

void OrderController::connected() {
  m_connected = true;
}

void OrderController::disconnected(const boost::system::error_code& err) {
  m_connected = false;
  if(!(!err))
    throw std::runtime_error(err.message());
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

