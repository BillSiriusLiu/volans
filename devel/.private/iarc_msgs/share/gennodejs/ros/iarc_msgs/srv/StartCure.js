// Auto-generated. Do not edit!

// (in-package iarc_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StartCureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.if_cure = null;
    }
    else {
      if (initObj.hasOwnProperty('if_cure')) {
        this.if_cure = initObj.if_cure
      }
      else {
        this.if_cure = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartCureRequest
    // Serialize message field [if_cure]
    bufferOffset = _serializer.int64(obj.if_cure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartCureRequest
    let len;
    let data = new StartCureRequest(null);
    // Deserialize message field [if_cure]
    data.if_cure = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/StartCureRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04c678b7f6e0b5e2d007929c3b20ceb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 if_cure
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartCureRequest(null);
    if (msg.if_cure !== undefined) {
      resolved.if_cure = msg.if_cure;
    }
    else {
      resolved.if_cure = 0
    }

    return resolved;
    }
};

class StartCureResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartCureResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.int64(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartCureResponse
    let len;
    let data = new StartCureResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/StartCureResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f13abea819e137c73823c571ceb05062';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartCureResponse(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: StartCureRequest,
  Response: StartCureResponse,
  md5sum() { return 'feb547387d54d09a610dd34314e9c411'; },
  datatype() { return 'iarc_msgs/StartCure'; }
};
