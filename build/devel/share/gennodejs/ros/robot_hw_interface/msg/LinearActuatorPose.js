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

class LinearActuatorPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.targetPos = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('targetPos')) {
        this.targetPos = initObj.targetPos
      }
      else {
        this.targetPos = 0;
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
    // Serializes a message object of type LinearActuatorPose
    // Serialize message field [targetPos]
    bufferOffset = _serializer.int32(obj.targetPos, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.int32(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinearActuatorPose
    let len;
    let data = new LinearActuatorPose(null);
    // Deserialize message field [targetPos]
    data.targetPos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_hw_interface/LinearActuatorPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16c889283f8cdf9d34c6303b6c5d3692';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 targetPos
    int32 speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LinearActuatorPose(null);
    if (msg.targetPos !== undefined) {
      resolved.targetPos = msg.targetPos;
    }
    else {
      resolved.targetPos = 0
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

module.exports = LinearActuatorPose;
