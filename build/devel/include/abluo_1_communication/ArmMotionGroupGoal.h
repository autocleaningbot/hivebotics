// Generated by gencpp from file abluo_1_communication/ArmMotionGroupGoal.msg
// DO NOT EDIT!


#ifndef ABLUO_1_COMMUNICATION_MESSAGE_ARMMOTIONGROUPGOAL_H
#define ABLUO_1_COMMUNICATION_MESSAGE_ARMMOTIONGROUPGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace abluo_1_communication
{
template <class ContainerAllocator>
struct ArmMotionGroupGoal_
{
  typedef ArmMotionGroupGoal_<ContainerAllocator> Type;

  ArmMotionGroupGoal_()
    : joint_values()  {
    }
  ArmMotionGroupGoal_(const ContainerAllocator& _alloc)
    : joint_values(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _joint_values_type;
  _joint_values_type joint_values;





  typedef boost::shared_ptr< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ArmMotionGroupGoal_

typedef ::abluo_1_communication::ArmMotionGroupGoal_<std::allocator<void> > ArmMotionGroupGoal;

typedef boost::shared_ptr< ::abluo_1_communication::ArmMotionGroupGoal > ArmMotionGroupGoalPtr;
typedef boost::shared_ptr< ::abluo_1_communication::ArmMotionGroupGoal const> ArmMotionGroupGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator1> & lhs, const ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator2> & rhs)
{
  return lhs.joint_values == rhs.joint_values;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator1> & lhs, const ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace abluo_1_communication

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5f00ef9565c1cd7202da577ba4f0ed79";
  }

  static const char* value(const ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5f00ef9565c1cd72ULL;
  static const uint64_t static_value2 = 0x02da577ba4f0ed79ULL;
};

template<class ContainerAllocator>
struct DataType< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "abluo_1_communication/ArmMotionGroupGoal";
  }

  static const char* value(const ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# This Passes Joint Angles to the server which plans and calls the motion\n"
"# Goal\n"
"int32[] joint_values\n"
;
  }

  static const char* value(const ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmMotionGroupGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::abluo_1_communication::ArmMotionGroupGoal_<ContainerAllocator>& v)
  {
    s << indent << "joint_values[]" << std::endl;
    for (size_t i = 0; i < v.joint_values.size(); ++i)
    {
      s << indent << "  joint_values[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.joint_values[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ABLUO_1_COMMUNICATION_MESSAGE_ARMMOTIONGROUPGOAL_H