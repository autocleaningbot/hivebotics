#include <map>
#include <string>
#include <vector>
#include <std_msgs/Float32MultiArray.h>

#include <ros/ros.h>

#include <hardware_interface/joint_command_interface.h>
#include <hardware_interface/joint_state_interface.h>
#include <hardware_interface/robot_hw.h>

// ROS parameter loading
#include <rosparam_shortcuts/rosparam_shortcuts.h>

#include "abluo_control/abluoTelemetry.h"
#include "abluo_control/armCmd.h"

class MyRobot : public hardware_interface::RobotHW
{
public:
    MyRobot(ros::NodeHandle &root_nh);
//    bool init(ros::NodeHandle &root_nh, ros::NodeHandle &robot_hw_nh);

    ros::Time getTime() const { return ros::Time::now(); }
    ros::Duration getPeriod() const { return ros::Duration(0.01); }

    void read(ros::Time, ros::Duration);
    void write(ros::Time, ros::Duration);


private:
  ros::NodeHandle nh_;
  ros::NodeHandle private_nh_;
  ros::Publisher cmd_publisher_;
  ros::Subscriber joint_subscriber_;
  // hardware_interface::JointStateInterface gives read access to all joint values
  // without conflicting with other controllers.
  std::vector<hardware_interface::JointStateHandle*> state_handles;

  std::vector<hardware_interface::JointHandle*> pos_cmd_handles;
  std::vector<hardware_interface::JointHandle*> vel_cmd_handles;
  // std::vector<hardware_interface::JointHandle> vel_cmd_handles;
  
  hardware_interface::JointStateInterface jnt_state_interface;
  // hardware_interface::PositionJointInterface inherits from
  // hardware_interface::JointCommandInterface and is used for reading and writing
  // joint positions. Because this interface reserves the joints for write access,
  // conflicts with other controllers writing to the same joints might occure.
  // To only read joint positions, avoid conflicts using
  // hardware_interface::JointStateInterface.
  // hardware_interface::PositionJointInterface jnt_pos_interface;
    hardware_interface::PositionJointInterface jnt_position_interface;
    hardware_interface::VelocityJointInterface jnt_velocity_interface;
    hardware_interface::EffortJointInterface jnt_effort_interface_;

  // Data member array to store the controller commands which are sent to the
  // robot's resources (joints, actuators)
    std::vector<double> pos_cmd_;
    std::vector<double> vel_cmd_;
    std::vector<double> acc_cmd_;
    std::vector<double> eff_cmd_;

  // Data member arrays to store the state of the robot's resources (joints, sensors)
    std::vector<double> pos_;// = {};
    std::vector<double> vel_;// = {};
    std::vector<double> eff_;// = {};

    std::vector<double> joint_position_prev;

    // cmd msg
    abluo_control::armCmd commands;  

    ros::AsyncSpinner priv_spinner;

    std::vector<std::string> jnt_names;

    int num_jnts;

  void jointSubscribeCallback(const abluo_control::abluoTelemetry::ConstPtr &msg);
};