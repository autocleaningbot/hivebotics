#ifndef CUSTOM_UTILS_H_
#define CUSTOM_UTILS_H_

#include <ros/ros.h>
#include <moveit_msgs/RobotTrajectory.h>


namespace hivebotics
{

void printRobotTrajectoryMsg(const moveit_msgs::RobotTrajectory &trajectory)
{
    
    ROS_INFO("*** Joint Trajectory Msg ***\n");
    
    // print joint_names
    ROS_INFO("joint names: ");
    printf("\t [ ");
    for(int ii = 0 ; ii < trajectory.joint_trajectory.joint_names.size(); ++ii)
        std::cout << trajectory.joint_trajectory.joint_names[ii].c_str() << ", ";
    printf(" ] \n");

    // print joint_positions
    // trajectory.joint_trajectory.points[0].
    ROS_INFO("joint trajectory waypoints: ");
    for(int ii = 0 ; ii < trajectory.joint_trajectory.points.size(); ++ii)
    {
        printf("\t [ ");
        for(int jj = 0 ; jj < trajectory.joint_trajectory.points[ii].positions.size(); ++jj)
            std::cout << trajectory.joint_trajectory.points[ii].positions[jj] << ", ";
        printf(" ] \n");
    
    }

}



}






#endif //CUSTOM_UTILS_H_