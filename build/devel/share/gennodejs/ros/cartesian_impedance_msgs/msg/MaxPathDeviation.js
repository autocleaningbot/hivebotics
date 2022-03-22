// Auto-generated. Do not edit!

// (in-package cartesian_impedance_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MaxPathDeviation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.translation = null;
      this.rotation = null;
    }
    else {
      if (initObj.hasOwnProperty('translation')) {
        this.translation = initObj.translation
      }
      else {
        this.translation = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MaxPathDeviation
    // Serialize message field [translation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.translation, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rotation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MaxPathDeviation
    let len;
    let data = new MaxPathDeviation(null);
    // Deserialize message field [translation]
    data.translation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/MaxPathDeviation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41357283b9b8994fb9ee581a91f76c5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance
    # the values are divided into translational and rotational
    # each of the translational and rotational components is defined as Vector3
    
    # maximum deviation from set goal in m
    geometry_msgs/Vector3 translation
    
    # maximum deviation from set goal in radians
    geometry_msgs/Vector3 rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MaxPathDeviation(null);
    if (msg.translation !== undefined) {
      resolved.translation = geometry_msgs.msg.Vector3.Resolve(msg.translation)
    }
    else {
      resolved.translation = new geometry_msgs.msg.Vector3()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = geometry_msgs.msg.Vector3.Resolve(msg.rotation)
    }
    else {
      resolved.rotation = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = MaxPathDeviation;
