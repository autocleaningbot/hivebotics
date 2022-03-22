// Auto-generated. Do not edit!

// (in-package abluo_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class armCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lin_act_pos = null;
      this.lin_act_vel = null;
      this.joint_pos = null;
      this.joint_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('lin_act_pos')) {
        this.lin_act_pos = initObj.lin_act_pos
      }
      else {
        this.lin_act_pos = 0.0;
      }
      if (initObj.hasOwnProperty('lin_act_vel')) {
        this.lin_act_vel = initObj.lin_act_vel
      }
      else {
        this.lin_act_vel = 0.0;
      }
      if (initObj.hasOwnProperty('joint_pos')) {
        this.joint_pos = initObj.joint_pos
      }
      else {
        this.joint_pos = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('joint_vel')) {
        this.joint_vel = initObj.joint_vel
      }
      else {
        this.joint_vel = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type armCmd
    // Serialize message field [lin_act_pos]
    bufferOffset = _serializer.float32(obj.lin_act_pos, buffer, bufferOffset);
    // Serialize message field [lin_act_vel]
    bufferOffset = _serializer.float32(obj.lin_act_vel, buffer, bufferOffset);
    // Check that the constant length array field [joint_pos] has the right length
    if (obj.joint_pos.length !== 6) {
      throw new Error('Unable to serialize array field joint_pos - length must be 6')
    }
    // Serialize message field [joint_pos]
    bufferOffset = _arraySerializer.float32(obj.joint_pos, buffer, bufferOffset, 6);
    // Check that the constant length array field [joint_vel] has the right length
    if (obj.joint_vel.length !== 6) {
      throw new Error('Unable to serialize array field joint_vel - length must be 6')
    }
    // Serialize message field [joint_vel]
    bufferOffset = _arraySerializer.float32(obj.joint_vel, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type armCmd
    let len;
    let data = new armCmd(null);
    // Deserialize message field [lin_act_pos]
    data.lin_act_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lin_act_vel]
    data.lin_act_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint_pos]
    data.joint_pos = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [joint_vel]
    data.joint_vel = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'abluo_control/armCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be46fb345c061067c53d8d4d84c44a87';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 lin_act_pos #val
    float32 lin_act_vel
    float32[6] joint_pos #degrees
    float32[6] joint_vel #deg/s
    # uint32 msg_ctr # count sent msgs to detected missed messages
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new armCmd(null);
    if (msg.lin_act_pos !== undefined) {
      resolved.lin_act_pos = msg.lin_act_pos;
    }
    else {
      resolved.lin_act_pos = 0.0
    }

    if (msg.lin_act_vel !== undefined) {
      resolved.lin_act_vel = msg.lin_act_vel;
    }
    else {
      resolved.lin_act_vel = 0.0
    }

    if (msg.joint_pos !== undefined) {
      resolved.joint_pos = msg.joint_pos;
    }
    else {
      resolved.joint_pos = new Array(6).fill(0)
    }

    if (msg.joint_vel !== undefined) {
      resolved.joint_vel = msg.joint_vel;
    }
    else {
      resolved.joint_vel = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = armCmd;
