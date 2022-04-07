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
	
	ros::Time prev_time = ros::Time::now();
	ros::Rate rate(100); // 100 Hz rate

	ros::Time time = ros::Time::now();
	ros::Duration period = time - prev_time;


	while (ros::ok())
	{
		time = ros::Time::now();
		period = time - prev_time;

		robot.read(time, period);
		cm.update(time, period);
		robot.write(time, period);

		rate.sleep();
	}
	return 0;
}