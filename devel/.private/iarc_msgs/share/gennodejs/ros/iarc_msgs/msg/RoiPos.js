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

class RoiPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detectornot = null;
      this.dx = null;
      this.dy = null;
    }
    else {
      if (initObj.hasOwnProperty('detectornot')) {
        this.detectornot = initObj.detectornot
      }
      else {
        this.detectornot = false;
      }
      if (initObj.hasOwnProperty('dx')) {
        this.dx = initObj.dx
      }
      else {
        this.dx = 0.0;
      }
      if (initObj.hasOwnProperty('dy')) {
        this.dy = initObj.dy
      }
      else {
        this.dy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoiPos
    // Serialize message field [detectornot]
    bufferOffset = _serializer.bool(obj.detectornot, buffer, bufferOffset);
    // Serialize message field [dx]
    bufferOffset = _serializer.float64(obj.dx, buffer, bufferOffset);
    // Serialize message field [dy]
    bufferOffset = _serializer.float64(obj.dy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoiPos
    let len;
    let data = new RoiPos(null);
    // Deserialize message field [detectornot]
    data.detectornot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dx]
    data.dx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dy]
    data.dy = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iarc_msgs/RoiPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b3f1c225c207c4782cf386506f6493e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool detectornot
    float64 dx
    float64 dy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoiPos(null);
    if (msg.detectornot !== undefined) {
      resolved.detectornot = msg.detectornot;
    }
    else {
      resolved.detectornot = false
    }

    if (msg.dx !== undefined) {
      resolved.dx = msg.dx;
    }
    else {
      resolved.dx = 0.0
    }

    if (msg.dy !== undefined) {
      resolved.dy = msg.dy;
    }
    else {
      resolved.dy = 0.0
    }

    return resolved;
    }
};

module.exports = RoiPos;
