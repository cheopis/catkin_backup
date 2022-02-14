// Generated by gencpp from file rt_gene/MSG_HeadposeList.msg
// DO NOT EDIT!


#ifndef RT_GENE_MESSAGE_MSG_HEADPOSELIST_H
#define RT_GENE_MESSAGE_MSG_HEADPOSELIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <rt_gene/MSG_Headpose.h>

namespace rt_gene
{
template <class ContainerAllocator>
struct MSG_HeadposeList_
{
  typedef MSG_HeadposeList_<ContainerAllocator> Type;

  MSG_HeadposeList_()
    : header()
    , subjects()  {
    }
  MSG_HeadposeList_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , subjects(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::rt_gene::MSG_Headpose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rt_gene::MSG_Headpose_<ContainerAllocator> >::other >  _subjects_type;
  _subjects_type subjects;





  typedef boost::shared_ptr< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> const> ConstPtr;

}; // struct MSG_HeadposeList_

typedef ::rt_gene::MSG_HeadposeList_<std::allocator<void> > MSG_HeadposeList;

typedef boost::shared_ptr< ::rt_gene::MSG_HeadposeList > MSG_HeadposeListPtr;
typedef boost::shared_ptr< ::rt_gene::MSG_HeadposeList const> MSG_HeadposeListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rt_gene::MSG_HeadposeList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rt_gene::MSG_HeadposeList_<ContainerAllocator1> & lhs, const ::rt_gene::MSG_HeadposeList_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.subjects == rhs.subjects;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rt_gene::MSG_HeadposeList_<ContainerAllocator1> & lhs, const ::rt_gene::MSG_HeadposeList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rt_gene

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2cbdf9112f4c4d7b55dd0fe65be605bb";
  }

  static const char* value(const ::rt_gene::MSG_HeadposeList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2cbdf9112f4c4d7bULL;
  static const uint64_t static_value2 = 0x55dd0fe65be605bbULL;
};

template<class ContainerAllocator>
struct DataType< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rt_gene/MSG_HeadposeList";
  }

  static const char* value(const ::rt_gene::MSG_HeadposeList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"MSG_Headpose[] subjects\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: rt_gene/MSG_Headpose\n"
"string subject_id\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::rt_gene::MSG_HeadposeList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.subjects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MSG_HeadposeList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rt_gene::MSG_HeadposeList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rt_gene::MSG_HeadposeList_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "subjects[]" << std::endl;
    for (size_t i = 0; i < v.subjects.size(); ++i)
    {
      s << indent << "  subjects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rt_gene::MSG_Headpose_<ContainerAllocator> >::stream(s, indent + "    ", v.subjects[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RT_GENE_MESSAGE_MSG_HEADPOSELIST_H
