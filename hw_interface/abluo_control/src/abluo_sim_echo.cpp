#include <ros/ros.h>

#include "abluo_control/armCmd.h"
#include "abluo_control/abluoTelemetry.h"


// for subscribing to telemetry
ros::Publisher telem_pub;

void cmdCallback(const abluo_control::armCmd::ConstPtr &msg)
{
    static abluo_control::abluoTelemetry telem;

    telem.lin_act_pos = msg->lin_act_pos;
    telem.lin_act_vel = msg->lin_act_vel;

    for (size_t i = 0; i < 6; ++i)
    {
        telem.joint_pos[i] = msg->joint_pos[i];
        telem.joint_vel[i] = msg->joint_vel[i];
    }

    telem_pub.publish(telem);
}

//// main ////
int main(int argc, char **argv) 
{
    ros::init(argc, argv, "abluo_sim_echo");

    // prep for ROS communcation
    ros::NodeHandle n; 
    ros::Subscriber cmd_sub = n.subscribe("/joint_cmd_array", 1, cmdCallback); // robot feedback

    // "/joint_states_array"
    // "/joint_cmd_array"

    telem_pub = n.advertise<abluo_control::abluoTelemetry>("/joint_states_array", 10);
	

    ros::spin();
}
 





