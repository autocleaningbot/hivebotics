#include <ros/ros.h>
#include <abluo_control/abluoTelemetry.h>
#include <abluo_control/armCmd.h> 
#include <deque> 

std::deque<abluo_control::armCmd> cmd_queue;

//// current position callback ////
// for subscribing to telemetry
ros::Publisher telem_pub;

void cmdCallback(const abluo_control::armCmd::ConstPtr &msg){
 
    cmd_queue.push_back(*msg);
}

abluo_control::armCmd current_cmd;
abluo_control::abluoTelemetry telem;
void ISRCallback(const ros::TimerEvent&)
{	
    if( !cmd_queue.empty() ){
        current_cmd=cmd_queue.front(); // read from queue


        for(int i=0; i<current_cmd.angle.size(); i++){
            telem.angles[i]=current_cmd.angle[i];
            // telem.vel[i]=current_cmd.vel[i]; 
        }


        cmd_queue.pop_front(); // remove (pop off) the first element of the queue

    }

    telem.bufferHealth=cmd_queue.size();
    telem_pub.publish(telem);

}


 
// create a timer callback they fires at 181 hz . if points are recieved then add them to a buffer. read from this buffer from the timer. 

//// main ////
int main(int argc, char **argv) {
    ros::init(argc, argv, "abluo_sim_echo");

    // prep for ROS communcation
    ros::NodeHandle n; 
    ros::Subscriber cmd_sub = n.subscribe("/abluo/armCmd", 10, cmdCallback); // robot feedback

    telem_pub = n.advertise<abluo_control::abluoTelemetry>("/abluo/mycobotTelemetry", 10);

    ros::Timer isr_timer = n.createTimer(ros::Duration(0.0055), ISRCallback, false); // true/false oneshot
	
 
    for(int i=0; i<6; i++){
        telem.angles[i]=0;
        // telem.vel[i]=0; 
    }

    ros::spin();
} // end main

 





