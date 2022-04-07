#include <ros/ros.h>

#include <deque> 

#include "abluo_control/armCmd.h"
#include "abluo_control/abluoTelemetry.h"


// for subscribing to telemetry
ros::Publisher telem_pub;

std::deque<abluo_control::armCmd> cmd_queue;

//// current position callback ////
// for subscribing to telemetry
abluo_control::armCmd current_cmd;
abluo_control::abluoTelemetry telem;

void printAbluoCmd(const abluo_control::armCmd::ConstPtr &msg)
{
    ROS_INFO("act_pos: %f\n", msg->lin_act_pos);
    printf("joint_pos: [");
    for(auto &jpos : msg->joint_pos)
        printf( "%f, ", jpos);
    printf("]\n");

    ROS_INFO("act_vel: %f\n", msg->lin_act_vel);
    printf("joint_vel: [");
    for(auto &jvel : msg->joint_vel)
        printf( "%f, ", jvel);
    printf("]\n");    
}


void cmdCallback(const abluo_control::armCmd::ConstPtr &msg){
    cmd_queue.push_back(*msg);
}

void ISRCallback(const ros::TimerEvent&)
{	
    if( !cmd_queue.empty() )
    {
        current_cmd = cmd_queue.front(); // read from queue


        telem.lin_act_pos = current_cmd.lin_act_pos;
        telem.lin_act_vel = current_cmd.lin_act_vel;

        for (size_t i = 0; i < current_cmd.joint_pos.size(); ++i)
        {
            telem.joint_pos[i] = current_cmd.joint_pos[i];
            telem.joint_vel[i] = current_cmd.joint_vel[i];
        }


        cmd_queue.pop_front(); // remove (pop off) the first element of the queue
    }

    // telem.bufferHealth=15;
    telem_pub.publish(telem);
}



int main(int argc, char **argv) 
{
    ros::init(argc, argv, "abluo_sim_echo");

    // "/joint_states_array"
    // "/joint_cmd_array"

    ros::NodeHandle n; 
    ros::Subscriber cmd_sub = n.subscribe("/joint_cmd_array", 10, cmdCallback); // robot feedback

    ros::Timer isr_timer = n.createTimer(ros::Duration(0.01), ISRCallback, false); // true/false oneshot



    telem_pub = n.advertise<abluo_control::abluoTelemetry>("/joint_states_array", 10);
	

    telem.lin_act_pos = 0.0;
    telem.lin_act_vel = 0.0;
    
    for(int i = 0; i < 6; i++)
    {
        telem.joint_pos[i] = 0.0;
        telem.joint_vel[0] = 0.0; 
    }

    ros::spin();
}
