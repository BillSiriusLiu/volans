// Generated by gencpp from file iarc_msgs/Pwm.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_PWM_H
#define IARC_MSGS_MESSAGE_PWM_H


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
struct Pwm_
{
  typedef Pwm_<ContainerAllocator> Type;

  Pwm_()
    : roll(0)
    , pitch(0)
    , yaw(0)  {
    }
  Pwm_(const ContainerAllocator& _alloc)
    : roll(0)
    , pitch(0)
    , yaw(0)  {
  (void)_alloc;
    }



   typedef int16_t _roll_type;
  _roll_type roll;

   typedef int16_t _pitch_type;
  _pitch_type pitch;

   typedef int16_t _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::iarc_msgs::Pwm_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iarc_msgs::Pwm_<ContainerAllocator> const> ConstPtr;

}; // struct Pwm_

typedef ::iarc_msgs::Pwm_<std::allocator<void> > Pwm;

typedef boost::shared_ptr< ::iarc_msgs::Pwm > PwmPtr;
typedef boost::shared_ptr< ::iarc_msgs::Pwm const> PwmConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iarc_msgs::Pwm_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iarc_msgs::Pwm_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iarc_msgs::Pwm_<ContainerAllocator1> & lhs, const ::iarc_msgs::Pwm_<ContainerAllocator2> & rhs)
{
  return lhs.roll == rhs.roll &&
    lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iarc_msgs::Pwm_<ContainerAllocator1> & lhs, const ::iarc_msgs::Pwm_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iarc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::Pwm_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iarc_msgs::Pwm_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::Pwm_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iarc_msgs::Pwm_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::Pwm_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iarc_msgs::Pwm_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iarc_msgs::Pwm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4bb90c46f846e8a977ec5c9f53409803";
  }

  static const char* value(const ::iarc_msgs::Pwm_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4bb90c46f846e8a9ULL;
  static const uint64_t static_value2 = 0x77ec5c9f53409803ULL;
};

template<class ContainerAllocator>
struct DataType< ::iarc_msgs::Pwm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iarc_msgs/Pwm";
  }

  static const char* value(const ::iarc_msgs::Pwm_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iarc_msgs::Pwm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 roll\n"
"int16 pitch\n"
"int16 yaw\n"
;
  }

  static const char* value(const ::iarc_msgs::Pwm_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iarc_msgs::Pwm_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Pwm_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iarc_msgs::Pwm_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iarc_msgs::Pwm_<ContainerAllocator>& v)
  {
    s << indent << "roll: ";
    Printer<int16_t>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<int16_t>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<int16_t>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IARC_MSGS_MESSAGE_PWM_H