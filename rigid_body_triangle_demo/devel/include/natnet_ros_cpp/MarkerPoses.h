// Generated by gencpp from file natnet_ros_cpp/MarkerPoses.msg
// DO NOT EDIT!


#ifndef NATNET_ROS_CPP_MESSAGE_MARKERPOSES_H
#define NATNET_ROS_CPP_MESSAGE_MARKERPOSES_H

#include <ros/service_traits.h>


#include <natnet_ros_cpp/MarkerPosesRequest.h>
#include <natnet_ros_cpp/MarkerPosesResponse.h>


namespace natnet_ros_cpp
{

struct MarkerPoses
{

typedef MarkerPosesRequest Request;
typedef MarkerPosesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MarkerPoses
} // namespace natnet_ros_cpp


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::natnet_ros_cpp::MarkerPoses > {
  static const char* value()
  {
    return "c7367279fedb79f450024191cc1ecd3e";
  }

  static const char* value(const ::natnet_ros_cpp::MarkerPoses&) { return value(); }
};

template<>
struct DataType< ::natnet_ros_cpp::MarkerPoses > {
  static const char* value()
  {
    return "natnet_ros_cpp/MarkerPoses";
  }

  static const char* value(const ::natnet_ros_cpp::MarkerPoses&) { return value(); }
};


// service_traits::MD5Sum< ::natnet_ros_cpp::MarkerPosesRequest> should match
// service_traits::MD5Sum< ::natnet_ros_cpp::MarkerPoses >
template<>
struct MD5Sum< ::natnet_ros_cpp::MarkerPosesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::natnet_ros_cpp::MarkerPoses >::value();
  }
  static const char* value(const ::natnet_ros_cpp::MarkerPosesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::natnet_ros_cpp::MarkerPosesRequest> should match
// service_traits::DataType< ::natnet_ros_cpp::MarkerPoses >
template<>
struct DataType< ::natnet_ros_cpp::MarkerPosesRequest>
{
  static const char* value()
  {
    return DataType< ::natnet_ros_cpp::MarkerPoses >::value();
  }
  static const char* value(const ::natnet_ros_cpp::MarkerPosesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::natnet_ros_cpp::MarkerPosesResponse> should match
// service_traits::MD5Sum< ::natnet_ros_cpp::MarkerPoses >
template<>
struct MD5Sum< ::natnet_ros_cpp::MarkerPosesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::natnet_ros_cpp::MarkerPoses >::value();
  }
  static const char* value(const ::natnet_ros_cpp::MarkerPosesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::natnet_ros_cpp::MarkerPosesResponse> should match
// service_traits::DataType< ::natnet_ros_cpp::MarkerPoses >
template<>
struct DataType< ::natnet_ros_cpp::MarkerPosesResponse>
{
  static const char* value()
  {
    return DataType< ::natnet_ros_cpp::MarkerPoses >::value();
  }
  static const char* value(const ::natnet_ros_cpp::MarkerPosesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NATNET_ROS_CPP_MESSAGE_MARKERPOSES_H
