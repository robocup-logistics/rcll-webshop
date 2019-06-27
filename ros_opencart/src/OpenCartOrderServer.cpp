#include <vector>
#include <string>
#include <map>
#include <cpprest/http_client.h>
#include <cpprest/filestream.h>
#include <cpprest/json.h>
#include "ros/ros.h"
#include "ros_opencart/GetCurrentOrders.h"
#include "ros_opencart/UpdateOrder.h"

using namespace utility;					// Common utilities like string conversions
using namespace web;						// Common features like URIs.
using namespace web::http;					// Common HTTP functionality
using namespace web::http::client;			// HTTP client features
using namespace web::json;					// JSON library
using namespace concurrency::streams;		// Asynchronous streams

std::string shopDomain;
std::string shopPath;
std::string shopApiKey;

std::map<std::string, std::string> getCookies(const std::string &cookieString);

void setCookies(http_request &request, const std::map<std::string, std::string> &cookies);

bool login(std::string &token, http_client &client, std::map<std::string,std::string> &cookies);

bool get(ros_opencart::GetCurrentOrders::Request &req,
         ros_opencart::GetCurrentOrders::Response &res);

bool update(ros_opencart::UpdateOrder::Request	&req,
            ros_opencart::UpdateOrder::Response &res);

int main(int argc, char **argv)
{
  ros::init(argc, argv, "OpenCartOrderServer");

  if (argc<4) {
    ROS_ERROR("Not enough arguments!.");
    return 1;
  } else {
    shopDomain = std::string(argv[1]);
    shopPath = std::string(argv[2]);
    shopApiKey = std::string(argv[3]);
    ros::NodeHandle n;

    ros::ServiceServer getService = n.advertiseService("GetCurrentOrders", get);
    ros::ServiceServer updateService = n.advertiseService("UpdateOrder", update);
    ROS_INFO("Ready to communicate with OpenCart Webshop %s.", shopDomain.c_str());
    ros::spin();

    return 0;
  }
}


bool get(ros_opencart::GetCurrentOrders::Request &req,
         ros_opencart::GetCurrentOrders::Response &res)
{
  //ROS_INFO("GetCurrentOrders");

  auto token = std::string();
  // Create http_client to send the request.
  auto client = http_client(U(shopDomain));

  auto cookies = std::map<std::string,std::string>();

  if (login(token, client, cookies)) {
    // ROS_INFO("Token: %s", token.c_str());

    // Build request URI and start the request.
    uri_builder builder(U(shopPath));
    builder.append_query(U("route"), U("api/ros/GetCurrentOrders"));
    builder.append_query(U("token"), token);

    auto req = http_request(methods::GET);

    setCookies(req, cookies);

    req.set_request_uri(builder.to_string());

    // ROS_INFO("URL-Path: %s", builder.to_string().c_str());

    auto request = client.request(req);

    // Wait for all the outstanding I/O to complete and handle any exceptions
    try
    {
      auto response = request.get();

      auto statusCode = response.status_code();

      if (statusCode!= 200) {
        ROS_ERROR("Error on GetCurrentOrders: %u - %s", statusCode, response.to_string().c_str());
        res.errorcode = 4;
        res.errormsg = std::to_string(statusCode);
        res.errormsg += " - ";
        res.errormsg += response.reason_phrase();

      } else {
        auto jsonGet = response.extract_json();
        auto json = jsonGet.get();

        //ROS_INFO("got: \n%s", json.to_string().c_str());

        if (json.has_field(U("error"))) {
          res.errorcode = 3;
          auto error = json.at(U("error"));
          if (error.has_field(U("key"))) {
            ROS_ERROR("Error on GetCurrentOrders: %s", error.at(U("key")).serialize().c_str());
            res.errormsg = error.at(U("key")).serialize().c_str();
          } else {
            ROS_ERROR("Error on GetCurrentOrders: %s", error.serialize().c_str());
            res.errormsg = error.serialize().c_str();
          }
        } else {
          res.errorcode = 0;
          res.orders = std::vector<ros_opencart::Order>();

          auto jOrders = json.at(U("orders")).as_array();

          for (int i = 0; i<jOrders.size(); i++) {

            auto jOrder = jOrders.at(i);

            //ROS_INFO("got: \n%s", jOrder.to_string().c_str());

            ros_opencart::Order order = ros_opencart::Order();
            order.id = jOrder.at(U("order_id")).as_integer();
            order.status = jOrder.at(U("order_status")).as_string();
            order.firstName = jOrder.at(U("shipping_firstname")).as_string();
            order.lastName = jOrder.at(U("shipping_lastname")).as_string();
            order.address1 = jOrder.at(U("shipping_address_1")).as_string();
            order.address2 = jOrder.at(U("shipping_address_2")).as_string();
            //order.room = jOrder.at(U("shipping_custom_field")).at(U("1")).as_string();
            order.zip = jOrder.at(U("shipping_postcode")).as_string();
            order.city = jOrder.at(U("shipping_city")).as_string();
            order.email = jOrder.at(U("email")).as_string();
            order.telephone = jOrder.at(U("telephone")).as_string();
            order.items = std::vector<ros_opencart::Item>();

            auto jItems = jOrder.at(U("products")).as_array();

            for (int j = 0; j<jItems.size(); j++) {
              auto jItem = jItems.at(j);
              ros_opencart::Item item = ros_opencart::Item();
              item.product = jItem.at(U("name")).as_string();
              item.model = jItem.at(U("model")).as_string();
              item.quantity = jItem.at(U("quantity")).as_integer();
              item.price = jItem.at(U("total")).as_double();

              auto jOptions = jItem.at(U("options")).as_array();
              for(auto joption : jOptions) {
                ros_opencart::Option option;
                option.name = joption.at(U("name")).as_string();
                option.value = joption.at(U("value")).as_string();
                item.options.push_back(option);
              }

              order.items.push_back(item);
            }
            res.orders.push_back(order);

          }

          //ROS_INFO("sending back order response");
        }
      }
      return true;

    }
    catch (const std::exception &e)
    {
      res.errorcode = 2;
      res.errormsg = e.what();
      ROS_ERROR("Error on GetCurrentOrders: %s", e.what());
      return true;
    };
  } else {
    res.errorcode = 1;
    res.errormsg = "Login failed";
    return true; 	// roscpp can't set error msg for failed service calls so return true and set errorcode to inform the client about the type of error
    // see http://answers.ros.org/question/11611/error-message-for-failed-service-call/
  }
}


