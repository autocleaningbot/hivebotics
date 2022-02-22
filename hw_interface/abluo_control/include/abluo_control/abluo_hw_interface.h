#ifndef ABLUO_HW_INTERFACE_H
#define ABLUO_HW_INTERFACE_H

#include <ros_control_boilerplate/generic_hw_interface.h>
#include <abluo_control/armCmd.h>
#include <abluo_control/abluoTelemetry.h>

#define DEG_TO_RAD 0.01745329251
#define RAD_TO_DEG 57.2957795131
#define DESIRED_BUFFERED_POINTS 12

namespace abluo_ns
{
/** \brief Hardware interface for a robot */
class AbluoHWInterface : public ros_control_boilerplate::GenericHWInterface
{
public:
  /**
   * \brief Constructor
   * \param nh - Node handle for topics.
   */
  AbluoHWInterface(ros::NodeHandle& nh, urdf::Model* urdf_model = NULL);

  /** \brief Initialize the robot hardware interface */
  virtual void init();

  /** \brief Read the state from the robot hardware. */
  virtual void read(ros::Duration& elapsed_time);

  /** \brief Write the command to the robot hardware. */
  virtual void write(ros::Duration& elapsed_time);

  /** \breif Enforce limits for all values before writing */
  virtual void enforceLimits(ros::Duration& period);

protected:

  ros::Subscriber telemetry_sub;
  void telemetryCallback(const abluo_control::abluoTelemetry::ConstPtr &msg);

  ros::Publisher cmd_pub;
  std::vector<double> joint_position_prev_;
  int bufferHealth=0;

};  // class

}  // namespace ros_control_boilerplate

#endif
