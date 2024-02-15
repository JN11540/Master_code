// Generated by gencpp from file hdl_people_tracking/Cluster.msg
// DO NOT EDIT!


#ifndef HDL_PEOPLE_TRACKING_MESSAGE_CLUSTER_H
#define HDL_PEOPLE_TRACKING_MESSAGE_CLUSTER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Point.h>

namespace hdl_people_tracking
{
template <class ContainerAllocator>
struct Cluster_
{
  typedef Cluster_<ContainerAllocator> Type;

  Cluster_()
    : is_human(false)
    , min_pt()
    , max_pt()
    , size()
    , centroid()  {
    }
  Cluster_(const ContainerAllocator& _alloc)
    : is_human(false)
    , min_pt(_alloc)
    , max_pt(_alloc)
    , size(_alloc)
    , centroid(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _is_human_type;
  _is_human_type is_human;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _min_pt_type;
  _min_pt_type min_pt;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _max_pt_type;
  _max_pt_type max_pt;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _size_type;
  _size_type size;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _centroid_type;
  _centroid_type centroid;





  typedef boost::shared_ptr< ::hdl_people_tracking::Cluster_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdl_people_tracking::Cluster_<ContainerAllocator> const> ConstPtr;

}; // struct Cluster_

typedef ::hdl_people_tracking::Cluster_<std::allocator<void> > Cluster;

typedef boost::shared_ptr< ::hdl_people_tracking::Cluster > ClusterPtr;
typedef boost::shared_ptr< ::hdl_people_tracking::Cluster const> ClusterConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdl_people_tracking::Cluster_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdl_people_tracking::Cluster_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hdl_people_tracking::Cluster_<ContainerAllocator1> & lhs, const ::hdl_people_tracking::Cluster_<ContainerAllocator2> & rhs)
{
  return lhs.is_human == rhs.is_human &&
    lhs.min_pt == rhs.min_pt &&
    lhs.max_pt == rhs.max_pt &&
    lhs.size == rhs.size &&
    lhs.centroid == rhs.centroid;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hdl_people_tracking::Cluster_<ContainerAllocator1> & lhs, const ::hdl_people_tracking::Cluster_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hdl_people_tracking

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hdl_people_tracking::Cluster_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdl_people_tracking::Cluster_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdl_people_tracking::Cluster_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdl_people_tracking::Cluster_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdl_people_tracking::Cluster_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdl_people_tracking::Cluster_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdl_people_tracking::Cluster_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8bbe286e65ded24df1e6c701b484c2d7";
  }

  static const char* value(const ::hdl_people_tracking::Cluster_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8bbe286e65ded24dULL;
  static const uint64_t static_value2 = 0xf1e6c701b484c2d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::hdl_people_tracking::Cluster_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdl_people_tracking/Cluster";
  }

  static const char* value(const ::hdl_people_tracking::Cluster_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdl_people_tracking::Cluster_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool is_human\n"
"\n"
"geometry_msgs/Point min_pt\n"
"geometry_msgs/Point max_pt\n"
"geometry_msgs/Vector3 size\n"
"geometry_msgs/Point centroid\n"
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
;
  }

  static const char* value(const ::hdl_people_tracking::Cluster_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdl_people_tracking::Cluster_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_human);
      stream.next(m.min_pt);
      stream.next(m.max_pt);
      stream.next(m.size);
      stream.next(m.centroid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Cluster_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdl_people_tracking::Cluster_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdl_people_tracking::Cluster_<ContainerAllocator>& v)
  {
    s << indent << "is_human: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_human);
    s << indent << "min_pt: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.min_pt);
    s << indent << "max_pt: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.max_pt);
    s << indent << "size: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.size);
    s << indent << "centroid: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.centroid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDL_PEOPLE_TRACKING_MESSAGE_CLUSTER_H