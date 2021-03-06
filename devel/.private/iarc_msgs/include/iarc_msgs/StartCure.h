// Generated by gencpp from file iarc_msgs/StartCure.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_STARTCURE_H
#define IARC_MSGS_MESSAGE_STARTCURE_H

#include <ros/service_traits.h>


#include <iarc_msgs/StartCureRequest.h>
#include <iarc_msgs/StartCureResponse.h>


namespace iarc_msgs
{

struct StartCure
{

typedef StartCureRequest Request;
typedef StartCureResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StartCure
} // namespace iarc_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iarc_msgs::StartCure > {
  static const char* value()
  {
    return "feb547387d54d09a610dd34314e9c411";
  }

  static const char* value(const ::iarc_msgs::StartCure&) { return value(); }
};

template<>
struct DataType< ::iarc_msgs::StartCure > {
  static const char* value()
  {
    return "iarc_msgs/StartCure";
  }

  static const char* value(const ::iarc_msgs::StartCure&) { return value(); }
};


// service_traits::MD5Sum< ::iarc_msgs::StartCureRequest> should match
// service_traits::MD5Sum< ::iarc_msgs::StartCure >
template<>
struct MD5Sum< ::iarc_msgs::StartCureRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iarc_msgs::StartCure >::value();
  }
  static const char* value(const ::iarc_msgs::StartCureRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iarc_msgs::StartCureRequest> should match
// service_traits::DataType< ::iarc_msgs::StartCure >
template<>
struct DataType< ::iarc_msgs::StartCureRequest>
{
  static const char* value()
  {
    return DataType< ::iarc_msgs::StartCure >::value();
  }
  static const char* value(const ::iarc_msgs::StartCureRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iarc_msgs::StartCureResponse> should match
// service_traits::MD5Sum< ::iarc_msgs::StartCure >
template<>
struct MD5Sum< ::iarc_msgs::StartCureResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iarc_msgs::StartCure >::value();
  }
  static const char* value(const ::iarc_msgs::StartCureResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iarc_msgs::StartCureResponse> should match
// service_traits::DataType< ::iarc_msgs::StartCure >
template<>
struct DataType< ::iarc_msgs::StartCureResponse>
{
  static const char* value()
  {
    return DataType< ::iarc_msgs::StartCure >::value();
  }
  static const char* value(const ::iarc_msgs::StartCureResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IARC_MSGS_MESSAGE_STARTCURE_H