bool update(ros_opencart::UpdateOrder::Request &rosReq,
            ros_opencart::UpdateOrder::Response &rosRes)
{

  ROS_INFO("Update order %i to %s", rosReq.id, rosReq.status.c_str());

  auto token = std::string();
  // Create http_client to send the request.
  auto client = http_client(U(shopDomain));

  auto cookies = std::map<std::string,std::string>();

  if (login(token, client, cookies)) {
    // ROS_INFO("Token: %s", token.c_str());

    // Build request URI and start the request.
    uri_builder builder(U(shopPath));
    builder.append_query(U("route"), U("api/ros/updateOrderStatus"));
    builder.append_query(U("token"), token);

    auto req = http_request(methods::POST);

    setCookies(req, cookies);

    req.set_request_uri(builder.to_string());

    json::value body = json::value::object();
    body[U("id")] = json::value::number(rosReq.id);
    body[U("status")] = json::value::string(U(rosReq.status));

    req.set_body(body);

    // ROS_INFO("URL-Path: %s", builder.to_string().c_str());

    auto request = client.request(req);

    // Wait for all the outstanding I/O to complete and handle any exceptions
    try
    {
      auto response = request.get();
      auto statusCode = response.status_code();

      if (statusCode!= 200) {
        ROS_ERROR("Error on UpdateOrder: %u - %s", statusCode, response.to_string().c_str());
        rosRes.errorcode = 4;
        rosRes.errormsg = std::to_string(statusCode);
        rosRes.errormsg += " - ";
        rosRes.errormsg += response.reason_phrase();
      } else {

        //auto jsonGet = response.extract_json();
        //auto json = jsonGet.get();

        //-- dirty jack to cut off html prefix.
        //-- the prefix is somehow added to the response message and I cannot find where
        std::string response_str = utility::conversions::to_utf8string(response.extract_string().get());
        int json_idx = response_str.find('{');

        if(json_idx > 0)
          ROS_WARN("JSON response had prefix:\n%s", response_str.substr(0,json_idx).c_str());

        response_str = response_str.substr(json_idx);
        auto json = web::json::value::parse(response_str);


        //ROS_INFO("Got: %s", json.to_string().c_str());

        if (json.has_field(U("error"))) {
          rosRes.errorcode = 3;
          auto error = json.at(U("error"));
          if (error.has_field(U("key"))) {
            ROS_ERROR("Error on UpdateOrder: %s", error.at(U("key")).serialize().c_str());
            rosRes.errormsg = error.at(U("key")).serialize().c_str();
          } else {
            ROS_ERROR("Error on UpdateOrder: %s", error.serialize().c_str());
            rosRes.errormsg = error.serialize().c_str();
          }
        } else {
          rosRes.errorcode = 0;
        }
      }
      return true;

    }
    catch (const std::exception &e)
    {
      rosRes.errorcode = 2;
      rosRes.errormsg = e.what();
      ROS_ERROR("Error on UpdateOrder: %s", e.what());
      return true;
    };
  } else {
    rosRes.errorcode = 1;
    rosRes.errormsg = "Login failed";
    return true; 	// roscpp can't set error msg for failed service calls so return true and set errorcode to inform the client about the type of error
    // see http://answers.ros.org/question/11611/error-message-for-failed-service-call/
  }
}

