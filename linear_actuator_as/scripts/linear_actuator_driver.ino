#include <AccelStepper.h>
#include <stdio.h>
#define dirPin 12
#define stepPin 11
#define motorInterfaceType 1

AccelStepper stepper = AccelStepper(motorInterfaceType, stepPin, dirPin);

struct MessagePacket
{
  char dir;
  int duration;
};

struct FeedbackPacket
{
  int time_from_start;
  int current_pos;
  bool success;
};

const byte numChars = 32;
char receivedChars[numChars]; // an array to store the received data

boolean newData = false;

unsigned long starttime, endtime;

String welcomeMessage = "Welcome to Linear Actuator Driver\n\
Available Commands:\n\
1: Move for Specific Duration in Miliseconds\n\
\tMOVE UP: 1 w durationInt\n\
\tMOVE DOWN: 1 w durationInt\n\n\
2: Set Current Position to 0\n\
3: Print Current Position\n\
4: Run to Specific Stepper Motor Position\n\
\t4 positionInt";

void setup()
{
  // Set the maximum speed in steps per second
  stepper.setMaxSpeed(600);
  stepper.setAcceleration(5000);
  Serial.begin(9600);
  delay(1000);
  Serial.println(welcomeMessage);
}

void calibrate()
{
  // Move Up to Limit Switch
  // Get stepperPosition A
  // Move Down to Limit Switch
  // Get stepperPosition B
  // Calculate Total Stepper Position Length = A - B
  // Set the stepperPosition B as -(Position Length / 2)
  return 0;
}

void moveUp(int speed = 600, int duration = 1000)
{
  starttime = millis(); // Number of miliseconds -> 1000 ms = 1 s, 10000 ms = 10 s,
  endtime = starttime;
  stepper.setSpeed(speed);
  while ((endtime - starttime) < duration)
  {
    stepper.runSpeed();
    endtime = millis();
  }
}

void moveDown(int speed = 600, int duration = 1000)
{
  starttime = millis(); // Number of miliseconds -> 1000 ms = 1 s, 10000 ms = 10 s,
  endtime = starttime;
  stepper.setSpeed(-speed);
  while ((endtime - starttime) < duration)
  {
    stepper.runSpeed();
    endtime = millis();
  }
}

void recvWithEndMarker()
{
  static byte ndx = 0;
  char endMarker = '\n';
  char rc;

  while (Serial.available() > 0 && newData == false)
  {
    rc = Serial.read();

    if (rc != endMarker)
    {
      receivedChars[ndx] = rc;
      ndx++;
      if (ndx >= numChars)
      {
        ndx = numChars - 1;
      }
    }
    else
    {
      receivedChars[ndx] = '\0'; // terminate the string
      ndx = 0;
      newData = true;
    }
  }
}

void moveActuator(MessagePacket packet)
{
  String feedback = "NULL";
  bool success = false;
  //  int current_pos = stepper.currentPosition();

  if (packet.dir == 'w' || packet.dir == 'W')
  {
    moveUp(600, packet.duration);
    feedback = "UP " + (String)packet.duration;
    success = true;
  }
  if (packet.dir == 's' || packet.dir == 'S')
  {

    moveDown(600, packet.duration);
    feedback = "DOWN " + (String)packet.duration;
    success = true;
  }
  Serial.println(feedback);
}

void processNewData()
{
  if (newData == true)
  {
    int command = String(strtok(receivedChars, " ")).toInt();
    switch (command)
    {
    // 1. Move the Actuator by Time
    case 1:
    {
      MessagePacket packet;
      packet.dir = String(strtok(NULL, " "))[0];
      packet.duration = String(strtok(NULL, " ")).toInt();
      moveActuator(packet);
      break;
    }
    // 2. Set current position to 0
    case 2:
    {
      stepper.setCurrentPosition(0);
      break;
    }
    // 3. Get current position
    case 3:
    {
      Serial.print("This is the current position: ");
      Serial.println(stepper.currentPosition());
      break;
    }
    // 4. Run to Position
    case 4:
    {
      int position = String(strtok(NULL, " ")).toInt();
      stepper.runToNewPosition(position);
      Serial.print("Run to position complete. Current Position: ");
      Serial.println(stepper.currentPosition());
      break;
    }
    default:
      break;
    }

    // PRINT PACKET IN JSON LIKE FORMAT FOR DEBUGGING
    //    String messageString = ("{\n  dir: "
    //                              + ((String) packet.dir) + "\n  "
    //                              + "duration: " + (String) packet.duration
    //                              + "\n}");
    //    Serial.print(messageString);
    newData = false;
  }
}

void loop()
{
  recvWithEndMarker();
  processNewData();
}