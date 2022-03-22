// Auto-generated. Do not edit!

// (in-package robot_hw_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaterPump = require('./WaterPump.js');
let ToiletBrush = require('./ToiletBrush.js');

//-----------------------------------------------------------

class ToolUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.water_pump = null;
      this.toilet_brush = null;
    }
    else {
      if (initObj.hasOwnProperty('water_pump')) {
        this.water_pump = initObj.water_pump
      }
      else {
        this.water_pump = new WaterPump();
      }
      if (initObj.hasOwnProperty('toilet_brush')) {
        this.toilet_brush = initObj.toilet_brush
      }
      else {
        this.toilet_brush = new ToiletBrush();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToolUpdate
    // Serialize message field [water_pump]
    bufferOffset = WaterPump.serialize(obj.water_pump, buffer, bufferOffset);
    // Serialize message field [toilet_brush]
    bufferOffset = ToiletBrush.serialize(obj.toilet_brush, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToolUpdate
    let len;
    let data = new ToolUpdate(null);
    // Deserialize message field [water_pump]
    data.water_pump = WaterPump.deserialize(buffer, bufferOffset);
    // Deserialize message field [toilet_brush]
    data.toilet_brush = ToiletBrush.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_hw_interface/ToolUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d03c3706e095d719dab6e015f4f6e19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ToolUpdate(null);
    if (msg.water_pump !== undefined) {
      resolved.water_pump = WaterPump.Resolve(msg.water_pump)
    }
    else {
      resolved.water_pump = new WaterPump()
    }

    if (msg.toilet_brush !== undefined) {
      resolved.toilet_brush = ToiletBrush.Resolve(msg.toilet_brush)
    }
    else {
      resolved.toilet_brush = new ToiletBrush()
    }

    return resolved;
    }
};

module.exports = ToolUpdate;
