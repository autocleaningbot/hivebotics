# float32 lin_act_pos #val
# float32 lin_act_vel
float64[6] angles #degrees
# float32[7] vel #deg/s
time startSyncTime
uint32 isrTicks # this would overflow if the robot is left on for 497 days straight at 100hz
uint8 bufferHealth