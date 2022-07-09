// Generated by gencpp from file iarc_msgs/SendQRCodeResponse.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_SENDQRCODERESPONSE_H
#define IARC_MSGS_MESSAGE_SENDQRCODERESPONSE_H


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
struct SendQRCodeResponse_
{
  typedef SendQRCodeResponse_<ContainerAllocator> Type;

  SendQRCodeResponse_()
    : feedback(false)  {
    }
  SendQRCodeResponse_(const ContainerAllocator& _alloc)
    : feedback(false)  {
  (void)_alloc;
    }



   typedef uint8_t _feedback_type;
  _feedback_type feedback;





  typedef boost::shared_ptr< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SendQRCodeResponse_

typedef ::iarc_msgs::SendQRCodeResponse_<std::allocator<void> > SendQRCodeResponse;

typedef boost::shared_ptr< ::iarc_msgs::SendQRCodeResponse > SendQRCodeResponsePtr;
typedef boost::shared_ptr< ::iarc_msgs::SendQRCodeResponse const> SendQRCodeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator1> & lhs, const ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator2> & rhs)
{
  return lhs.feedback == rhs.feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator1> & lhs, const ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f1f168a39479bedb24dba7a087426182";
  }

  static const char* value(const ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf1f168a39479bedbULL;
  static const uint64_t static_value2 = 0x24dba7a087426182ULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/SendQRCodeResponse";
  }

  static const char* value(const ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool feedback\n"
"\n"
;
  }

  static const char* value(const ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendQRCodeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::SendQRCodeResponse_<ContainerAllocator>& v)
  {
    s << indent << "feedback: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_SENDQRCODERESPONSE_H
