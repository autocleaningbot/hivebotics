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

class NullSpace {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_names = null;
      this.stiffness = null;
      this.damping = null;
    }
    else {
      if (initObj.hasOwnProperty('link_names')) {
        this.link_names = initObj.link_names
      }
      else {
        this.link_names = [];
      }
      if (initObj.hasOwnProperty('stiffness')) {
        this.stiffness = initObj.stiffness
      }
      else {
        this.stiffness = [];
      }
      if (initObj.hasOwnProperty('damping')) {
        this.damping = initObj.damping
      }
      else {
        this.damping = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NullSpace
    // Serialize message field [link_names]
    bufferOffset = _arraySerializer.string(obj.link_names, buffer, bufferOffset, null);
    // Serialize message field [stiffness]
    bufferOffset = _arraySerializer.float64(obj.stiffness, buffer, bufferOffset, null);
    // Serialize message field [damping]
    bufferOffset = _arraySerializer.float64(obj.damping, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NullSpace
    let len;
    let data = new NullSpace(null);
    // Deserialize message field [link_names]
    data.link_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [stiffness]
    data.stiffness = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [damping]
    data.damping = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.link_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.stiffness.length;
    length += 8 * object.damping.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/NullSpace';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09af4246cba0b182d004ca8ea38f9880';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # parameters for a redundant joint of the robot when in Cartesian Impedance
    # the values are divided into translational and rotational
    # each of the translational and rotational components is defined as Float64
    
    # Kinematically, the manipulator's null space describes the motions
    # the arm can make that don't move the end effector, known shorthand as "self-motion";
    # for a standard 7 DOF revolute RPRPRPR manipulator this is usually equivalent to moving the elbow.
    # The range of self-motion for a manipulator is a mathematically well defined space.
    # Khatib et al., 1987
    
    string[] link_names
    
    # [Nm/rad] must be => 0.0
    float64[] stiffness
    
    # without unit: Lehr’s damping ratio
    # must be between 0.3-1.0 suggested is 0.7
    float64[] damping
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NullSpace(null);
    if (msg.link_names !== undefined) {
      resolved.link_names = msg.link_names;
    }
    else {
      resolved.link_names = []
    }

    if (msg.stiffness !== undefined) {
      resolved.stiffness = msg.stiffness;
    }
    else {
      resolved.stiffness = []
    }

    if (msg.damping !== undefined) {
      resolved.damping = msg.damping;
    }
    else {
      resolved.damping = []
    }

    return resolved;
    }
};

module.exports = NullSpace;
