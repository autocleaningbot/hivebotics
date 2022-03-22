// Auto-generated. Do not edit!

// (in-package robot_hw_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WaterPump {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.water_pump_status = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('water_pump_status')) {
        this.water_pump_status = initObj.water_pump_status
      }
      else {
        this.water_pump_status = false;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaterPump
    // Serialize message field [water_pump_status]
    bufferOffset = _serializer.bool(obj.water_pump_status, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.int32(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaterPump
    let len;
    let data = new WaterPump(null);
    // Deserialize message field [water_pump_status]
    data.water_pump_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_hw_interface/WaterPump';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '447554c189b87b52f4dedae471bf506e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool water_pump_status
    int32 speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaterPump(null);
    if (msg.water_pump_status !== undefined) {
      resolved.water_pump_status = msg.water_pump_status;
    }
    else {
      resolved.water_pump_status = false
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    return resolved;
    }
};

module.exports = WaterPump;
