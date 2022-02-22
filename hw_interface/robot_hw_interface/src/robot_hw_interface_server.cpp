#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_hw_interface/RobotUpdateAction.h>
#include <linear_actuator_as/ActuatorAction.h>
#include <linear_actuator_as/ActuatorActionGoal.h>
#include <std_msgs/Int32.h>
#include <mycobot_communication/SetAngles.h>
#include <actionlib/client/simple_action_client.h>

using namespace robot_hw_interface;
typedef actionlib::SimpleActionClient<linear_actuator_as::ActuatorAction> La_Client;

class RobotHwAs
{
protected:
    ros::NodeHandle nh_;
    // NodeHandle instance must be created before this line. Otherwise strange erro occurs. 
    actionlib::SimpleActionServer<robot_hw_interface::RobotUpdateAction> as_;
    std::string action_name_;

    // Create Messages used to Publish Feedback and Result
    robot_hw_interface::RobotUpdateGoal goal_;
    robot_hw_interface::RobotUpdateFeedback feedback_;
    robot_hw_interface::RobotUpdateResult result_;

    // Service Client for Mycobot
    ros::ServiceClient mycobot_client = nh_.serviceClient<mycobot_communication::SetAngles>("set_joint_angles");
    La_Client la_action_client;

    // Create Action messages for La_Client
    linear_actuator_as::ActuatorGoal la_goal_;
    linear_actuator_as::ActuatorFeedback la_feedback_;
    linear_actuator_as::ActuatorResult la_result_;


public:
    RobotHwAs(std::string name) : 
        as_(nh_, name, boost::bind(&RobotHwAs::executeCB, this , _1), false),
        action_name_(name), 
        la_action_client("linear_actuator_server", true)
    {   
        as_.start();
        ROS_INFO("[ROBOT_HW_IF] robot_hw_as started.");
        ROS_INFO("[ROBOT_HW_IF] Waiting for la_action_server to start.");
        la_action_client.waitForServer();
        ROS_INFO("[ROBOT_HW_IF] la_action_server started.");
        ROS_INFO("[ROBOT_HW_IF] Waiting for mycobot set_joint_angles server to start.");
        mycobot_client.waitForExistence();
        ROS_INFO("[ROBOT_HW_IF] mycobot_set_joint_angles server started.");
    }
    ~RobotHwAs(void)
    {
    }

    void laDoneCB(const actionlib::SimpleClientGoalState& state, const linear_actuator_as::ActuatorResultConstPtr& result) {
        ROS_INFO("[ROBOT_HW_IF] [LA State Result]: %s", state.toString().c_str());
        ROS_INFO("[ROBOT_HW_IF] LA Action has been completed");
    }


    void laFeedbackCB(const linear_actuator_as::ActuatorFeedbackConstPtr& feedback){
        ROS_INFO("[ROBOT_HW_IF] [LA STATE FEEDBACK] %d", feedback->currentPos);
    }

    void executeCB(const robot_hw_interface::RobotUpdateGoalConstPtr& goal)
    {
        // helper variables
        ros::Rate r(1);
        bool success = true;

        switch (goal->cmd)
        {
        // Arm Actuator Command - Send Action goal to Linear Actuator & Mycobot
        case 1:
        {
            ROS_INFO("[ROBOT_HW_IF] Command: 1");
            // Create linear actuator goal
            la_goal_.targetPos = goal->la_pose.targetPos;
            la_goal_.speed = goal->la_pose.speed;

            // Create robot arm goal
            mycobot_communication::SetAngles arm_goal;
            arm_goal.request.joint_1 = goal->mycobot_angles.joint_1;
            arm_goal.request.joint_2 = goal->mycobot_angles.joint_2;
            arm_goal.request.joint_3 = goal->mycobot_angles.joint_3;
            arm_goal.request.joint_4 = goal->mycobot_angles.joint_4;
            arm_goal.request.joint_5 = goal->mycobot_angles.joint_5;
            arm_goal.request.joint_6 = goal->mycobot_angles.joint_6;
            arm_goal.request.speed = goal->mycobot_angles.speed;
            
            // la_action_client.sendGoal(la_goal_,
            //                             boost::bind(&RobotHwAs::laDoneCB, this, _1, _2),
            //                             La_Client::SimpleActiveCallback(),
            //                             boost::bind(&RobotHwAs::laFeedbackCB, this, _1));
            if (mycobot_client.call(arm_goal))
            {
                // Add Prempted Code
                ros::Duration(0.15).sleep();
                
                // la_action_client.waitForResult();
                
            }
            if (success)
            {
                result_.cmd = 1;
                result_.la_pose.targetPos = la_goal_.targetPos;
                result_.la_pose.speed = la_goal_.speed;
                result_.success = true;
                result_.mycobot_angles.joint_1 =  goal->mycobot_angles.joint_1;
                result_.mycobot_angles.joint_2 = goal-> mycobot_angles.joint_2;
                result_.mycobot_angles.joint_3 = goal->mycobot_angles.joint_3;
                result_.mycobot_angles.joint_4 = goal->mycobot_angles.joint_4;
                result_.mycobot_angles.joint_5 = goal->mycobot_angles.joint_5;
                result_.mycobot_angles.joint_6 = goal->mycobot_angles.joint_6;
                ROS_INFO("%s: Succeeded", action_name_.c_str());
                as_.setSucceeded(result_);
            }

            break;
        }
        // Tool Update Command - Send Action Goal to Tool Update Action Server
        case 2:
        {
            ROS_INFO("TOOL COMMAND GIVEN");
            break;
        }
        default:
        {
            ROS_ERROR("%s: INCORRECT CMD PASSED", action_name_.c_str());
            as_.setAborted();
            success = false;
            break;
        }
        }
    }
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "robot_hw_executable");
    RobotHwAs robot_hw_as("robot_hw_as"); //Creates node handle and instantiates RobotHwAs object
    // ros::waitForShutdown();
    while (ros::ok())
    {
        ros::spinOnce(); // normally, can simply do: ros::spin(); ros::ok() makes this routine easy to kill with ctl-C
        ros::Duration(0.1).sleep();
    }

    return 0;
}