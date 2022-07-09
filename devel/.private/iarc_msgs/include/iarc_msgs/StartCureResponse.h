// Generated by gencpp from file iarc_msgs/StartCureResponse.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_STARTCURERESPONSE_H
#define IARC_MSGS_MESSAGE_STARTCURERESPONSE_H


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
struct StartCureResponse_
{
  typedef StartCureResponse_<ContainerAllocator> Type;

  StartCureResponse_()
    : feedback(0)  {
    }
  StartCureResponse_(const ContainerAllocator& _alloc)
    : feedback(0)  {
  (void)_alloc;
    }



   typedef int64_t _feedback_type;
  _feedback_type feedback;





  typedef boost::shared_ptr< ::iarc_msgs::StartCureResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::StartCureResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StartCureResponse_

typedef ::iarc_msgs::StartCureResponse_<std::allocator<void> > StartCureResponse;

typedef boost::shared_ptr< ::iarc_msgs::StartCureResponse > StartCureResponsePtr;
typedef boost::shared_ptr< ::iarc_msgs::StartCureResponse const> StartCureResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::StartCureResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::StartCureResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::StartCureResponse_<ContainerAllocator1> & lhs, const ::iarc_msgs::StartCureResponse_<ContainerAllocator2> & rhs)
{
  return lhs.feedback == rhs.feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::StartCureResponse_<ContainerAllocator1> & lhs, const ::iarc_msgs::StartCureResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::StartCureResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::StartCureResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::StartCureResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::StartCureResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::StartCureResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::StartCureResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::StartCureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f13abea819e137c73823c571ceb05062";
  }

  static const char* value(const ::iarc_msgs::StartCureResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf13abea819e137c7ULL;
  static const uint64_t static_value2 = 0x3823c571ceb05062ULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::StartCureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/StartCureResponse";
  }

  static const char* value(const ::iarc_msgs::StartCureResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::StartCureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 feedback\n"
"\n"
;
  }

  static const char* value(const ::iarc_msgs::StartCureResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::StartCureResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartCureResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::StartCureResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::StartCureResponse_<ContainerAllocator>& v)
  {
    s << indent << "feedback: ";
    Printer<int64_t>::stream(s, indent + "  ", v.feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_STARTCURERESPONSE_H
