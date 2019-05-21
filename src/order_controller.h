#ifndef ORDER_CONTROLLER
#define ORDER_CONTROLLER

#include <string>
#include <memory>

#include <boost/system/error_code.hpp>

#include <ros_opencart/Order.h>
#include <ros_opencart/Item.h>

#include <protobuf_comm/client.h>
#include <msgs/OrderInfo.pb.h>

class OrderController {
  typedef std::unique_ptr<protobuf_comm::ProtobufStreamClient> ProtobufClientPtr;
	
  std::string m_msgpath;
  std::string m_refboxhost;
  uint32_t m_port;

  ProtobufClientPtr m_connection;
  bool m_connected;

  void initConnectionObj();

  bool convertOrderInfo(const ros_opencart::Order& in_order, llsf_msgs::OrderInfo& out_orders);
  void connected();
  void disconnected(const boost::system::error_code& err);

public:
  OrderController(const std::string& path);

  void setRefboxHost(const std::string& host);
  const std::string& getRefboxHost();
  void setPort(uint32_t port);
  uint32_t getPort();
  bool isConnected();

  void connect();
  void disconnect();

  bool sendOrder(const ros_opencart::Order& order);
};

#endif //ORDER_CONTROLLER
