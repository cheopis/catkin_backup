// Generated by gencpp from file youbot/ControlCommand.msg
// DO NOT EDIT!


#ifndef YOUBOT_MESSAGE_CONTROLCOMMAND_H
#define YOUBOT_MESSAGE_CONTROLCOMMAND_H

#include <ros/service_traits.h>


#include <youbot/ControlCommandRequest.h>
#include <youbot/ControlCommandResponse.h>


namespace youbot
{

struct ControlCommand
{

typedef ControlCommandRequest Request;
typedef ControlCommandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ControlCommand
} // namespace youbot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::youbot::ControlCommand > {
  static const char* value()
  {
    return "63fcde9b0992e05088e19b97775995fe";
  }

  static const char* value(const ::youbot::ControlCommand&) { return value(); }
};

template<>
struct DataType< ::youbot::ControlCommand > {
  static const char* value()
  {
    return "youbot/ControlCommand";
  }

  static const char* value(const ::youbot::ControlCommand&) { return value(); }
};


// service_traits::MD5Sum< ::youbot::ControlCommandRequest> should match
// service_traits::MD5Sum< ::youbot::ControlCommand >
template<>
struct MD5Sum< ::youbot::ControlCommandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::youbot::ControlCommand >::value();
  }
  static const char* value(const ::youbot::ControlCommandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::youbot::ControlCommandRequest> should match
// service_traits::DataType< ::youbot::ControlCommand >
template<>
struct DataType< ::youbot::ControlCommandRequest>
{
  static const char* value()
  {
    return DataType< ::youbot::ControlCommand >::value();
  }
  static const char* value(const ::youbot::ControlCommandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::youbot::ControlCommandResponse> should match
// service_traits::MD5Sum< ::youbot::ControlCommand >
template<>
struct MD5Sum< ::youbot::ControlCommandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::youbot::ControlCommand >::value();
  }
  static const char* value(const ::youbot::ControlCommandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::youbot::ControlCommandResponse> should match
// service_traits::DataType< ::youbot::ControlCommand >
template<>
struct DataType< ::youbot::ControlCommandResponse>
{
  static const char* value()
  {
    return DataType< ::youbot::ControlCommand >::value();
  }
  static const char* value(const ::youbot::ControlCommandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YOUBOT_MESSAGE_CONTROLCOMMAND_H