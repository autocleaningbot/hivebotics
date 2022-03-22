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

class CartesianStiffness {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.translational = null;
      this.rotational = null;
    }
    else {
      if (initObj.hasOwnProperty('translational')) {
        this.translational = initObj.translational
      }
      else {
        this.translational = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rotational')) {
        this.rotational = initObj.rotational
      }
      else {
        this.rotational = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianStiffness
    // Serialize message field [translational]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.translational, buffer, bufferOffset);
    // Serialize message field [rotational]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rotational, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianStiffness
    let len;
    let data = new CartesianStiffness(null);
    // Deserialize message field [translational]
    data.translational = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotational]
    data.rotational = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/CartesianStiffness';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '866c599e7e51951dfb12da14910fd482';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Stiffness parameters for the Cartesian Impedance
    # the values are divided into translational and rotational
    # each of the translational and rotational components is defined as Vector3
    
    # [N/m]
    geometry_msgs/Vector3 translational
    # [Nm/rad]
    geometry_msgs/Vector3 rotational
    
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
    const resolved = new CartesianStiffness(null);
    if (msg.translational !== undefined) {
      resolved.translational = geometry_msgs.msg.Vector3.Resolve(msg.translational)
    }
    else {
      resolved.translational = new geometry_msgs.msg.Vector3()
    }

    if (msg.rotational !== undefined) {
      resolved.rotational = geometry_msgs.msg.Vector3.Resolve(msg.rotational)
    }
    else {
      resolved.rotational = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = CartesianStiffness;
