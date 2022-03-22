// Auto-generated. Do not edit!

// (in-package cartesian_impedance_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MaxCtrlForceExceeded = require('./MaxCtrlForceExceeded.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MaxControlForce {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set = null;
      this.exceeded_action = null;
    }
    else {
      if (initObj.hasOwnProperty('set')) {
        this.set = initObj.set
      }
      else {
        this.set = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('exceeded_action')) {
        this.exceeded_action = initObj.exceeded_action
      }
      else {
        this.exceeded_action = new MaxCtrlForceExceeded();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MaxControlForce
    // Serialize message field [set]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.set, buffer, bufferOffset);
    // Serialize message field [exceeded_action]
    bufferOffset = MaxCtrlForceExceeded.serialize(obj.exceeded_action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MaxControlForce
    let len;
    let data = new MaxControlForce(null);
    // Deserialize message field [set]
    data.set = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [exceeded_action]
    data.exceeded_action = MaxCtrlForceExceeded.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/MaxControlForce';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d951f2d20cd888c5cd46241c4bebaba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # parameters for Maximum allowed Cartesian Force when in Cartesian Impedance
    # This is not the values that the user needs to set for Force Control on the controller
    # these parameters are just a safety set and if the controller exceeds the maximum external force
    # the user can provide different alternatives, e.g. stop the motion or move away the robot from the object.
    
    # Wrench is defined with two components:
    # Vector3  force
    # Vector3  torque
    
    # xyz: Newtons  (all >=0)
    # rpy:Nm
    geometry_msgs/Wrench set
    
    # handler if max control force is exceeded
     MaxCtrlForceExceeded exceeded_action
    
    ================================================================================
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
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
    ================================================================================
    MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded
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
    const resolved = new MaxControlForce(null);
    if (msg.set !== undefined) {
      resolved.set = geometry_msgs.msg.Wrench.Resolve(msg.set)
    }
    else {
      resolved.set = new geometry_msgs.msg.Wrench()
    }

    if (msg.exceeded_action !== undefined) {
      resolved.exceeded_action = MaxCtrlForceExceeded.Resolve(msg.exceeded_action)
    }
    else {
      resolved.exceeded_action = new MaxCtrlForceExceeded()
    }

    return resolved;
    }
};

module.exports = MaxControlForce;
