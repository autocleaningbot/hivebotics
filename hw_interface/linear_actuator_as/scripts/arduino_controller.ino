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
#define dirPin 12 //lin actuator stepper motor direction pin
#define stepPin 11 // lin actuator stepper motor step pin
#define motorInterfaceType 1
//include servo and define pin
#include <Servo.h>
#define servoPin 7 //toilet brush servo pin
//define for dc motors
#define enA 5 //brush motor speed
#define in1 22 //brush motor clockwise
#define in2 24 //brush motor anti-clockwise 
#define in3 30 //pump motor digital pin 1 
#define in4 31 //pump motor digital pin 2
#define enB 4 //pump motor speed

// Init ROS Helpers
ros::NodeHandle nh;
// LinAct stepper publisher
std_msgs::Int32 feedback_msg; 
ros::Publisher pub("servo_current_pos", &feedback_msg);
//for brush servo publisher
std_msgs::Int32 brush_servo_feedback_msgs; 
ros::Publisher pub_brush_servo("brush_servo_state", &brush_servo_feedback_msgs);
//for water pump dc motor
std_msgs::Int32 pump_speed_feedback_msgs;
ros::Publisher pub_pump_motor("pump_motor_speed", &pump_speed_feedback_msgs);
//for brush dc motor
std_msgs::Int32 brush_dc_feedback_msgs;
ros::Publisher pub_brush_dc("brush_dc_motor_speed", &brush_dc_feedback_msgs);

// Init AccelStepper Library Helpers
AccelStepper stepper = AccelStepper(motorInterfaceType, stepPin, dirPin);
#define MAX_STEPPER_SPEED 1300
#define STEPPER_ACCELERATION 2600
#define STEPPER_THRESHOLD 4500

//call back function for linear actuator
void servo_cb (const std_msgs::Int32& cmd_msgs) {
  nh.loginfo("LinActuator Message Received");
  int value = cmd_msgs.data;
  char output[80];
  sprintf(output, "Received Servo Angle = %d", value);
  nh.loginfo(output);
  
  // Set the position target
  stepper.moveTo(value);

  // Non-blocking call to run the motor + publish feedback
  while (stepper.distanceToGo() != 0) {
    stepper.run();
    //    Do not publish feedback here otherwise actuator behaves weirdly
    //    feedback_msg.data = stepper.currentPosition();
    //    pub.publish(&feedback_msg);
  }

  // Publish Final Position
  feedback_msg.data = stepper.currentPosition();
  pub.publish(&feedback_msg);
}

Servo brush_servo;
//callback function for toilet brush servo 
void brush_servo_cb(const std_msgs::Int32& cmd_msgs){
  nh.loginfo("Brush Servo Message Received");
  int input = cmd_msgs.data;
  char output[80];
  sprintf(output, "Brush servo state = %d", input);
  nh.loginfo(output);  
  //run servo motor
  if (input==0){
    brush_servo.attach(servoPin);
    brush_servo.write(179);
    delay(250);
    brush_servo.detach();
    brush_servo_feedback_msgs.data = 0;
  } else{
    brush_servo.attach(servoPin);
    brush_servo.write(155);
    delay(250);
    brush_servo.detach();
    brush_servo_feedback_msgs.data = 1;
  }
  //Publish state
  pub_brush_servo.publish(&brush_servo_feedback_msgs);
}

//pump motor <!-- speed message between 0 and 255
void pump_motor_cb(const std_msgs::Int32& cmd_msgs){
  nh.loginfo("Pump speed received");
  int input = cmd_msgs.data;
  char output[80];
  sprintf(output, "pump motor speed = %d", input);
  nh.loginfo(output);
  //run motor pump, motor is off for input smaller than 50
  digitalWrite(in3, HIGH);
  digitalWrite(in4, LOW);
  if (input < 50){
    analogWrite(enB, 0);
    pump_speed_feedback_msgs.data = 0;
  } else {
    analogWrite(enB, input/2);
    pump_speed_feedback_msgs.data = input; 
  }
  //Publish speed
  pub_pump_motor.publish(&pump_speed_feedback_msgs);
}

//brush dc motor <!-- speed message between 0 and 255
void brush_dc_cb(const std_msgs::Int32& cmd_msgs){
  nh.loginfo("Brush dcm speed received");
  int input = cmd_msgs.data;
  char output[80];
  sprintf(output, "brush dc motor speed = %d", input);
  nh.loginfo(output);
  //run brush dc motor, motor is off for input smaller than 50
  digitalWrite(in1, HIGH);
  digitalWrite(in2, LOW);
  if (input < 50){
    analogWrite(enA, 0);
    brush_dc_feedback_msgs.data = 0;
  } else {
    analogWrite(enA, input);
    brush_dc_feedback_msgs.data = input;
  }
  //Publish speed
  pub_brush_dc.publish(&brush_dc_feedback_msgs);
}

//Create Subsciber for motors
ros::Subscriber<std_msgs::Int32> sub("servo", &servo_cb); //linAct stepper
ros::Subscriber<std_msgs::Int32> sub_brush_servo("brush_servo", &brush_servo_cb); //brush servo 
ros::Subscriber<std_msgs::Int32> sub_pump_motor("pump_motor", &pump_motor_cb); //pump motor
ros::Subscriber<std_msgs::Int32> sub_brush_dc("brush_dc", &brush_dc_cb); //brush dc motor

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
  //LinAct
  nh.subscribe(sub); 
  nh.advertise(pub); 
  
  //Brush Servo
  nh.subscribe(sub_brush_servo); 
  nh.advertise(pub_brush_servo);
  
  //Pump Motor
  pinMode(enB, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);
  nh.subscribe(sub_pump_motor); 
  nh.advertise(pub_pump_motor);
  
  //Brush DC motor
  pinMode(enA, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  nh.subscribe(sub_brush_dc); 
  nh.advertise(pub_brush_dc);
}

void loop(){
  nh.spinOnce();
  delay(1);
}
