// Generated by gencpp from file rviz_teleop_commander/HumanArray.msg
// DO NOT EDIT!


#ifndef RVIZ_TELEOP_COMMANDER_MESSAGE_HUMANARRAY_H
#define RVIZ_TELEOP_COMMANDER_MESSAGE_HUMANARRAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rviz_teleop_commander/Human.h>

namespace rviz_teleop_commander
{
template <class ContainerAllocator>
struct HumanArray_
{
  typedef HumanArray_<ContainerAllocator> Type;

  HumanArray_()
    : humans()  {
    }
  HumanArray_(const ContainerAllocator& _alloc)
    : humans(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::rviz_teleop_commander::Human_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rviz_teleop_commander::Human_<ContainerAllocator> >> _humans_type;
  _humans_type humans;





  typedef boost::shared_ptr< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> const> ConstPtr;

}; // struct HumanArray_

typedef ::rviz_teleop_commander::HumanArray_<std::allocator<void> > HumanArray;

typedef boost::shared_ptr< ::rviz_teleop_commander::HumanArray > HumanArrayPtr;
typedef boost::shared_ptr< ::rviz_teleop_commander::HumanArray const> HumanArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rviz_teleop_commander::HumanArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rviz_teleop_commander::HumanArray_<ContainerAllocator1> & lhs, const ::rviz_teleop_commander::HumanArray_<ContainerAllocator2> & rhs)
{
  return lhs.humans == rhs.humans;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rviz_teleop_commander::HumanArray_<ContainerAllocator1> & lhs, const ::rviz_teleop_commander::HumanArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rviz_teleop_commander

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9aafaa8337ab2dec54a94b020f2289a8";
  }

  static const char* value(const ::rviz_teleop_commander::HumanArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9aafaa8337ab2decULL;
  static const uint64_t static_value2 = 0x54a94b020f2289a8ULL;
};

template<class ContainerAllocator>
struct DataType< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rviz_teleop_commander/HumanArray";
  }

  static const char* value(const ::rviz_teleop_commander::HumanArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Human[] humans\n"
"\n"
"\n"
"================================================================================\n"
"MSG: rviz_teleop_commander/Human\n"
"int64 id\n"
"int64 type\n"
"int64 state\n"
"geometry_msgs/Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::rviz_teleop_commander::HumanArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.humans);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HumanArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rviz_teleop_commander::HumanArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rviz_teleop_commander::HumanArray_<ContainerAllocator>& v)
  {
    s << indent << "humans[]" << std::endl;
    for (size_t i = 0; i < v.humans.size(); ++i)
    {
      s << indent << "  humans[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rviz_teleop_commander::Human_<ContainerAllocator> >::stream(s, indent + "    ", v.humans[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RVIZ_TELEOP_COMMANDER_MESSAGE_HUMANARRAY_H
