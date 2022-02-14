// Generated by gencpp from file rt_gene/MSG_Blink.msg
// DO NOT EDIT!


#ifndef RT_GENE_MESSAGE_MSG_BLINK_H
#define RT_GENE_MESSAGE_MSG_BLINK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rt_gene
{
template <class ContainerAllocator>
struct MSG_Blink_
{
  typedef MSG_Blink_<ContainerAllocator> Type;

  MSG_Blink_()
    : subject_id()
    , blink(false)
    , probability(0.0)  {
    }
  MSG_Blink_(const ContainerAllocator& _alloc)
    : subject_id(_alloc)
    , blink(false)
    , probability(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _subject_id_type;
  _subject_id_type subject_id;

   typedef uint8_t _blink_type;
  _blink_type blink;

   typedef double _probability_type;
  _probability_type probability;





  typedef boost::shared_ptr< ::rt_gene::MSG_Blink_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rt_gene::MSG_Blink_<ContainerAllocator> const> ConstPtr;

}; // struct MSG_Blink_

typedef ::rt_gene::MSG_Blink_<std::allocator<void> > MSG_Blink;

typedef boost::shared_ptr< ::rt_gene::MSG_Blink > MSG_BlinkPtr;
typedef boost::shared_ptr< ::rt_gene::MSG_Blink const> MSG_BlinkConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rt_gene::MSG_Blink_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rt_gene::MSG_Blink_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rt_gene::MSG_Blink_<ContainerAllocator1> & lhs, const ::rt_gene::MSG_Blink_<ContainerAllocator2> & rhs)
{
  return lhs.subject_id == rhs.subject_id &&
    lhs.blink == rhs.blink &&
    lhs.probability == rhs.probability;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rt_gene::MSG_Blink_<ContainerAllocator1> & lhs, const ::rt_gene::MSG_Blink_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rt_gene

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rt_gene::MSG_Blink_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rt_gene::MSG_Blink_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_gene::MSG_Blink_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_gene::MSG_Blink_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_gene::MSG_Blink_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_gene::MSG_Blink_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rt_gene::MSG_Blink_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aa03186403fe21e492d9b7fd51b80207";
  }

  static const char* value(const ::rt_gene::MSG_Blink_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaa03186403fe21e4ULL;
  static const uint64_t static_value2 = 0x92d9b7fd51b80207ULL;
};

template<class ContainerAllocator>
struct DataType< ::rt_gene::MSG_Blink_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rt_gene/MSG_Blink";
  }

  static const char* value(const ::rt_gene::MSG_Blink_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rt_gene::MSG_Blink_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string subject_id\n"
"bool blink\n"
"float64 probability\n"
;
  }

  static const char* value(const ::rt_gene::MSG_Blink_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rt_gene::MSG_Blink_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.subject_id);
      stream.next(m.blink);
      stream.next(m.probability);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MSG_Blink_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rt_gene::MSG_Blink_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rt_gene::MSG_Blink_<ContainerAllocator>& v)
  {
    s << indent << "subject_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.subject_id);
    s << indent << "blink: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.blink);
    s << indent << "probability: ";
    Printer<double>::stream(s, indent + "  ", v.probability);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RT_GENE_MESSAGE_MSG_BLINK_H
