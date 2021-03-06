// Generated by gencpp from file iarc_msgs/Command.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_COMMAND_H
#define IARC_MSGS_MESSAGE_COMMAND_H


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
struct Command_
{
  typedef Command_<ContainerAllocator> Type;

  Command_()
    : command_num(0)  {
    }
  Command_(const ContainerAllocator& _alloc)
    : command_num(0)  {
  (void)_alloc;
    }



   typedef int64_t _command_num_type;
  _command_num_type command_num;





  typedef boost::shared_ptr< ::iarc_msgs::Command_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::Command_<ContainerAllocator> const> ConstPtr;

}; // struct Command_

typedef ::iarc_msgs::Command_<std::allocator<void> > Command;

typedef boost::shared_ptr< ::iarc_msgs::Command > CommandPtr;
typedef boost::shared_ptr< ::iarc_msgs::Command const> CommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::Command_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::Command_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::Command_<ContainerAllocator1> & lhs, const ::iarc_msgs::Command_<ContainerAllocator2> & rhs)
{
  return lhs.command_num == rhs.command_num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::Command_<ContainerAllocator1> & lhs, const ::iarc_msgs::Command_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::Command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::Command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::Command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::Command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::Command_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::Command_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c309d1b38a34db114a7283dc4ce576c7";
  }

  static const char* value(const ::iarc_msgs::Command_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc309d1b38a34db11ULL;
  static const uint64_t static_value2 = 0x4a7283dc4ce576c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/Command";
  }

  static const char* value(const ::iarc_msgs::Command_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 command_num\n"
;
  }

  static const char* value(const ::iarc_msgs::Command_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::Command_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command_num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Command_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::Command_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::Command_<ContainerAllocator>& v)
  {
    s << indent << "command_num: ";
    Printer<int64_t>::stream(s, indent + "  ", v.command_num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_COMMAND_H
