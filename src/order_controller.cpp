#include <vector>
#include <string>
#include <exception>

#include "order_controller.h"

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

bool OrderController::convertOrderInfo(const ros_opencart::Order& in_order, llsf_msgs::OrderInfo& out_orders) {

  //-- build dummy order
  llsf_msgs::Order order;
  
  order.set_competitive(false);
  order.set_base_color(llsf_msgs::BaseColor::BASE_BLACK);
  order.set_cap_color(llsf_msgs::CapColor::CAP_GREY);
  order.set_complexity(llsf_msgs::Order_Complexity::Order_Complexity_C2);
  order.add_ring_colors(llsf_msgs::RingColor::RING_BLUE);
  order.add_ring_colors(llsf_msgs::RingColor::RING_ORANGE);
  
  order.set_delivery_gate(1);
  order.set_delivery_period_begin(1);
  order.set_delivery_period_end(2);
  
  order.set_id(1337);
  
  order.set_quantity_delivered_cyan(0);
  order.set_quantity_delivered_magenta(0);
  order.set_quantity_requested(1);
  
  llsf_msgs::Order* orderlist = out_orders.add_orders();
  orderlist[0] = order;
  
  return true;
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
  llsf_msgs::OrderInfo snd_order;
  if(!convertOrderInfo(in_order, snd_order) || !m_connected)
    return false;

  try {
    m_connection->send(snd_order.COMP_ID, snd_order.MSG_TYPE, snd_order);

  } catch (std::runtime_error& ex) {
    throw ex;
  }

  return true;
}

