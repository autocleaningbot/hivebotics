// Auto-generated. Do not edit!

// (in-package cartesian_impedance_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MaxCtrlForceExceeded {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stop = null;
      this.gravity_compensation = null;
      this.move_away = null;
    }
    else {
      if (initObj.hasOwnProperty('stop')) {
        this.stop = initObj.stop
      }
      else {
        this.stop = false;
      }
      if (initObj.hasOwnProperty('gravity_compensation')) {
        this.gravity_compensation = initObj.gravity_compensation
      }
      else {
        this.gravity_compensation = false;
      }
      if (initObj.hasOwnProperty('move_away')) {
        this.move_away = initObj.move_away
      }
      else {
        this.move_away = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MaxCtrlForceExceeded
    // Serialize message field [stop]
    bufferOffset = _serializer.bool(obj.stop, buffer, bufferOffset);
    // Serialize message field [gravity_compensation]
    bufferOffset = _serializer.bool(obj.gravity_compensation, buffer, bufferOffset);
    // Serialize message field [move_away]
    bufferOffset = _serializer.bool(obj.move_away, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MaxCtrlForceExceeded
    let len;
    let data = new MaxCtrlForceExceeded(null);
    // Deserialize message field [stop]
    data.stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gravity_compensation]
    data.gravity_compensation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [move_away]
    data.move_away = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/MaxCtrlForceExceeded';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6ac6c0e9102c9975ab762de235b8e60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for handling different actions if the end-effector
    # exceeds maximum force set in the Cartesian Impedance parameters
    
    bool stop
    bool gravity_compensation
    bool move_away
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MaxCtrlForceExceeded(null);
    if (msg.stop !== undefined) {
      resolved.stop = msg.stop;
    }
    else {
      resolved.stop = false
    }

    if (msg.gravity_compensation !== undefined) {
      resolved.gravity_compensation = msg.gravity_compensation;
    }
    else {
      resolved.gravity_compensation = false
    }

    if (msg.move_away !== undefined) {
      resolved.move_away = msg.move_away;
    }
    else {
      resolved.move_away = false
    }

    return resolved;
    }
};

module.exports = MaxCtrlForceExceeded;
