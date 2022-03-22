// Auto-generated. Do not edit!

// (in-package robot_hw_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MycobotAngles = require('./MycobotAngles.js');
let LinearActuatorPose = require('./LinearActuatorPose.js');
let ToolUpdate = require('./ToolUpdate.js');

//-----------------------------------------------------------

class RobotUpdateResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.cmd = null;
      this.mycobot_angles = null;
      this.la_pose = null;
      this.tool_state = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('mycobot_angles')) {
        this.mycobot_angles = initObj.mycobot_angles
      }
      else {
        this.mycobot_angles = new MycobotAngles();
      }
      if (initObj.hasOwnProperty('la_pose')) {
        this.la_pose = initObj.la_pose
      }
      else {
        this.la_pose = new LinearActuatorPose();
      }
      if (initObj.hasOwnProperty('tool_state')) {
        this.tool_state = initObj.tool_state
      }
      else {
        this.tool_state = new ToolUpdate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotUpdateResult
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    // Serialize message field [mycobot_angles]
    bufferOffset = MycobotAngles.serialize(obj.mycobot_angles, buffer, bufferOffset);
    // Serialize message field [la_pose]
    bufferOffset = LinearActuatorPose.serialize(obj.la_pose, buffer, bufferOffset);
    // Serialize message field [tool_state]
    bufferOffset = ToolUpdate.serialize(obj.tool_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotUpdateResult
    let len;
    let data = new RobotUpdateResult(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mycobot_angles]
    data.mycobot_angles = MycobotAngles.deserialize(buffer, bufferOffset);
    // Deserialize message field [la_pose]
    data.la_pose = LinearActuatorPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [tool_state]
    data.tool_state = ToolUpdate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_hw_interface/RobotUpdateResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f2e8c2e7926b9221a89cee3cfa83346';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Result
    
    bool success
    int32 cmd
    MycobotAngles mycobot_angles
    LinearActuatorPose la_pose
    ToolUpdate tool_state
    
    ================================================================================
    MSG: robot_hw_interface/MycobotAngles
    float32 joint_1
    float32 joint_2
    float32 joint_3
    float32 joint_4
    float32 joint_5
    float32 joint_6
    
    int8 speed
    ================================================================================
    MSG: robot_hw_interface/LinearActuatorPose
    int32 targetPos
    int32 speed
    ================================================================================
    MSG: robot_hw_interface/ToolUpdate
    WaterPump water_pump
    ToiletBrush toilet_brush
    ================================================================================
    MSG: robot_hw_interface/WaterPump
    bool water_pump_status
    int32 speed
    ================================================================================
    MSG: robot_hw_interface/ToiletBrush
    bool brush_lock_status
    int32 motor_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotUpdateResult(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.mycobot_angles !== undefined) {
      resolved.mycobot_angles = MycobotAngles.Resolve(msg.mycobot_angles)
    }
    else {
      resolved.mycobot_angles = new MycobotAngles()
    }

    if (msg.la_pose !== undefined) {
      resolved.la_pose = LinearActuatorPose.Resolve(msg.la_pose)
    }
    else {
      resolved.la_pose = new LinearActuatorPose()
    }

    if (msg.tool_state !== undefined) {
      resolved.tool_state = ToolUpdate.Resolve(msg.tool_state)
    }
    else {
      resolved.tool_state = new ToolUpdate()
    }

    return resolved;
    }
};

module.exports = RobotUpdateResult;