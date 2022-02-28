#include <boost/function.hpp>
#include <boost/assign/list_of.hpp>
#include <boost/assert.hpp>
#include <math.h>
#include <moveit/robot_state/conversions.h>
#include <moveit/trajectory_processing/iterative_time_parameterization.h>
#include <moveit_cartesian_plan_plugin/generate_cartesian_path.h>

#include <moveit/planning_interface/planning_interface.h>
#include <moveit/planning_scene/planning_scene.h>
#include <moveit/kinematic_constraints/utils.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit_msgs/PlanningScene.h>

#include <ros/ros.h>
#include <geometry_msgs/PoseArray.h>


GenerateCartesianPath::GenerateCartesianPath(QObject *parent)
{
	ROS_DEBUG("GenerateCartesianPath::GenerateCartesianPath");

	//to add initializations
	init();
}

GenerateCartesianPath::~GenerateCartesianPath()
{
	/**
	 * The destructor resets the moveit_group_ and the kinematic_state of the robot.
	 **/

	ROS_DEBUG("GenerateCartesianPath::~GenerateCartesianPath");

	moveit_group_.reset();
	kinematic_state_.reset();
	robot_model_loader_.reset();
	kmodel_.reset();
}

void GenerateCartesianPath::init()
{
	/**
	 * Initialize the MoveIt parameters:
	 * - MoveIt group
	 * - Kinematic State is the current kinematic configuration of the Robot
	 * - Robot model which handles getting the Robot Model
	 * - Joint Model group which are necessary for checking if Way-Point is outside the IK Solution
	 **/

	ROS_DEBUG("GenerateCartesianPath::init");

	selected_plan_group_ = 0;
	robot_model_loader_ = RobotModelLoaderPtr(new robot_model_loader::RobotModelLoader("robot_description"));
	kmodel_ = robot_model_loader_->getModel();
	target_frame_ = "base_link";

	end_eff_joint_groups_ = kmodel_->getEndEffectors();


	ROS_INFO_STREAM("size of the end effectors is: "<<end_eff_joint_groups_.size());

	if (end_eff_joint_groups_.empty()) {
		std::vector< std::string > group_names_tmp_;
		const moveit::core::JointModelGroup *  end_eff_joint_groups_tmp_;
		group_names_tmp_ = kmodel_->getJointModelGroupNames();

		for(int i=0;i<group_names_tmp_.size();i++) {
			end_eff_joint_groups_tmp_ = kmodel_->getJointModelGroup(group_names_tmp_.at(i));
			if(end_eff_joint_groups_tmp_->isChain()) {
				group_names_.push_back(group_names_tmp_.at(i));
			}
			else {
				ROS_WARN_STREAM("The group:" << end_eff_joint_groups_tmp_->getName() <<" is not a Chain. Depreciate it!!");
			}
		}
	}
	else {
		for(int i=0;i<end_eff_joint_groups_.size();i++) {
			if(end_eff_joint_groups_.at(i)->isChain()) {
				const std::string& parent_group_name = end_eff_joint_groups_.at(i)->getName();
				group_names_.push_back(parent_group_name);

				ROS_INFO_STREAM("Group name:"<< group_names_.at(i));
			}
			else {
				ROS_INFO_STREAM("This group is not a chain. Find the parent of the group");
				const std::pair< std::string, std::string > & parent_group_name = end_eff_joint_groups_.at(i)->getEndEffectorParentGroup();
				group_names_.push_back(parent_group_name.first);
			}
		}
	}

	ROS_INFO_STREAM("Group name:"<< group_names_[selected_plan_group_]);

	moveit_group_ = MoveGroupPtr(new moveit::planning_interface::MoveGroupInterface(group_names_[selected_plan_group_]));
	kinematic_state_ = moveit::core::RobotStatePtr(new robot_state::RobotState(kmodel_));
	kinematic_state_->setToDefaultValues();

	joint_model_group_ = kmodel_->getJointModelGroup(group_names_[selected_plan_group_]);
}

