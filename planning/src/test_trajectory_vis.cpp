#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>

#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>

#include <moveit_visual_tools/moveit_visual_tools.h>

#include <tf/tf.h>

#include "planning/custom_utils.h"

int main(int argc, char** argv)
{
  ros::init(argc, argv, "abluo_elipse_traj_moition");
  ros::NodeHandle node_handle("~");

  float xEpAxis, yEpAxis;
  int waypoint_step_size;
  node_handle.getParam("xEpAxis", xEpAxis);
  node_handle.getParam("yEpAxis", yEpAxis);
  node_handle.getParam("wpStepSize", waypoint_step_size);

  ROS_INFO_STREAM("[LOADED PARAMS] xEpAxis: " << xEpAxis);
  ROS_INFO_STREAM("[LOADED PARAMS] yEpAxis: " << yEpAxis);

  ros::AsyncSpinner spinner(1);
  spinner.start();


  // Setup
  // ^^^^^
  //
  // MoveIt operates on sets of joints called "planning groups" and stores them in an object called
  // the `JointModelGroup`. Throughout MoveIt the terms "planning group" and "joint model group"
  // are used interchangably.
  static const std::string PLANNING_GROUP = "arm_motion_group";

  // The :move_group_interface:`MoveGroupInterface` class can be easily
  // setup using just the name of the planning group you would like to control and plan for.
  moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);

  // We will use the :planning_scene_interface:`PlanningSceneInterface`
  // class to add and remove collision objects in our "virtual world" scene
  moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

  // Raw pointers are frequently used to refer to the planning group for improved performance.
  const robot_state::JointModelGroup* joint_model_group =
      move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);

  // Visualization
  // ^^^^^^^^^^^^^
  //
  // The package MoveItVisualTools provides many capabilties for visualizing objects, robots,
  // and trajectories in RViz as well as debugging tools such as step-by-step introspection of a script
  namespace rvt = rviz_visual_tools;
//   moveit_visual_tools::MoveItVisualTools visual_tools("base");
  moveit_visual_tools::MoveItVisualTools visual_tools(move_group.getPoseReferenceFrame());
  visual_tools.deleteAllMarkers();

  // Remote control is an introspection tool that allows users to step through a high level script
  // via buttons and keyboard shortcuts in RViz
  visual_tools.loadRemoteControl();

  // RViz provides many types of markers, in this demo we will use text, cylinders, and spheres
  Eigen::Isometry3d text_pose = Eigen::Isometry3d::Identity();
  text_pose.translation().z() = 1.75;
  visual_tools.publishText(text_pose, "MoveGroupInterface Demo", rvt::WHITE, rvt::XLARGE);

  // Batch publishing is used to reduce the number of messages being sent to RViz for large visualizations
  visual_tools.trigger();


  // stop program at this point
  visual_tools.prompt("Press 'next' in the RvizVisualToolsGui window to start the demo");


  // Cartesian Paths
  // ^^^^^^^^^^^^^^^
  // You can plan a Cartesian path directly by specifying a list of waypoints
  // for the end-effector to go through. Note that we are starting
  // from the new start state above.  The initial pose (start state) does not
  // need to be added to the waypoint list but adding it can help with visualizations

   // const double a = 0.15;
  // const double b = 0.15;
  const double a = xEpAxis;
  const double b = yEpAxis;
  const double PI = 3.14159265;
  const double h = 0.318500;
  const double k = 1.0734291;

  // double pos_x = a + h;
  // double pos_y = k;

  std::vector<geometry_msgs::Pose> waypoints;

  geometry_msgs::PoseStamped curr_pos =  move_group.getCurrentPose();

  geometry_msgs::Pose target_pose2;
  // target_pose2.orientation.w = 0.000342435;
//   target_pose2.orientation.w = 1;
//   target_pose2.position.x = pos_x;
//   target_pose2.position.y = pos_y;
  // target_pose2.position.z = 0.414383;
//   target_pose2.position.z = 0.4;
//   waypoints.push_back(target_pose2); //Push initial pose
  //Push intial pose
  waypoints.push_back(curr_pos.pose);

  for (int i = 0; i <= 360; i+= waypoint_step_size) {
    target_pose2.position.x = a * cos(i*PI/180.0) + curr_pos.pose.position.x;
    target_pose2.position.y = b * sin(i*PI/180.0) + curr_pos.pose.position.y;
    target_pose2.position.z = curr_pos.pose.position.z;

    target_pose2.orientation = curr_pos.pose.orientation;
// 
    // target_pose2.position.x = a * cos(i*PI/180.0);
    // target_pose2.position.y = b * sin(i*PI/180.0);
    // target_pose2.position.z = 0.45;

    // target_pose2.orientation.w = 1;


    // ROS_INFO("POS_X: %f",pos_x);
    // ROS_INFO("POS_Y: %f",pos_y);
    waypoints.push_back(target_pose2);
  }


  ROS_INFO("move_group.getPoseReferenceFrame(): %s", move_group.getPoseReferenceFrame().c_str());

  // Visualize the plan in RViz
  visual_tools.deleteAllMarkers();
  visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
  visual_tools.publishPath(waypoints, rvt::LIME_GREEN, rvt::SMALL);
  for (std::size_t i = 0; i < waypoints.size(); ++i)
    visual_tools.publishAxisLabeled(waypoints[i], "pt" + std::to_string(i), rvt::SMALL);
  visual_tools.trigger();
  
  


  moveit_msgs::RobotTrajectory::Ptr trajectory(new moveit_msgs::RobotTrajectory);
  const double jump_threshold = 0.0;
  const double eef_step = 0.01;
  double fraction = move_group.computeCartesianPath(waypoints, eef_step, jump_threshold, *trajectory);
  ROS_INFO_NAMED("tutorial", "Visualizing plan 4 (Cartesian path) (%.2f%% acheived)", fraction * 100.0);
  // hivebotics::printRobotTrajectoryMsg(*trajectory);
  // visual_tools.prompt("[1] Press 'next' in the RvizVisualToolsGui window to plan the trajectory & go to 1st wp");
  

  // // go to first waypoint  
  // std::vector<geometry_msgs::Pose> firstWaypoint;
  // firstWaypoint.push_back(waypoints[0]);

  // trajectory = moveit_msgs::RobotTrajectory::Ptr(new moveit_msgs::RobotTrajectory());  
  // fraction = move_group.computeCartesianPath(firstWaypoint, eef_step, jump_threshold, *trajectory);
  // hivebotics::printRobotTrajectoryMsg(*trajectory);
  
  // move_group.execute(*trajectory);

  // // execute rest of trajectory
  // trajectory = moveit_msgs::RobotTrajectory::Ptr(new moveit_msgs::RobotTrajectory());  
  
  // fraction = move_group.computeCartesianPath(waypoints, eef_step, jump_threshold, *trajectory);
  // ROS_INFO_NAMED("tutorial", "Visualizing plan 4 (Cartesian path) (%.2f%% acheived)", fraction * 100.0);
  hivebotics::printRobotTrajectoryMsg(*trajectory);
  visual_tools.prompt("[2] Press 'next' in the RvizVisualToolsGui window to execute the trajectory");    

  move_group.execute(*trajectory);

  ROS_WARN("MOTION IS COMPLETED, SHUTTING DOWN");
  ros::shutdown();
  return 0;
}