// Generated by gencpp from file iarc_msgs/SendPoseRequest.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_SENDPOSEREQUEST_H
#define IARC_MSGS_MESSAGE_SENDPOSEREQUEST_H


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
struct SendPoseRequest_
{
  typedef SendPoseRequest_<ContainerAllocator> Type;

  SendPoseRequest_()
    : channel(0)
    , x(0.0)
    , y(0.0)
    , angle(0.0)  {
    }
  SendPoseRequest_(const ContainerAllocator& _alloc)
    : channel(0)
    , x(0.0)
    , y(0.0)
    , angle(0.0)  {
  (void)_alloc;
    }



   typedef int64_t _channel_type;
  _channel_type channel;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SendPoseRequest_

typedef ::iarc_msgs::SendPoseRequest_<std::allocator<void> > SendPoseRequest;

typedef boost::shared_ptr< ::iarc_msgs::SendPoseRequest > SendPoseRequestPtr;
typedef boost::shared_ptr< ::iarc_msgs::SendPoseRequest const> SendPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::SendPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::SendPoseRequest_<ContainerAllocator1> & lhs, const ::iarc_msgs::SendPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.channel == rhs.channel &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::SendPoseRequest_<ContainerAllocator1> & lhs, const ::iarc_msgs::SendPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9bd647b688c8e365abac510048f36cb3";
  }

  static const char* value(const ::iarc_msgs::SendPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9bd647b688c8e365ULL;
  static const uint64_t static_value2 = 0xabac510048f36cb3ULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/SendPoseRequest";
  }

  static const char* value(const ::iarc_msgs::SendPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 channel\n"
"float64 x\n"
"float64 y\n"
"float64 angle\n"
;
  }

  static const char* value(const ::iarc_msgs::SendPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channel);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::SendPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::SendPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "channel: ";
    Printer<int64_t>::stream(s, indent + "  ", v.channel);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_SENDPOSEREQUEST_H