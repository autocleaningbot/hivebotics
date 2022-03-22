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

class MaxCartesianVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set = null;
    }
    else {
      if (initObj.hasOwnProperty('set')) {
        this.set = initObj.set
      }
      else {
        this.set = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MaxCartesianVelocity
    // Serialize message field [set]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.set, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MaxCartesianVelocity
    let len;
    let data = new MaxCartesianVelocity(null);
    // Deserialize message field [set]
    data.set = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/MaxCartesianVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d6d020ac62f3de71dbfd1b4ad0a7689';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # parameters for Maximum allowed Cartesian Velocity when in Cartesian Impedance
    # the values are divided into translational and rotational
    # the overall message is defined as Twist.
    # The Twist message is composed of:
    #  1. geometry_msgs/Vector3 linear
    #  2. geometry_msgs/Vector3 angular
    
    # trans: [m/s]
    # rotation: [rad/s]
    geometry_msgs/Twist set
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new MaxCartesianVelocity(null);
    if (msg.set !== undefined) {
      resolved.set = geometry_msgs.msg.Twist.Resolve(msg.set)
    }
    else {
      resolved.set = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = MaxCartesianVelocity;
