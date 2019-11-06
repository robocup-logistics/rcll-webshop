#ifndef ORDER_CONTROLLER
#define ORDER_CONTROLLER

#include <string>
#include <memory>
#include <functional>

#include <boost/system/error_code.hpp>

#include <ros_opencart/Order.h>
#include <ros_opencart/Item.h>
#include <ros_opencart/Option.h>

#include <protobuf_comm/client.h>
#include <msgs/OrderInfo.pb.h>

class OrderController {
  typedef std::unique_ptr<protobuf_comm::ProtobufStreamClient> ProtobufClientPtr;
	
  std::string m_msgpath;
  std::string m_refboxhost;
  uint32_t m_port;

  ProtobufClientPtr m_connection;
  bool m_connected;
  std::string m_last_error;

  void initConnectionObj();

  void convertOrderInfo(const ros_opencart::Order& in_order, llsf_msgs::OrderInfo& out_orders);
  void connected();
  void disconnected(const boost::system::error_code& err);

  void messageResceivedfailed(uint16_t comp_id, uint16_t msg_type, std::string recv_error);
  void messageResceived(uint16_t comp_id, uint16_t msg_type, std::shared_ptr<google::protobuf::Message> msg);

public:
  OrderController(const std::string& path);

  std::function<void (uint32_t)> transmitted_callback;
  std::function<void (uint32_t)> delivered_callback;

  void setRefboxHost(const std::string& host);
  const std::string& getRefboxHost();
  void setPort(uint32_t port);
  uint32_t getPort();
  bool isConnected();
  bool getLastError(std::string&);

  void connect();
  void disconnect();

  bool sendOrder(const ros_opencart::Order& order);
};

#endif //ORDER_CONTROLLER
