// Generated by gencpp from file iarc_msgs/HandSignalResponse.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_HANDSIGNALRESPONSE_H
#define IARC_MSGS_MESSAGE_HANDSIGNALRESPONSE_H


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
struct HandSignalResponse_
{
  typedef HandSignalResponse_<ContainerAllocator> Type;

  HandSignalResponse_()
    : signal_num(0)  {
    }
  HandSignalResponse_(const ContainerAllocator& _alloc)
    : signal_num(0)  {
  (void)_alloc;
    }



   typedef int64_t _signal_num_type;
  _signal_num_type signal_num;





  typedef boost::shared_ptr< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> const> ConstPtr;

}; // struct HandSignalResponse_

typedef ::iarc_msgs::HandSignalResponse_<std::allocator<void> > HandSignalResponse;

typedef boost::shared_ptr< ::iarc_msgs::HandSignalResponse > HandSignalResponsePtr;
typedef boost::shared_ptr< ::iarc_msgs::HandSignalResponse const> HandSignalResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::HandSignalResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::HandSignalResponse_<ContainerAllocator1> & lhs, const ::iarc_msgs::HandSignalResponse_<ContainerAllocator2> & rhs)
{
  return lhs.signal_num == rhs.signal_num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::HandSignalResponse_<ContainerAllocator1> & lhs, const ::iarc_msgs::HandSignalResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "66389ecef7e0d1c6c3fdf9137ae8737e";
  }

  static const char* value(const ::iarc_msgs::HandSignalResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x66389ecef7e0d1c6ULL;
  static const uint64_t static_value2 = 0xc3fdf9137ae8737eULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/HandSignalResponse";
  }

  static const char* value(const ::iarc_msgs::HandSignalResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 signal_num\n"
"\n"
;
  }

  static const char* value(const ::iarc_msgs::HandSignalResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.signal_num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HandSignalResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::HandSignalResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::HandSignalResponse_<ContainerAllocator>& v)
  {
    s << indent << "signal_num: ";
    Printer<int64_t>::stream(s, indent + "  ", v.signal_num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_HANDSIGNALRESPONSE_H
