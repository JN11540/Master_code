// Generated by gencpp from file rgbd_object_detection/test_msg.msg
// DO NOT EDIT!


#ifndef RGBD_OBJECT_DETECTION_MESSAGE_TEST_MSG_H
#define RGBD_OBJECT_DETECTION_MESSAGE_TEST_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rgbd_object_detection
{
template <class ContainerAllocator>
struct test_msg_
{
  typedef test_msg_<ContainerAllocator> Type;

  test_msg_()
    : value(0)
    , id()  {
    }
  test_msg_(const ContainerAllocator& _alloc)
    : value(0)
    , id(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _value_type;
  _value_type value;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::rgbd_object_detection::test_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rgbd_object_detection::test_msg_<ContainerAllocator> const> ConstPtr;

}; // struct test_msg_

typedef ::rgbd_object_detection::test_msg_<std::allocator<void> > test_msg;

typedef boost::shared_ptr< ::rgbd_object_detection::test_msg > test_msgPtr;
typedef boost::shared_ptr< ::rgbd_object_detection::test_msg const> test_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rgbd_object_detection::test_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rgbd_object_detection::test_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rgbd_object_detection::test_msg_<ContainerAllocator1> & lhs, const ::rgbd_object_detection::test_msg_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value &&
    lhs.id == rhs.id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rgbd_object_detection::test_msg_<ContainerAllocator1> & lhs, const ::rgbd_object_detection::test_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rgbd_object_detection

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rgbd_object_detection::test_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rgbd_object_detection::test_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rgbd_object_detection::test_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rgbd_object_detection::test_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rgbd_object_detection::test_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rgbd_object_detection::test_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rgbd_object_detection::test_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "16fa2018fdb9139a1d30fdf240e51082";
  }

  static const char* value(const ::rgbd_object_detection::test_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x16fa2018fdb9139aULL;
  static const uint64_t static_value2 = 0x1d30fdf240e51082ULL;
};

template<class ContainerAllocator>
struct DataType< ::rgbd_object_detection::test_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rgbd_object_detection/test_msg";
  }

  static const char* value(const ::rgbd_object_detection::test_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rgbd_object_detection::test_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 value\n"
"string id\n"
;
  }

  static const char* value(const ::rgbd_object_detection::test_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rgbd_object_detection::test_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct test_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rgbd_object_detection::test_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rgbd_object_detection::test_msg_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<int16_t>::stream(s, indent + "  ", v.value);
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RGBD_OBJECT_DETECTION_MESSAGE_TEST_MSG_H