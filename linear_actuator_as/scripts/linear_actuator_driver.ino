/* Linear Actuator Controller

   Creates a Servo Controller Subsriber Node on Arduino
   - subsribes to /la_servo topic
   - uses AccelStepper library to update servo position

   Dependencies:
   - rosserial_arduino library - Follow http://wiki.ros.org/rosserial_arduino/Tutorials/Arduino%20IDE%20Setup
   - AccelStepper library - Install from ManageLibraries in Arduino

   created 2022
   by Rishab Patwari <https://patwaririshab.github.io>
   modified 16 Jan 2022
   by Rishab Patwari
 */


// Include ROS Libraries
#include <Arduino.h>
#include <ros.h>
#include <std_msgs/Int32.h>
#include <std_msgs/String.h>

// Include AccelStepper Library & Define Pins
#include <AccelStepper.h>
#include <stdio.h>
#define dirPin 12
#define stepPin 11
#define motorInterfaceType 1

// Init ROS Helpers
ros::NodeHandle nh;
std_msgs::Int32 feedback_msg;
ros::Publisher pub("servo_current_pos", &feedback_msg);

// Init AccelStepper Library Helpers
AccelStepper stepper = AccelStepper(motorInterfaceType, stepPin, dirPin);
#define MAX_STEPPER_SPEED 600
#define STEPPER_ACCELERATION 5000
#define STEPPER_THRESHOLD 4500

void servo_cb (const std_msgs::Int32& cmd_msgs) {
  nh.loginfo("Message Received");
  int value = cmd_msgs.data;
  char output[80];
  sprintf(output, "Received Servo Angle = %d", value);
  nh.loginfo(output);
  
  // Set the position target
  stepper.moveTo(value);

  // Non-blocking call to run the motor + publish feedback
  while (stepper.distanceToGo() != 0) {
    stepper.run();
    feedback_msg.data = stepper.currentPosition();
    pub.publish(&feedback_msg);
  }
}

ros::Subscriber<std_msgs::Int32> sub("servo", &servo_cb);

// Move Up Actuator Till Callibrate - Attach Code to Cause Interrupt
void callibrateStepper() {
  // stepper.runToNewPosition(STEPPER_THRESHOLD + 1000);
  // Attach Interrupt
  stepper.setCurrentPosition(0);
}

void setup() {
  // Init Stepper & Callibrate Position
  stepper.setMaxSpeed(MAX_STEPPER_SPEED);
  stepper.setAcceleration(STEPPER_ACCELERATION);
  callibrateStepper();

  // Init ROS Node, Publisher, Subscriber
  nh.initNode();
  nh.subscribe(sub);
  nh.advertise(pub);
}

void loop(){
  nh.spinOnce();
  delay(1);
}