// Generated by gencpp from file rviz_teleop_commander/group.msg
// DO NOT EDIT!


#ifndef RVIZ_TELEOP_COMMANDER_MESSAGE_GROUP_H
#define RVIZ_TELEOP_COMMANDER_MESSAGE_GROUP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rviz_teleop_commander
{
template <class ContainerAllocator>
struct group_
{
  typedef group_<ContainerAllocator> Type;

  group_()
    : eps(0.0)
    , minpts(0)  {
    }
  group_(const ContainerAllocator& _alloc)
    : eps(0.0)
    , minpts(0)  {
  (void)_alloc;
    }



   typedef double _eps_type;
  _eps_type eps;

   typedef int64_t _minpts_type;
  _minpts_type minpts;





  typedef boost::shared_ptr< ::rviz_teleop_commander::group_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rviz_teleop_commander::group_<ContainerAllocator> const> ConstPtr;

}; // struct group_

typedef ::rviz_teleop_commander::group_<std::allocator<void> > group;

typedef boost::shared_ptr< ::rviz_teleop_commander::group > groupPtr;
typedef boost::shared_ptr< ::rviz_teleop_commander::group const> groupConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rviz_teleop_commander::group_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rviz_teleop_commander::group_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rviz_teleop_commander::group_<ContainerAllocator1> & lhs, const ::rviz_teleop_commander::group_<ContainerAllocator2> & rhs)
{
  return lhs.eps == rhs.eps &&
    lhs.minpts == rhs.minpts;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rviz_teleop_commander::group_<ContainerAllocator1> & lhs, const ::rviz_teleop_commander::group_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rviz_teleop_commander

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rviz_teleop_commander::group_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rviz_teleop_commander::group_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rviz_teleop_commander::group_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rviz_teleop_commander::group_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rviz_teleop_commander::group_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rviz_teleop_commander::group_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rviz_teleop_commander::group_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8b8807b2a10657febff20e77600c08cb";
  }

  static const char* value(const ::rviz_teleop_commander::group_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8b8807b2a10657feULL;
  static const uint64_t static_value2 = 0xbff20e77600c08cbULL;
};

template<class ContainerAllocator>
struct DataType< ::rviz_teleop_commander::group_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rviz_teleop_commander/group";
  }

  static const char* value(const ::rviz_teleop_commander::group_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rviz_teleop_commander::group_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 eps\n"
"int64 minpts\n"
;
  }

  static const char* value(const ::rviz_teleop_commander::group_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rviz_teleop_commander::group_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.eps);
      stream.next(m.minpts);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct group_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rviz_teleop_commander::group_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rviz_teleop_commander::group_<ContainerAllocator>& v)
  {
    s << indent << "eps: ";
    Printer<double>::stream(s, indent + "  ", v.eps);
    s << indent << "minpts: ";
    Printer<int64_t>::stream(s, indent + "  ", v.minpts);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RVIZ_TELEOP_COMMANDER_MESSAGE_GROUP_H
