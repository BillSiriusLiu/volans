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

class SendCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channel = null;
      this.command_code = null;
    }
    else {
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('command_code')) {
        this.command_code = initObj.command_code
      }
      else {
        this.command_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendCommandRequest
    // Serialize message field [channel]
    bufferOffset = _serializer.int64(obj.channel, buffer, bufferOffset);
    // Serialize message field [command_code]
    bufferOffset = _serializer.int64(obj.command_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCommandRequest
    let len;
    let data = new SendCommandRequest(null);
    // Deserialize message field [channel]
    data.channel = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [command_code]
    data.command_code = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/SendCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81d50804fc1e3db507ae016b2ff6c970';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 channel
    int64 command_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendCommandRequest(null);
    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.command_code !== undefined) {
      resolved.command_code = msg.command_code;
    }
    else {
      resolved.command_code = 0
    }

    return resolved;
    }
};

class SendCommandResponse {
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
        this.feedback = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendCommandResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.bool(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCommandResponse
    let len;
    let data = new SendCommandResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/SendCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1f168a39479bedb24dba7a087426182';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendCommandResponse(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SendCommandRequest,
  Response: SendCommandResponse,
  md5sum() { return '23fbd02f00f51588a9ba39cc1ae0975a'; },
  datatype() { return 'iarc_msgs/SendCommand'; }
};
