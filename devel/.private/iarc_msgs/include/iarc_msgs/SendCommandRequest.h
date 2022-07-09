// Generated by gencpp from file iarc_msgs/SendCommandRequest.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_SENDCOMMANDREQUEST_H
#define IARC_MSGS_MESSAGE_SENDCOMMANDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iarc_msgs
{
template <class ContainerAllocator>
struct SendCommandRequest_
{
  typedef SendCommandRequest_<ContainerAllocator> Type;

  SendCommandRequest_()
    : channel(0)
    , command_code(0)  {
    }
  SendCommandRequest_(const ContainerAllocator& _alloc)
    : channel(0)
    , command_code(0)  {
  (void)_alloc;
    }



   typedef int64_t _channel_type;
  _channel_type channel;

   typedef int64_t _command_code_type;
  _command_code_type command_code;





  typedef boost::shared_ptr< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SendCommandRequest_

typedef ::iarc_msgs::SendCommandRequest_<std::allocator<void> > SendCommandRequest;

typedef boost::shared_ptr< ::iarc_msgs::SendCommandRequest > SendCommandRequestPtr;
typedef boost::shared_ptr< ::iarc_msgs::SendCommandRequest const> SendCommandRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::SendCommandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::SendCommandRequest_<ContainerAllocator1> & lhs, const ::iarc_msgs::SendCommandRequest_<ContainerAllocator2> & rhs)
{
  return lhs.channel == rhs.channel &&
    lhs.command_code == rhs.command_code;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::SendCommandRequest_<ContainerAllocator1> & lhs, const ::iarc_msgs::SendCommandRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "81d50804fc1e3db507ae016b2ff6c970";
  }

  static const char* value(const ::iarc_msgs::SendCommandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x81d50804fc1e3db5ULL;
  static const uint64_t static_value2 = 0x07ae016b2ff6c970ULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/SendCommandRequest";
  }

  static const char* value(const ::iarc_msgs::SendCommandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 channel\n"
"int64 command_code\n"
;
  }

  static const char* value(const ::iarc_msgs::SendCommandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channel);
      stream.next(m.command_code);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendCommandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::SendCommandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::SendCommandRequest_<ContainerAllocator>& v)
  {
    s << indent << "channel: ";
    Printer<int64_t>::stream(s, indent + "  ", v.channel);
    s << indent << "command_code: ";
    Printer<int64_t>::stream(s, indent + "  ", v.command_code);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_SENDCOMMANDREQUEST_H
