// Generated by gencpp from file iarc_msgs/SendQRCode.msg
// DO NOT EDIT!


#ifndef IARC_MSGS_MESSAGE_SENDQRCODE_H
#define IARC_MSGS_MESSAGE_SENDQRCODE_H

#include <ros/service_traits.h>


#include <iarc_msgs/SendQRCodeRequest.h>
#include <iarc_msgs/SendQRCodeResponse.h>


namespace iarc_msgs
{

struct SendQRCode
{

typedef SendQRCodeRequest Request;
typedef SendQRCodeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SendQRCode
} // namespace iarc_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iarc_msgs::SendQRCode > {
  static const char* value()
  {
    return "8193f777c6b316488f0375ed416381c5";
  }

  static const char* value(const ::iarc_msgs::SendQRCode&) { return value(); }
};

template<>
struct DataType< ::iarc_msgs::SendQRCode > {
  static const char* value()
  {
    return "iarc_msgs/SendQRCode";
  }

  static const char* value(const ::iarc_msgs::SendQRCode&) { return value(); }
};


// service_traits::MD5Sum< ::iarc_msgs::SendQRCodeRequest> should match
// service_traits::MD5Sum< ::iarc_msgs::SendQRCode >
template<>
struct MD5Sum< ::iarc_msgs::SendQRCodeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iarc_msgs::SendQRCode >::value();
  }
  static const char* value(const ::iarc_msgs::SendQRCodeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iarc_msgs::SendQRCodeRequest> should match
// service_traits::DataType< ::iarc_msgs::SendQRCode >
template<>
struct DataType< ::iarc_msgs::SendQRCodeRequest>
{
  static const char* value()
  {
    return DataType< ::iarc_msgs::SendQRCode >::value();
  }
  static const char* value(const ::iarc_msgs::SendQRCodeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iarc_msgs::SendQRCodeResponse> should match
// service_traits::MD5Sum< ::iarc_msgs::SendQRCode >
template<>
struct MD5Sum< ::iarc_msgs::SendQRCodeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iarc_msgs::SendQRCode >::value();
  }
  static const char* value(const ::iarc_msgs::SendQRCodeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iarc_msgs::SendQRCodeResponse> should match
// service_traits::DataType< ::iarc_msgs::SendQRCode >
template<>
struct DataType< ::iarc_msgs::SendQRCodeResponse>
{
  static const char* value()
  {
    return DataType< ::iarc_msgs::SendQRCode >::value();
  }
  static const char* value(const ::iarc_msgs::SendQRCodeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IARC_MSGS_MESSAGE_SENDQRCODE_H
