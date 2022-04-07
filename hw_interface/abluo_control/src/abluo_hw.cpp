#include <abluo_control/abluo_hw.h>

MyRobot::MyRobot(ros::NodeHandle &root_nh) : nh_(root_nh), private_nh_("~"), priv_spinner(3)
{
  XmlRpc::XmlRpcValue v;
  nh_.param("/hardware_interface/joints", v, v);
  num_jnts = v.size();
  jnt_names.resize(num_jnts);

  // load joint names
  for(int i =0; i < v.size(); i++)
  {
    jnt_names[i] = static_cast<std::string>(v[i]);
    std::cerr << "jnt_names: " << jnt_names[i] << std::endl;
  }

  pos_.resize(num_jnts, 0.0);
  vel_.resize(num_jnts, 0.0);
  eff_.resize(num_jnts, 0.0);

  pos_cmd_.resize(num_jnts, 0.0);
  vel_cmd_.resize(num_jnts, 0.0);
  acc_cmd_.resize(num_jnts, 0.0);
  eff_cmd_.resize(num_jnts, 0.0);


  for(int i = 0 ; i < num_jnts ; ++i)
  {
    // hardware_interface::JointStateHandle
    hardware_interface::JointStateHandle state_handle(jnt_names[i], &pos_[i], &vel_[i], &eff_[i]);
    jnt_state_interface.registerHandle(state_handle);

    // hardware_interface::PositionJointInterface
    hardware_interface::JointHandle pos_cmd_handle(jnt_state_interface.getHandle(jnt_names[i]), &pos_cmd_[i]);
    jnt_position_interface.registerHandle(pos_cmd_handle);

    // hardware_interface::VelocityJointInterface
    hardware_interface::JointHandle vel_cmd_handle(jnt_state_interface.getHandle(jnt_names[i]), &vel_cmd_[i]);
    jnt_velocity_interface.registerHandle(vel_cmd_handle);

    // hardware_interface::EffortJointInterface
    hardware_interface::JointHandle eff_cmd_handle(jnt_state_interface.getHandle(jnt_names[i]), &eff_cmd_[i]);
    jnt_effort_interface_.registerHandle(eff_cmd_handle);
  }

  registerInterface(&jnt_state_interface);
  registerInterface(&jnt_position_interface);
  registerInterface(&jnt_velocity_interface);
  registerInterface(&jnt_effort_interface_);


  init(nh_, private_nh_);


  // joint_subscriber_ = nh_.subscribe("/joint_states_array", 10, &MyRobot::jointSubscribeCallback, this);
  joint_subscriber_ = nh_.subscribe("/joint_states_array", 10, &MyRobot::jointSubscribeCallback, this);

  // cmd_publisher_ = nh_.advertise<std_msgs::Float32MultiArray>("/joint_cmd_array", 10);
  cmd_publisher_ = nh_.advertise<abluo_control::armCmd>("/joint_cmd_array", 10);

  priv_spinner.start();

  joint_position_prev.resize(num_jnts, 0.0);
}

void MyRobot::jointSubscribeCallback(const abluo_control::abluoTelemetry::ConstPtr &msg)
{

  // float32 lin_act_pos #val
  // float32 lin_act_vel
  // float32[6] joint_pos #rad
  // float32[6] joint_vel #rad/s

  pos_[0] = msg->lin_act_pos;
  vel_[0] = msg->lin_act_vel;
  // eff_[0] = 0;

  for (int i = 0; i < 6; ++i)
  {
    pos_[i+1] = msg->joint_pos[i];
    vel_[i+1] = msg->joint_vel[i];
    // eff_[i+1] = 0;
  }
}

void MyRobot::read(ros::Time time, ros::Duration period)
{
  // ros::spinOnce();
  // for (int i = 0; i < 7; i++)
  // {
  //   vel_[i] = 0;
  //   eff_[i] = 0;
  // }
}

void MyRobot::write(ros::Time time, ros::Duration elapsed_time)
{
  // float32 lin_act_pos #val
  // float32 lin_act_vel
  // float32[6] joint_pos #degrees
  // float32[6] joint_vel #deg/s

  /*
  caculate at a much higher rate then needed. then only send ones needed to fill buffer.
  */
  

  // only publish a msg if it has a change
  bool change_detected=false;
  for(int i=0; i < num_jnts; i++)
  {
    if(joint_position_prev[i] != pos_cmd_[i])
    {
      change_detected=true;
      i = num_jnts; // exit loop
    }
  }

  // std::cout << "change_detected: " << change_detected << std::endl;

  // if a new msg is available then send it
  if(change_detected)
  {
    commands.lin_act_pos = pos_cmd_[0];
    commands.lin_act_vel = (pos_cmd_[0] - joint_position_prev[0])/elapsed_time.toSec();
    joint_position_prev[0] = pos_cmd_[0];

    for (int i = 1; i < num_jnts; ++i)
    {
      commands.joint_pos[i-1] = pos_cmd_[i];
      commands.joint_vel[i-1] = (pos_cmd_[i]-joint_position_prev[i])/elapsed_time.toSec();
      joint_position_prev[i] = pos_cmd_[i];
    }
  cmd_publisher_.publish(commands);
  } // changed detected

}