bool login(std::string &token, http_client &client, std::map<std::string,std::string> &cookies) {
  // ROS_INFO("Login");

  uri_builder builder(U(shopPath));
  builder.append_query(U("route"), U("api/ros/login"));

  auto body_data = json::value::object();
  body_data[U("key")] = json::value(U(shopApiKey));

  auto request = client.request(methods::POST, builder.to_string(), body_data);

  try
  {
    auto response = request.get();

    auto statusCode = response.status_code();

    if (statusCode!= 200) {
      ROS_ERROR("Error on login: %u - %s", statusCode, response.to_string().c_str());
      return false;
    }

    // ROS_INFO("Received response status code:%u", response.status_code());
    // ROS_INFO("Got: %s", response.to_string().c_str());

    auto headers = response.headers();
    auto it = headers.find("Set-Cookie");
    if (it != headers.end()){
      // ROS_INFO("Got Cookies: %s", it->second.c_str());
      cookies = getCookies(it->second);
    } else {
      cookies.clear();
    };

    auto jsonGet = response.extract_json();
    auto json = jsonGet.get();

    if (json.has_field(U("error"))) {
      auto error = json.at(U("error"));
      if (error.has_field(U("key"))) {
        ROS_ERROR("Error on login: %s", error.at(U("key")).serialize().c_str());
      } else {
        ROS_ERROR("Error on login: %s", error.serialize().c_str());
      }
      return false;
    } else {
      token = json.at(U("token")).as_string();
      // ROS_INFO("Login successful");
      return true;
    }
  }
  catch (const std::exception &e)
  {
    ROS_ERROR("Error on login: %s", e.what());
    return false;
  };
}

std::map<std::string, std::string> getCookies(const std::string &cookieString) {
  auto ret = std::map<std::string, std::string>();

  std::size_t startPosName = 0;
  do {
    while (cookieString.at(startPosName) == ' ') {
      startPosName++;
    }
    auto endPosName = cookieString.find('=', startPosName);
    auto nameLength = endPosName-startPosName;
    auto name = cookieString.substr(startPosName, nameLength);
    bool validName = true;
    for (std::size_t i = 0; i<name.length(); i++) {
      char c = name.at(i);
      if (c == ',' ||
          c == ';' ||
          c == ' ') {
        validName = false;
        break;
      }
    }
    if (validName) {
      auto startPosValue = endPosName+1;
      auto endPosValue = cookieString.find(';', startPosValue);
      auto valueLength = endPosValue-startPosValue;
      auto value = cookieString.substr(startPosValue, valueLength);
      ret[name] = value;
      // ROS_INFO("Cookie: %s=%s", name.c_str(), value.c_str());
      startPosName = cookieString.find(',', endPosValue) + 1; // find returns unsigned -1 if it fails
    } else {
      startPosName = cookieString.find(',', startPosName+1)+1;
    }
  } while(startPosName!=0);
  return ret;
}

void setCookies(http_request &request, const std::map<std::string, std::string> &cookies) {
  // ROS_INFO("Set Cookies");

  auto cookieStr = std::string();
  bool first = true;
  for(auto it = cookies.begin(); it!=cookies.end(); it++) {
    if (!first) {
      cookieStr+= ';';
    }
    cookieStr += it->first + "=" + it->second;
    first = false;
  }
  // ROS_INFO("Set Cookies: %s", cookieStr.c_str());
  if (!first) {
    request.headers().add(U("Cookie"), cookieStr);
  }
}
