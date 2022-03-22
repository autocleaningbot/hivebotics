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

class SetCartesianForceCtrl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.DOF = null;
      this.force = null;
      this.stiffness = null;
    }
    else {
      if (initObj.hasOwnProperty('DOF')) {
        this.DOF = initObj.DOF
      }
      else {
        this.DOF = '';
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = 0.0;
      }
      if (initObj.hasOwnProperty('stiffness')) {
        this.stiffness = initObj.stiffness
      }
      else {
        this.stiffness = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCartesianForceCtrl
    // Serialize message field [DOF]
    bufferOffset = _serializer.string(obj.DOF, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = _serializer.float64(obj.force, buffer, bufferOffset);
    // Serialize message field [stiffness]
    bufferOffset = _serializer.float64(obj.stiffness, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCartesianForceCtrl
    let len;
    let data = new SetCartesianForceCtrl(null);
    // Deserialize message field [DOF]
    data.DOF = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stiffness]
    data.stiffness = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.DOF);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/SetCartesianForceCtrl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4f7772e7871d1a624600d97bd177326';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #this is the axis we want the robot to exert constant force.
    string DOF
    #the amount of force that the end effector needs to apply in the selected DOF
    float64 force
    #set the stiffness of that DOF
    float64 stiffness
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCartesianForceCtrl(null);
    if (msg.DOF !== undefined) {
      resolved.DOF = msg.DOF;
    }
    else {
      resolved.DOF = ''
    }

    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = 0.0
    }

    if (msg.stiffness !== undefined) {
      resolved.stiffness = msg.stiffness;
    }
    else {
      resolved.stiffness = 0.0
    }

    return resolved;
    }
};

module.exports = SetCartesianForceCtrl;
