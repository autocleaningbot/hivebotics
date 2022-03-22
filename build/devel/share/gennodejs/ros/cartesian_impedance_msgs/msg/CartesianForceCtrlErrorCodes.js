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

class CartesianForceCtrlErrorCodes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianForceCtrlErrorCodes
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianForceCtrlErrorCodes
    let len;
    let data = new CartesianForceCtrlErrorCodes(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/CartesianForceCtrlErrorCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdde8ee10c2b3283bacb3975eed8bd74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # overall behavior
    int32 SUCCESS=1
    int32 FAILURE=99999
    
    int32 SET_DOF_FAILED=-1
    int32 SET_CONTROL_FORCE_FAILED=-2
    int32 SET_FORCE_STIFFNESS_FAILED=-3
    int32 SET_CARTESIAN_CONTROL_FAILED=-4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CartesianForceCtrlErrorCodes(null);
    return resolved;
    }
};

// Constants for message
CartesianForceCtrlErrorCodes.Constants = {
  SUCCESS: 1,
  FAILURE: 99999,
  SET_DOF_FAILED: -1,
  SET_CONTROL_FORCE_FAILED: -2,
  SET_FORCE_STIFFNESS_FAILED: -3,
  SET_CARTESIAN_CONTROL_FAILED: -4,
}

module.exports = CartesianForceCtrlErrorCodes;
