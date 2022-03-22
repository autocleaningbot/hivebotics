// Auto-generated. Do not edit!

// (in-package cartesian_impedance_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SetCartesianImpedance = require('../msg/SetCartesianImpedance.js');
let SetCartesianForceCtrl = require('../msg/SetCartesianForceCtrl.js');

//-----------------------------------------------------------

let CartesianForceCtrlErrorCodes = require('../msg/CartesianForceCtrlErrorCodes.js');

//-----------------------------------------------------------

class ConfigureForceControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cart_impedance_params = null;
      this.cart_force_control = null;
    }
    else {
      if (initObj.hasOwnProperty('cart_impedance_params')) {
        this.cart_impedance_params = initObj.cart_impedance_params
      }
      else {
        this.cart_impedance_params = new SetCartesianImpedance();
      }
      if (initObj.hasOwnProperty('cart_force_control')) {
        this.cart_force_control = initObj.cart_force_control
      }
      else {
        this.cart_force_control = new SetCartesianForceCtrl();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigureForceControlRequest
    // Serialize message field [cart_impedance_params]
    bufferOffset = SetCartesianImpedance.serialize(obj.cart_impedance_params, buffer, bufferOffset);
    // Serialize message field [cart_force_control]
    bufferOffset = SetCartesianForceCtrl.serialize(obj.cart_force_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigureForceControlRequest
    let len;
    let data = new ConfigureForceControlRequest(null);
    // Deserialize message field [cart_impedance_params]
    data.cart_impedance_params = SetCartesianImpedance.deserialize(buffer, bufferOffset);
    // Deserialize message field [cart_force_control]
    data.cart_force_control = SetCartesianForceCtrl.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SetCartesianImpedance.getMessageSize(object.cart_impedance_params);
    length += SetCartesianForceCtrl.getMessageSize(object.cart_force_control);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartesian_impedance_msgs/ConfigureForceControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '378a2ac871ec6ade92b189f4ab145964';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cartesian_impedance_msgs/SetCartesianImpedance cart_impedance_params
    cartesian_impedance_msgs/SetCartesianForceCtrl cart_force_control
    
    ================================================================================
    MSG: cartesian_impedance_msgs/SetCartesianImpedance
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
    
    ================================================================================
    MSG: cartesian_impedance_msgs/SetCartesianForceCtrl
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
    const resolved = new ConfigureForceControlRequest(null);
    if (msg.cart_impedance_params !== undefined) {
      resolved.cart_impedance_params = SetCartesianImpedance.Resolve(msg.cart_impedance_params)
    }
    else {
      resolved.cart_impedance_params = new SetCartesianImpedance()
    }

    if (msg.cart_force_control !== undefined) {
      resolved.cart_force_control = SetCartesianForceCtrl.Resolve(msg.cart_force_control)
    }
    else {
      resolved.cart_force_control = new SetCartesianForceCtrl()
    }

    return resolved;
    }
};

class ConfigureForceControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = new CartesianForceCtrlErrorCodes();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigureForceControlResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = CartesianForceCtrlErrorCodes.serialize(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigureForceControlResponse
    let len;
    let data = new ConfigureForceControlResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = CartesianForceCtrlErrorCodes.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartesian_impedance_msgs/ConfigureForceControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7c9cad7cd84b46126e20e34f547cde8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    CartesianForceCtrlErrorCodes error
    
    
    ================================================================================
    MSG: cartesian_impedance_msgs/CartesianForceCtrlErrorCodes
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
    const resolved = new ConfigureForceControlResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error !== undefined) {
      resolved.error = CartesianForceCtrlErrorCodes.Resolve(msg.error)
    }
    else {
      resolved.error = new CartesianForceCtrlErrorCodes()
    }

    return resolved;
    }
};

module.exports = {
  Request: ConfigureForceControlRequest,
  Response: ConfigureForceControlResponse,
  md5sum() { return 'cf3ce9f3d61d188954ed294028d91e13'; },
  datatype() { return 'cartesian_impedance_msgs/ConfigureForceControl'; }
};
