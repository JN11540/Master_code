// Generated by gencpp from file hdl_people_tracking/Track.msg
// DO NOT EDIT!


#ifndef HDL_PEOPLE_TRACKING_MESSAGE_TRACK_H
#define HDL_PEOPLE_TRACKING_MESSAGE_TRACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Vector3.h>
#include <hdl_people_tracking/Cluster.h>

namespace hdl_people_tracking
{
template <class ContainerAllocator>
struct Track_
{
  typedef Track_<ContainerAllocator> Type;

  Track_()
    : id(0)
    , age(0.0)
    , pos()
    , vel()
    , pos_cov()
    , vel_cov()
    , associated()  {
      pos_cov.assign(0.0);

      vel_cov.assign(0.0);
  }
  Track_(const ContainerAllocator& _alloc)
    : id(0)
    , age(0.0)
    , pos(_alloc)
    , vel(_alloc)
    , pos_cov()
    , vel_cov()
    , associated(_alloc)  {
  (void)_alloc;
      pos_cov.assign(0.0);

      vel_cov.assign(0.0);
  }



   typedef int32_t _id_type;
  _id_type id;

   typedef double _age_type;
  _age_type age;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _pos_type;
  _pos_type pos;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _vel_type;
  _vel_type vel;

   typedef boost::array<double, 9>  _pos_cov_type;
  _pos_cov_type pos_cov;

   typedef boost::array<double, 9>  _vel_cov_type;
  _vel_cov_type vel_cov;

   typedef std::vector< ::hdl_people_tracking::Cluster_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::hdl_people_tracking::Cluster_<ContainerAllocator> >> _associated_type;
  _associated_type associated;





  typedef boost::shared_ptr< ::hdl_people_tracking::Track_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdl_people_tracking::Track_<ContainerAllocator> const> ConstPtr;

}; // struct Track_

typedef ::hdl_people_tracking::Track_<std::allocator<void> > Track;

typedef boost::shared_ptr< ::hdl_people_tracking::Track > TrackPtr;
typedef boost::shared_ptr< ::hdl_people_tracking::Track const> TrackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdl_people_tracking::Track_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdl_people_tracking::Track_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hdl_people_tracking::Track_<ContainerAllocator1> & lhs, const ::hdl_people_tracking::Track_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.age == rhs.age &&
    lhs.pos == rhs.pos &&
    lhs.vel == rhs.vel &&
    lhs.pos_cov == rhs.pos_cov &&
    lhs.vel_cov == rhs.vel_cov &&
    lhs.associated == rhs.associated;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hdl_people_tracking::Track_<ContainerAllocator1> & lhs, const ::hdl_people_tracking::Track_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hdl_people_tracking

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hdl_people_tracking::Track_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdl_people_tracking::Track_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdl_people_tracking::Track_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdl_people_tracking::Track_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdl_people_tracking::Track_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdl_people_tracking::Track_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdl_people_tracking::Track_<ContainerAllocator> >
{
  static const char* value()
  {
    return "527d334e3f10954bd65c67a79b62ccc6";
  }

  static const char* value(const ::hdl_people_tracking::Track_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x527d334e3f10954bULL;
  static const uint64_t static_value2 = 0xd65c67a79b62ccc6ULL;
};

template<class ContainerAllocator>
struct DataType< ::hdl_people_tracking::Track_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdl_people_tracking/Track";
  }

  static const char* value(const ::hdl_people_tracking::Track_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdl_people_tracking::Track_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n"
"float64 age\n"
"geometry_msgs/Point pos\n"
"geometry_msgs/Vector3 vel\n"
"\n"
"float64[9] pos_cov\n"
"float64[9] vel_cov\n"
"\n"
"hdl_people_tracking/Cluster[] associated\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: hdl_people_tracking/Cluster\n"
"bool is_human\n"
"\n"
"geometry_msgs/Point min_pt\n"
"geometry_msgs/Point max_pt\n"
"geometry_msgs/Vector3 size\n"
"geometry_msgs/Point centroid\n"
;
  }

  static const char* value(const ::hdl_people_tracking::Track_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdl_people_tracking::Track_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.age);
      stream.next(m.pos);
      stream.next(m.vel);
      stream.next(m.pos_cov);
      stream.next(m.vel_cov);
      stream.next(m.associated);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Track_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdl_people_tracking::Track_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdl_people_tracking::Track_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "age: ";
    Printer<double>::stream(s, indent + "  ", v.age);
    s << indent << "pos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.pos);
    s << indent << "vel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.vel);
    s << indent << "pos_cov[]" << std::endl;
    for (size_t i = 0; i < v.pos_cov.size(); ++i)
    {
      s << indent << "  pos_cov[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.pos_cov[i]);
    }
    s << indent << "vel_cov[]" << std::endl;
    for (size_t i = 0; i < v.vel_cov.size(); ++i)
    {
      s << indent << "  vel_cov[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.vel_cov[i]);
    }
    s << indent << "associated[]" << std::endl;
    for (size_t i = 0; i < v.associated.size(); ++i)
    {
      s << indent << "  associated[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::hdl_people_tracking::Cluster_<ContainerAllocator> >::stream(s, indent + "    ", v.associated[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDL_PEOPLE_TRACKING_MESSAGE_TRACK_H
