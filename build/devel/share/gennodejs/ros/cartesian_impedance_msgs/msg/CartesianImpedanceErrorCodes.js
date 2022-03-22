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

class CartesianImpedanceErrorCodes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianImpedanceErrorCodes
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianImpedanceErrorCodes
    let len;
    let data = new CartesianImpedanceErrorCodes(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/CartesianImpedanceErrorCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebce641c819a67590ce717bdb7c4731b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # overall behavior
    int32 SUCCESS=1
    int32 FAILURE=99999
    
    int32 SET_STIFFNESS_FAILED=-1
    int32 SET_DAMPING_FAILED=-2
    int32 SET_MAX_CARTESIAN_VELOCITY_FAILED=-3
    int32 SET_MAX_CONTROL_FORCE_FAILED=-4
    int32 SET_MAX_PATH_DEVIATION=-5
    int32 SET_NULL_SPACE_PARAMETERS_FAILED = -6
    int32 SET_CARTESIAN_CONTROL_FAILED=-7
    int32 TIMED_OUT=-8
    int32 PREEMPTED=-9
    
    # these parameters are set for the load and center of gravity of the end-effector when we have tool attached to it
    # It is important to set the right parameters for tool mass and center of gravity because in that way the robot can
    # recalculate the torques necessary to be in gravity compensation or apply constant force when in force control
    int32 NO_VALID_LOAD_DATA_SET=-10
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CartesianImpedanceErrorCodes(null);
    return resolved;
    }
};

// Constants for message
CartesianImpedanceErrorCodes.Constants = {
  SUCCESS: 1,
  FAILURE: 99999,
  SET_STIFFNESS_FAILED: -1,
  SET_DAMPING_FAILED: -2,
  SET_MAX_CARTESIAN_VELOCITY_FAILED: -3,
  SET_MAX_CONTROL_FORCE_FAILED: -4,
  SET_MAX_PATH_DEVIATION: -5,
  SET_NULL_SPACE_PARAMETERS_FAILED: -6,
  SET_CARTESIAN_CONTROL_FAILED: -7,
  TIMED_OUT: -8,
  PREEMPTED: -9,
  NO_VALID_LOAD_DATA_SET: -10,
}

module.exports = CartesianImpedanceErrorCodes;