void GenerateCartesianPath::setCartParams(double plan_time,double cart_step_size, double cart_jump_thresh, bool moveit_replan,bool avoid_collisions)
{
	/**
	 * Set the necessary parameters for the MoveIt and the Cartesian Path Planning.
	 * These parameters correspond to the ones that the user has entered or the default ones before the execution of the Cartesian Path Planner.
	 **/

	ROS_DEBUG("GenerateCartesianPath::setCartParams");

	ROS_INFO_STREAM("Updating MoveIt and Cartesian Path parameters:"
		<<"\n MoveIt Plan Time: "<<plan_time
		<<"\n Cartesian Path Step Size: "<<cart_step_size
		<<"\n Jump Threshold: "<<cart_jump_thresh
		<<"\n Replanning: "<<moveit_replan
		<<"\n Avoid Collisions: "<<avoid_collisions);

	PLAN_TIME_        = plan_time;
	MOVEIT_REPLAN_    = moveit_replan;
	CART_STEP_SIZE_   = cart_step_size;
	CART_JUMP_THRESH_ = cart_jump_thresh;
	AVOID_COLLISIONS_ = avoid_collisions;
}

void GenerateCartesianPath::moveToPoses(std::vector<geometry_msgs::Pose> waypoints)
{
	ROS_DEBUG("GenerateCartesianPath::moveToPoses");

	Q_EMIT cartesianPathExecuteStarted();

	moveit_group_->setPlanningTime(PLAN_TIME_);
	moveit_group_->allowReplanning (MOVEIT_REPLAN_);

	moveit::planning_interface::MoveGroupInterface::Plan plan;

	moveit_msgs::RobotTrajectory trajectory_;
	double fraction = moveit_group_->computeCartesianPath(waypoints,CART_STEP_SIZE_,CART_JUMP_THRESH_,trajectory_,AVOID_COLLISIONS_);
	robot_trajectory::RobotTrajectory rt(kmodel_, group_names_[selected_plan_group_]);

	rt.setRobotTrajectoryMsg(*kinematic_state_, trajectory_);

	ROS_INFO_STREAM("Pose reference frame: " << moveit_group_->getPoseReferenceFrame ());

	// Third create a IterativeParabolicTimeParameterization object
	trajectory_processing::IterativeParabolicTimeParameterization iptp;
	bool success = iptp.computeTimeStamps(rt);
	ROS_INFO("Computed time stamp %s",success?"SUCCEDED":"FAILED");


	// Get RobotTrajectory_msg from RobotTrajectory
	rt.getRobotTrajectoryMsg(trajectory_);
	// Finally plan and execute the trajectory
	plan.trajectory_ = trajectory_;
	ROS_INFO("Visualizing plan (cartesian path) (%.2f%% acheived)",fraction * 100.0);
	Q_EMIT cartesianPathCompleted(fraction);

	moveit_group_->execute(plan);

	kinematic_state_ = moveit_group_->getCurrentState();

	Q_EMIT cartesianPathExecuteFinished();
}

void GenerateCartesianPath::cartesianPathHandler(std::vector<geometry_msgs::Pose> waypoints)
{
	/**
	 * Since the execution of the Cartesian path is time consuming and can lead to locking up of the Plugin and the RViz
	 * environment the function for executing the Cartesian Path Plan has been placed in a separate thread.
	 * This prevents the RViz and the Plugin to lock.
	 **/

	ROS_DEBUG("GenerateCartesianPath::cartesianPathHandler");

	QFuture<void> future = QtConcurrent::run(this, &GenerateCartesianPath::moveToPoses, waypoints);
}



void GenerateCartesianPath::checkWayPointValidity(const geometry_msgs::Pose& waypoint,const int point_number)
{
	/**
	 * This function is called every time the user updates the pose of the Way-Point and checks if the Way-Point is
	 * within the valid IK solution for the Robot. In the case when a point is outside the valid IK solution this
	 * function send a signal to the RViz environment to update the color of the Way-Point.
	 **/

	ROS_DEBUG("GenerateCartesianPath::checkWayPointValidity");

	bool found_ik = kinematic_state_->setFromIK(joint_model_group_, waypoint, 3, 0.006);

	if(found_ik)
	{
		Q_EMIT wayPointOutOfIK(point_number,0);
	}
	else
	{
		Q_EMIT wayPointOutOfIK(point_number,1);
	}
}

