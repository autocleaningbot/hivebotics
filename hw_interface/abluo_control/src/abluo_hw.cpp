#include <abluo_control/abluo_hw.h>

MyRobot::MyRobot(ros::NodeHandle &root_nh) : nh_(root_nh), private_nh_("~"), priv_spinner(1)
{
  hardware_interface::JointStateHandle state_handle_0("robot_arm_mount_to_actuator", &pos_[0], &vel_[0], &eff_[0]);
  jnt_state_interface.registerHandle(state_handle_0);
  hardware_interface::JointStateHandle state_handle_1("joint2_to_joint1", &pos_[1], &vel_[1], &eff_[1]);
  jnt_state_interface.registerHandle(state_handle_1);
  hardware_interface::JointStateHandle state_handle_2("joint3_to_joint2", &pos_[2], &vel_[2], &eff_[2]);
  jnt_state_interface.registerHandle(state_handle_2);
  hardware_interface::JointStateHandle state_handle_3("joint4_to_joint3", &pos_[3], &vel_[3], &eff_[3]);
  jnt_state_interface.registerHandle(state_handle_3);
  hardware_interface::JointStateHandle state_handle_4("joint5_to_joint4", &pos_[4], &vel_[4], &eff_[4]);
  jnt_state_interface.registerHandle(state_handle_4);
  hardware_interface::JointStateHandle state_handle_5("joint6_to_joint5", &pos_[5], &vel_[5], &eff_[5]);
  jnt_state_interface.registerHandle(state_handle_5);
  hardware_interface::JointStateHandle state_handle_6("joint6output_to_joint6", &pos_[6], &vel_[6], &eff_[6]);
  jnt_state_interface.registerHandle(state_handle_6);
  registerInterface(&jnt_state_interface);

  hardware_interface::JointHandle eff_handle_0(jnt_state_interface.getHandle("robot_arm_mount_to_actuator"), &cmd_[0]);
  jnt_position_interface.registerHandle(eff_handle_0);
  hardware_interface::JointHandle eff_handle_1(jnt_state_interface.getHandle("joint2_to_joint1"), &cmd_[1]);
  jnt_position_interface.registerHandle(eff_handle_1);
  hardware_interface::JointHandle eff_handle_2(jnt_state_interface.getHandle("joint3_to_joint2"), &cmd_[2]);
  jnt_position_interface.registerHandle(eff_handle_2);
  hardware_interface::JointHandle eff_handle_3(jnt_state_interface.getHandle("joint4_to_joint3"), &cmd_[3]);
  jnt_position_interface.registerHandle(eff_handle_3);
  hardware_interface::JointHandle eff_handle_4(jnt_state_interface.getHandle("joint5_to_joint4"), &cmd_[4]);
  jnt_position_interface.registerHandle(eff_handle_4);
  hardware_interface::JointHandle eff_handle_5(jnt_state_interface.getHandle("joint6_to_joint5"), &cmd_[5]);
  jnt_position_interface.registerHandle(eff_handle_5);
  hardware_interface::JointHandle eff_handle_6(jnt_state_interface.getHandle("joint6output_to_joint6"), &cmd_[6]);
  jnt_position_interface.registerHandle(eff_handle_6);
  registerInterface(&jnt_position_interface);

  init(nh_, private_nh_);

  // joint_subscriber_ = nh_.subscribe("/joint_states_array", 10, &MyRobot::jointSubscribeCallback, this);
  joint_subscriber_ = nh_.subscribe("/joint_states_array", 1, &MyRobot::jointSubscribeCallback, this);

  // cmd_publisher_ = nh_.advertise<std_msgs::Float32MultiArray>("/joint_cmd_array", 10);
  cmd_publisher_ = nh_.advertise<abluo_control::armCmd>("/joint_cmd_array", 1);

  priv_spinner.start();
}

void MyRobot::jointSubscribeCallback(const abluo_control::abluoTelemetry::ConstPtr &msg)
{

  // float32 lin_act_pos #val
  // float32 lin_act_vel
  // float32[6] joint_pos #degrees
  // float32[6] joint_vel #deg/s

  pos_[0] = msg->lin_act_pos;
  vel_[0] = msg->lin_act_vel;

  for (int i = 0; i < 6; ++i)
  {
    pos_[i] = msg->joint_pos[i];
    vel_[i] = msg->joint_vel[i];
  }
}

void MyRobot::read(ros::Time time, ros::Duration period)
{
  ros::spinOnce();
  // for (int i = 0; i < 7; i++)
  // {
  //   vel_[i] = 0;
  //   eff_[i] = 0;
  // }
}

void MyRobot::write(ros::Time time, ros::Duration period)
{
  // float32 lin_act_pos #val
  // float32 lin_act_vel
  // float32[6] joint_pos #degrees
  // float32[6] joint_vel #deg/s
  
  commands.lin_act_pos = cmd_[0];

  for (int i = 1; i < 7; ++i)
  {
    commands.joint_pos[i-1] = cmd_[i];
  }
  cmd_publisher_.publish(commands);
}