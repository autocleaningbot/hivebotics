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

class ToiletBrush {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brush_lock_status = null;
      this.motor_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('brush_lock_status')) {
        this.brush_lock_status = initObj.brush_lock_status
      }
      else {
        this.brush_lock_status = false;
      }
      if (initObj.hasOwnProperty('motor_speed')) {
        this.motor_speed = initObj.motor_speed
      }
      else {
        this.motor_speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToiletBrush
    // Serialize message field [brush_lock_status]
    bufferOffset = _serializer.bool(obj.brush_lock_status, buffer, bufferOffset);
    // Serialize message field [motor_speed]
    bufferOffset = _serializer.int32(obj.motor_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToiletBrush
    let len;
    let data = new ToiletBrush(null);
    // Deserialize message field [brush_lock_status]
    data.brush_lock_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_speed]
    data.motor_speed = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_hw_interface/ToiletBrush';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c569dc66f46b973be15ef66b1f2c87f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool brush_lock_status
    int32 motor_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToiletBrush(null);
    if (msg.brush_lock_status !== undefined) {
      resolved.brush_lock_status = msg.brush_lock_status;
    }
    else {
      resolved.brush_lock_status = false
    }

    if (msg.motor_speed !== undefined) {
      resolved.motor_speed = msg.motor_speed;
    }
    else {
      resolved.motor_speed = 0
    }

    return resolved;
    }
};

module.exports = ToiletBrush;