void GenerateCartesianPath::initRvizDone()
{
	/**
	 * Once the initialization of the RViz is has finished, this function sends the pose of the robot end-effector and the name of the base frame to the RViz environment.
	 * The RViz environment sets the User Interactive Marker pose and Add New Way-Point RQT Layout default values based on the end-effector starting position.
	 * The transformation frame of the InteractiveMarker is set based on the robot PoseReferenceFrame.
	 **/

	ROS_DEBUG("GenerateCartesianPath::initRvizDone");

	end_effector_frame_ = moveit_group_->getEndEffectorLink();

	if(end_effector_frame_.empty()) {
		ROS_INFO("End effector link is empty");
		const std::vector< std::string > &  joint_names = joint_model_group_->getLinkModelNames();

		for(int i=0;i<joint_names.size();i++) {
			ROS_INFO_STREAM("Link " << i << " name: "<< joint_names.at(i));
		}

		end_effector_frame_ = joint_names.at(0) ;
		const Eigen::Affine3d &end_effector_state = kinematic_state_->getGlobalLinkTransform(joint_names.at(0));
		//tf::Transform end_effector_;
		tf::transformEigenToTF(end_effector_state, end_effector_);
		Q_EMIT getRobotModelFrame_signal(moveit_group_->getPoseReferenceFrame(),end_effector_);
	}
	else {
		ROS_INFO("End effector link is not empty");
		const Eigen::Affine3d &end_effector_state = kinematic_state_->getGlobalLinkTransform(moveit_group_->getEndEffectorLink());
		//tf::Transform end_effector_;
		tf::transformEigenToTF(end_effector_state, end_effector_);

		Q_EMIT getRobotModelFrame_signal(moveit_group_->getPoseReferenceFrame(),end_effector_);
	}

	Q_EMIT sendCartPlanGroup(group_names_);

	joint_state_sub_ = nh_.subscribe("/iiwa/joint_states", 10, &GenerateCartesianPath::processMessage, this);
}

void GenerateCartesianPath::moveToHome()
{
	ROS_DEBUG("GenerateCartesianPath::moveToHome");

	geometry_msgs::Pose home_pose;
	tf::poseTFToMsg(end_effector_,home_pose);

	//Q_EMIT moveToPose_signal(home_pose);
	moveToPose(home_pose);
}

void GenerateCartesianPath::moveToPose(geometry_msgs::Pose pose)
{
	ROS_DEBUG("GenerateCartesianPath::moveToPose");

	std::vector<geometry_msgs::Pose> waypoints;
	waypoints.push_back(pose);

	cartesianPathHandler(waypoints);
}

void GenerateCartesianPath::getSelectedGroupIndex(int index)
{
	ROS_DEBUG_STREAM("GenerateCartesianPath::getSelectedGroupIndex("<<index<<")");

	selected_plan_group_ = index;

	ROS_INFO_STREAM("selected name is:"<<group_names_[selected_plan_group_]);
	moveit_group_.reset();
	kinematic_state_.reset();
	moveit_group_ = MoveGroupPtr(new moveit::planning_interface::MoveGroupInterface(group_names_[selected_plan_group_]));

	kinematic_state_ = moveit::core::RobotStatePtr(new robot_state::RobotState(kmodel_));
	kinematic_state_->setToDefaultValues();

	joint_model_group_ = kmodel_->getJointModelGroup(group_names_[selected_plan_group_]);

	ROS_INFO("End effector link is not empty");
	const Eigen::Affine3d &end_effector_state = kinematic_state_->getGlobalLinkTransform(moveit_group_->getEndEffectorLink());
	tf::transformEigenToTF(end_effector_state, end_effector_);

	Q_EMIT getRobotModelFrame_signal(moveit_group_->getPoseReferenceFrame(),end_effector_);
}

void GenerateCartesianPath::emitCurrentState() {
	//ROS_DEBUG("GenerateCartesianPath::emitCurrentState");

	if(!end_effector_frame_.empty()) {
		tf::StampedTransform transform;
		try{
			listener.lookupTransform(target_frame_, end_effector_frame_, ros::Time(0), transform);
		}
		catch (tf::TransformException ex){
			ROS_ERROR_STREAM_THROTTLE(2, ex.what());
		}

		Q_EMIT updateCurrentPosition_signal(end_effector_frame_, transform);
	}
}

void GenerateCartesianPath::processMessage( const sensor_msgs::JointState::ConstPtr& msg ) {
	//ROS_DEBUG("GenerateCartesianPath::processMessage");

	emitCurrentState();
}