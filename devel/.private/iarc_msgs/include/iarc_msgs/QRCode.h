// Generated by gencpp from file iarc_msgs/QRCode.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_QRCODE_H
#define IARC_MSGS_MESSAGE_QRCODE_H


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
struct QRCode_
{
  typedef QRCode_<ContainerAllocator> Type;

  QRCode_()
    : code()  {
      code.assign(0);
  }
  QRCode_(const ContainerAllocator& _alloc)
    : code()  {
  (void)_alloc;
      code.assign(0);
  }



   typedef boost::array<int64_t, 4>  _code_type;
  _code_type code;





  typedef boost::shared_ptr< ::iarc_msgs::QRCode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::QRCode_<ContainerAllocator> const> ConstPtr;

}; // struct QRCode_

typedef ::iarc_msgs::QRCode_<std::allocator<void> > QRCode;

typedef boost::shared_ptr< ::iarc_msgs::QRCode > QRCodePtr;
typedef boost::shared_ptr< ::iarc_msgs::QRCode const> QRCodeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::QRCode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::QRCode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::QRCode_<ContainerAllocator1> & lhs, const ::iarc_msgs::QRCode_<ContainerAllocator2> & rhs)
{
  return lhs.code == rhs.code;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::QRCode_<ContainerAllocator1> & lhs, const ::iarc_msgs::QRCode_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::QRCode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::QRCode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::QRCode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::QRCode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::QRCode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::QRCode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::QRCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fdbad0f70adc75d9bbd4ce667ab39d53";
  }

  static const char* value(const ::iarc_msgs::QRCode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfdbad0f70adc75d9ULL;
  static const uint64_t static_value2 = 0xbbd4ce667ab39d53ULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::QRCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/QRCode";
  }

  static const char* value(const ::iarc_msgs::QRCode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::QRCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64[4] code\n"
;
  }

  static const char* value(const ::iarc_msgs::QRCode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::QRCode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.code);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QRCode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::QRCode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::QRCode_<ContainerAllocator>& v)
  {
    s << indent << "code[]" << std::endl;
    for (size_t i = 0; i < v.code.size(); ++i)
    {
      s << indent << "  code[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.code[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_QRCODE_H
