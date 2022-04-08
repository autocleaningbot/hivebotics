#include <ros/ros.h>
#include <abluo_control/abluo_hw.h>
#include <controller_manager/controller_manager.h>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "abluo_ctrl");
	ros::NodeHandle nh;
	MyRobot robot(nh);
	controller_manager::ControllerManager cm(&robot, nh);
	
	ros::AsyncSpinner spinner(1);
	spinner.start();
	
	ros::Time prevTime = ros::Time::now();
	ros::Rate rate(100); // 100 Hz rate

	ros::Time currTime = ros::Time::now();
	ros::Duration period = currTime - prevTime;


	while (ros::ok())
	{
		currTime = ros::Time::now();
		period = currTime - prevTime;

		robot.read(currTime, period);
		cm.update(currTime, period);
		robot.write(currTime, period);

		rate.sleep();

		prevTime = currTime;
	}
	return 0;
}