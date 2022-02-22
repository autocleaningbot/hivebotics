#include <abluo_control/abluo_hw_interface.h>

// ROS parameter loading
#include <rosparam_shortcuts/rosparam_shortcuts.h>

namespace abluo_ns
{
  AbluoHWInterface::AbluoHWInterface(ros::NodeHandle &nh, urdf::Model *urdf_model)
      : ros_control_boilerplate::GenericHWInterface(nh, urdf_model)
  {
    telemetry_sub=nh.subscribe("/abluo/mycobotTelemetry", 1, &AbluoHWInterface::telemetryCallback, this);
    cmd_pub=nh.advertise<abluo_control::armCmd>("/abluo/armCmd", 3);

    ROS_INFO("abluoHWInterface Constructed");
  }

  void AbluoHWInterface::telemetryCallback(const abluo_control::abluoTelemetry::ConstPtr &msg){
    /*
    float32[6] angles #degrees
    float32[6] vel #deg/s
    time startSyncTime
    uint32 isrTicks # this would overflow if the robot is left on for 497 days straight at 100hz
    unint8 bufferHealth

      // States
    std::vector<double> joint_position_;
    std::vector<double> joint_velocity_;
    std::vector<double> joint_effort_;
    */

    for(int i=0; i<num_joints_; i++){
      //Joint Position & Joint Velocity found in generic_hardware_interface expect radians and radians/sec
          joint_position_[i]=msg->angles[i]*DEG_TO_RAD; //Convert to radians
    }

    bufferHealth=msg->bufferHealth;
  }

  void AbluoHWInterface::init()
  {
    // Call parent class version of this function
    GenericHWInterface::init();

    joint_position_prev_.resize(joint_position_.size());


    ROS_INFO_NAMED(name_, "AbluoHWInterface Ready.");
  }

  void AbluoHWInterface::read(ros::Duration &elapsed_time)
  {
    // No need to read since our write() command populates our state for us
    // This is where we will be reading from a serial port
    // ros::spinOnce();
  }

  void AbluoHWInterface::write(ros::Duration &elapsed_time)
  {

    static abluo_control::armCmd cmd_; // Static ensures variable is only created once and reused

    /*
      // States
      float32[6] angle #degrees
      float32[6] vel #deg/s
      time startSyncTime
      uint32 isrTicks # this would overflow if the robot is left on for 497 days straight at 100hz
      unint8 bufferHealth

      // Commands
      std::vector<double> joint_position_command_;
      std::vector<double> joint_velocity_command_;
      std::vector<double> joint_effort_command_;
    */

    // Safety
    // enforceLimits(elapsed_time);
    bool change_detected = false;
    for(int i=0; i<num_joints_; i++) {
      if (joint_position_prev_[1] != joint_position_command_[1]){
        change_detected = true;
        i=num_joints_;
      }
    }

    if (change_detected) {
      for(int i=0; i<num_joints_; i++){
        cmd_.angle[i]=joint_position_command_[i]*RAD_TO_DEG;
        joint_position_prev_[i] =joint_position_command_[i];
      }
    }

    if (bufferHealth < DESIRED_BUFFERED_POINTS) {
          cmd_.msg_ctr=cmd_.msg_ctr+1;
          cmd_pub.publish(cmd_);
    }

  }

  void AbluoHWInterface::enforceLimits(ros::Duration &period)
  {
    // Enforces position and velocity
    // pos_jnt_sat_interface_.enforceLimits(period);
  }

} // namespace ros_control_boilerplate
