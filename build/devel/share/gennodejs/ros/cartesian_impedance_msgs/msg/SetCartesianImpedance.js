// Auto-generated. Do not edit!

// (in-package cartesian_impedance_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CartesianStiffness = require('./CartesianStiffness.js');
let CartesianDamping = require('./CartesianDamping.js');
let MaxCartesianVelocity = require('./MaxCartesianVelocity.js');
let MaxControlForce = require('./MaxControlForce.js');
let MaxPathDeviation = require('./MaxPathDeviation.js');
let NullSpace = require('./NullSpace.js');

//-----------------------------------------------------------

class SetCartesianImpedance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tool = null;
      this.stiffness = null;
      this.damping = null;
      this.max_cart_vel = null;
      this.max_ctrl_force = null;
      this.max_path_deviation = null;
      this.null_space_params = null;
    }
    else {
      if (initObj.hasOwnProperty('tool')) {
        this.tool = initObj.tool
      }
      else {
        this.tool = '';
      }
      if (initObj.hasOwnProperty('stiffness')) {
        this.stiffness = initObj.stiffness
      }
      else {
        this.stiffness = new CartesianStiffness();
      }
      if (initObj.hasOwnProperty('damping')) {
        this.damping = initObj.damping
      }
      else {
        this.damping = new CartesianDamping();
      }
      if (initObj.hasOwnProperty('max_cart_vel')) {
        this.max_cart_vel = initObj.max_cart_vel
      }
      else {
        this.max_cart_vel = new MaxCartesianVelocity();
      }
      if (initObj.hasOwnProperty('max_ctrl_force')) {
        this.max_ctrl_force = initObj.max_ctrl_force
      }
      else {
        this.max_ctrl_force = new MaxControlForce();
      }
      if (initObj.hasOwnProperty('max_path_deviation')) {
        this.max_path_deviation = initObj.max_path_deviation
      }
      else {
        this.max_path_deviation = new MaxPathDeviation();
      }
      if (initObj.hasOwnProperty('null_space_params')) {
        this.null_space_params = initObj.null_space_params
      }
      else {
        this.null_space_params = new NullSpace();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCartesianImpedance
    // Serialize message field [tool]
    bufferOffset = _serializer.string(obj.tool, buffer, bufferOffset);
    // Serialize message field [stiffness]
    bufferOffset = CartesianStiffness.serialize(obj.stiffness, buffer, bufferOffset);
    // Serialize message field [damping]
    bufferOffset = CartesianDamping.serialize(obj.damping, buffer, bufferOffset);
    // Serialize message field [max_cart_vel]
    bufferOffset = MaxCartesianVelocity.serialize(obj.max_cart_vel, buffer, bufferOffset);
    // Serialize message field [max_ctrl_force]
    bufferOffset = MaxControlForce.serialize(obj.max_ctrl_force, buffer, bufferOffset);
    // Serialize message field [max_path_deviation]
    bufferOffset = MaxPathDeviation.serialize(obj.max_path_deviation, buffer, bufferOffset);
    // Serialize message field [null_space_params]
    bufferOffset = NullSpace.serialize(obj.null_space_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCartesianImpedance
    let len;
    let data = new SetCartesianImpedance(null);
    // Deserialize message field [tool]
    data.tool = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stiffness]
    data.stiffness = CartesianStiffness.deserialize(buffer, bufferOffset);
    // Deserialize message field [damping]
    data.damping = CartesianDamping.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_cart_vel]
    data.max_cart_vel = MaxCartesianVelocity.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_ctrl_force]
    data.max_ctrl_force = MaxControlForce.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_path_deviation]
    data.max_path_deviation = MaxPathDeviation.deserialize(buffer, bufferOffset);
    // Deserialize message field [null_space_params]
    data.null_space_params = NullSpace.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.tool);
    length += NullSpace.getMessageSize(object.null_space_params);
    return length + 247;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_impedance_msgs/SetCartesianImpedance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b24937cc6fdd3861e00c0a10eecbfb67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Here we combine all the parameters message definitions into a single message
    # that needs to be send to the controller in order to adjust the Cartesian Impedance Parameters
    
    string                 tool
    CartesianStiffness     stiffness
    #use this if the damping parameters are defined as ratios (Lehr's damping ratio)
    CartesianDamping       damping
    MaxCartesianVelocity   max_cart_vel
    MaxControlForce        max_ctrl_force
    MaxPathDeviation       max_path_deviation
    NullSpace              null_space_params
    
    ================================================================================
    MSG: cartesian_impedance_msgs/CartesianStiffness
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
    ================================================================================
    MSG: cartesian_impedance_msgs/CartesianDamping
    # Damping parameters for the Cartesian Impedance
    # the values are divided into translational and rotational
    # each of the translational and rotational components is defined as Vector3
    
    # Spring damping (type: double)
    # The spring damping determines the extent to which the virtual springs
    # oscillate after deflection.
    # For all degrees of freedom (without unit: Lehr’s damping ratio)
    
    # [ratio:0.1-1.0]
    geometry_msgs/Vector3 translational
    # [ratio:0.1-1.0]
    geometry_msgs/Vector3 rotational
    
    ================================================================================
    MSG: cartesian_impedance_msgs/MaxCartesianVelocity
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
    MSG: cartesian_impedance_msgs/MaxControlForce
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
    MSG: cartesian_impedance_msgs/MaxCtrlForceExceeded
    # Message for handling different actions if the end-effector
    # exceeds maximum force set in the Cartesian Impedance parameters
    
    bool stop
    bool gravity_compensation
    bool move_away
    
    ================================================================================
    MSG: cartesian_impedance_msgs/MaxPathDeviation
    # parameters for Maximum allowed Path Deviation from goal when in Cartesian Impedance
    # the values are divided into translational and rotational
    # each of the translational and rotational components is defined as Vector3
    
    # maximum deviation from set goal in m
    geometry_msgs/Vector3 translation
    
    # maximum deviation from set goal in radians
    geometry_msgs/Vector3 rotation
    
    ================================================================================
    MSG: cartesian_impedance_msgs/NullSpace
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
    const resolved = new SetCartesianImpedance(null);
    if (msg.tool !== undefined) {
      resolved.tool = msg.tool;
    }
    else {
      resolved.tool = ''
    }

    if (msg.stiffness !== undefined) {
      resolved.stiffness = CartesianStiffness.Resolve(msg.stiffness)
    }
    else {
      resolved.stiffness = new CartesianStiffness()
    }

    if (msg.damping !== undefined) {
      resolved.damping = CartesianDamping.Resolve(msg.damping)
    }
    else {
      resolved.damping = new CartesianDamping()
    }

    if (msg.max_cart_vel !== undefined) {
      resolved.max_cart_vel = MaxCartesianVelocity.Resolve(msg.max_cart_vel)
    }
    else {
      resolved.max_cart_vel = new MaxCartesianVelocity()
    }

    if (msg.max_ctrl_force !== undefined) {
      resolved.max_ctrl_force = MaxControlForce.Resolve(msg.max_ctrl_force)
    }
    else {
      resolved.max_ctrl_force = new MaxControlForce()
    }

    if (msg.max_path_deviation !== undefined) {
      resolved.max_path_deviation = MaxPathDeviation.Resolve(msg.max_path_deviation)
    }
    else {
      resolved.max_path_deviation = new MaxPathDeviation()
    }

    if (msg.null_space_params !== undefined) {
      resolved.null_space_params = NullSpace.Resolve(msg.null_space_params)
    }
    else {
      resolved.null_space_params = new NullSpace()
    }

    return resolved;
    }
};

module.exports = SetCartesianImpedance;
