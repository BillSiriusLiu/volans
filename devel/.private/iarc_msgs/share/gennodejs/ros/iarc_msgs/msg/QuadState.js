// Auto-generated. Do not edit!

// (in-package iarc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class QuadState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.quad_state = null;
    }
    else {
      if (initObj.hasOwnProperty('quad_state')) {
        this.quad_state = initObj.quad_state
      }
      else {
        this.quad_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadState
    // Serialize message field [quad_state]
    bufferOffset = _serializer.int8(obj.quad_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadState
    let len;
    let data = new QuadState(null);
    // Deserialize message field [quad_state]
    data.quad_state = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iarc_msgs/QuadState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49b8231aaa41ecfdd614616186a40519';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 quad_state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuadState(null);
    if (msg.quad_state !== undefined) {
      resolved.quad_state = msg.quad_state;
    }
    else {
      resolved.quad_state = 0
    }

    return resolved;
    }
};

module.exports = QuadState;
