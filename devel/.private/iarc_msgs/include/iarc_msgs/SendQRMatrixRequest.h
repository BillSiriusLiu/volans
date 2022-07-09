// Generated by gencpp from file iarc_msgs/SendQRMatrixRequest.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_SENDQRMATRIXREQUEST_H
#define IARC_MSGS_MESSAGE_SENDQRMATRIXREQUEST_H


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
struct SendQRMatrixRequest_
{
  typedef SendQRMatrixRequest_<ContainerAllocator> Type;

  SendQRMatrixRequest_()
    : channel(0)
    , matrix()  {
      matrix.assign(0);
  }
  SendQRMatrixRequest_(const ContainerAllocator& _alloc)
    : channel(0)
    , matrix()  {
  (void)_alloc;
      matrix.assign(0);
  }



   typedef int64_t _channel_type;
  _channel_type channel;

   typedef boost::array<int64_t, 121>  _matrix_type;
  _matrix_type matrix;





  typedef boost::shared_ptr< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SendQRMatrixRequest_

typedef ::iarc_msgs::SendQRMatrixRequest_<std::allocator<void> > SendQRMatrixRequest;

typedef boost::shared_ptr< ::iarc_msgs::SendQRMatrixRequest > SendQRMatrixRequestPtr;
typedef boost::shared_ptr< ::iarc_msgs::SendQRMatrixRequest const> SendQRMatrixRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator1> & lhs, const ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator2> & rhs)
{
  return lhs.channel == rhs.channel &&
    lhs.matrix == rhs.matrix;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator1> & lhs, const ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7c50499576f641c0c50005489ac6fa47";
  }

  static const char* value(const ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7c50499576f641c0ULL;
  static const uint64_t static_value2 = 0xc50005489ac6fa47ULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/SendQRMatrixRequest";
  }

  static const char* value(const ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 channel\n"
"int64[121] matrix\n"
;
  }

  static const char* value(const ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channel);
      stream.next(m.matrix);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendQRMatrixRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::SendQRMatrixRequest_<ContainerAllocator>& v)
  {
    s << indent << "channel: ";
    Printer<int64_t>::stream(s, indent + "  ", v.channel);
    s << indent << "matrix[]" << std::endl;
    for (size_t i = 0; i < v.matrix.size(); ++i)
    {
      s << indent << "  matrix[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.matrix[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_SENDQRMATRIXREQUEST_H