// Generated by gencpp from file ros_opencart/Order.msg
// DO NOT EDIT!


#ifndef ROS_OPENCART_MESSAGE_ORDER_H
#define ROS_OPENCART_MESSAGE_ORDER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_opencart/Item.h>

namespace ros_opencart
{
template <class ContainerAllocator>
struct Order_
{
  typedef Order_<ContainerAllocator> Type;

  Order_()
    : id(0)
    , status()
    , firstName()
    , lastName()
    , address1()
    , address2()
    , room()
    , zip()
    , city()
    , email()
    , telephone()
    , items()  {
    }
  Order_(const ContainerAllocator& _alloc)
    : id(0)
    , status(_alloc)
    , firstName(_alloc)
    , lastName(_alloc)
    , address1(_alloc)
    , address2(_alloc)
    , room(_alloc)
    , zip(_alloc)
    , city(_alloc)
    , email(_alloc)
    , telephone(_alloc)
    , items(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _firstName_type;
  _firstName_type firstName;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _lastName_type;
  _lastName_type lastName;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _address1_type;
  _address1_type address1;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _address2_type;
  _address2_type address2;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _room_type;
  _room_type room;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _zip_type;
  _zip_type zip;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _city_type;
  _city_type city;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _email_type;
  _email_type email;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _telephone_type;
  _telephone_type telephone;

   typedef std::vector< ::ros_opencart::Item_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ros_opencart::Item_<ContainerAllocator> >::other >  _items_type;
  _items_type items;




  typedef boost::shared_ptr< ::ros_opencart::Order_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_opencart::Order_<ContainerAllocator> const> ConstPtr;

}; // struct Order_

typedef ::ros_opencart::Order_<std::allocator<void> > Order;

typedef boost::shared_ptr< ::ros_opencart::Order > OrderPtr;
typedef boost::shared_ptr< ::ros_opencart::Order const> OrderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_opencart::Order_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_opencart::Order_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_opencart

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ros_opencart': ['/home/christian/ros_opencart/src/ros_opencart/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_opencart::Order_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_opencart::Order_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_opencart::Order_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_opencart::Order_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_opencart::Order_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_opencart::Order_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_opencart::Order_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a38fdd716216129b732d2aab7731f51c";
  }

  static const char* value(const ::ros_opencart::Order_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa38fdd716216129bULL;
  static const uint64_t static_value2 = 0x732d2aab7731f51cULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_opencart::Order_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_opencart/Order";
  }

  static const char* value(const ::ros_opencart::Order_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_opencart::Order_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n\
string status\n\
string firstName\n\
string lastName\n\
string address1\n\
string address2\n\
string room\n\
string zip\n\
string city\n\
string email\n\
string telephone\n\
Item[] items\n\
\n\
================================================================================\n\
MSG: ros_opencart/Item\n\
string product	# Product name\n\
string model	# Product number\n\
int32 quantity\n\
float64 price\n\
\n\
";
  }

  static const char* value(const ::ros_opencart::Order_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_opencart::Order_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.status);
      stream.next(m.firstName);
      stream.next(m.lastName);
      stream.next(m.address1);
      stream.next(m.address2);
      stream.next(m.room);
      stream.next(m.zip);
      stream.next(m.city);
      stream.next(m.email);
      stream.next(m.telephone);
      stream.next(m.items);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Order_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_opencart::Order_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_opencart::Order_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
    s << indent << "firstName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.firstName);
    s << indent << "lastName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.lastName);
    s << indent << "address1: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.address1);
    s << indent << "address2: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.address2);
    s << indent << "room: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.room);
    s << indent << "zip: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.zip);
    s << indent << "city: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.city);
    s << indent << "email: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.email);
    s << indent << "telephone: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.telephone);
    s << indent << "items[]" << std::endl;
    for (size_t i = 0; i < v.items.size(); ++i)
    {
      s << indent << "  items[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ros_opencart::Item_<ContainerAllocator> >::stream(s, indent + "    ", v.items[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_OPENCART_MESSAGE_ORDER_H
