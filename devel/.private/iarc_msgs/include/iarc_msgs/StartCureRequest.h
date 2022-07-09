// Generated by gencpp from file iarc_msgs/StartCureRequest.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_STARTCUREREQUEST_H
#define IARC_MSGS_MESSAGE_STARTCUREREQUEST_H


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
struct StartCureRequest_
{
  typedef StartCureRequest_<ContainerAllocator> Type;

  StartCureRequest_()
    : if_cure(0)  {
    }
  StartCureRequest_(const ContainerAllocator& _alloc)
    : if_cure(0)  {
  (void)_alloc;
    }



   typedef int64_t _if_cure_type;
  _if_cure_type if_cure;





  typedef boost::shared_ptr< ::iarc_msgs::StartCureRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::StartCureRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StartCureRequest_

typedef ::iarc_msgs::StartCureRequest_<std::allocator<void> > StartCureRequest;

typedef boost::shared_ptr< ::iarc_msgs::StartCureRequest > StartCureRequestPtr;
typedef boost::shared_ptr< ::iarc_msgs::StartCureRequest const> StartCureRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::StartCureRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::StartCureRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::StartCureRequest_<ContainerAllocator1> & lhs, const ::iarc_msgs::StartCureRequest_<ContainerAllocator2> & rhs)
{
  return lhs.if_cure == rhs.if_cure;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::StartCureRequest_<ContainerAllocator1> & lhs, const ::iarc_msgs::StartCureRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::StartCureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::StartCureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::StartCureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::StartCureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::StartCureRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::StartCureRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::StartCureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "04c678b7f6e0b5e2d007929c3b20ceb9";
  }

  static const char* value(const ::iarc_msgs::StartCureRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x04c678b7f6e0b5e2ULL;
  static const uint64_t static_value2 = 0xd007929c3b20ceb9ULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::StartCureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/StartCureRequest";
  }

  static const char* value(const ::iarc_msgs::StartCureRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::StartCureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 if_cure\n"
;
  }

  static const char* value(const ::iarc_msgs::StartCureRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::StartCureRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.if_cure);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartCureRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::StartCureRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::StartCureRequest_<ContainerAllocator>& v)
  {
    s << indent << "if_cure: ";
    Printer<int64_t>::stream(s, indent + "  ", v.if_cure);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_STARTCUREREQUEST_H