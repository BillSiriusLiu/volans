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

class SendQRCodeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channel = null;
      this.code = null;
    }
    else {
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendQRCodeRequest
    // Serialize message field [channel]
    bufferOffset = _serializer.int64(obj.channel, buffer, bufferOffset);
    // Check that the constant length array field [code] has the right length
    if (obj.code.length !== 4) {
      throw new Error('Unable to serialize array field code - length must be 4')
    }
    // Serialize message field [code]
    bufferOffset = _arraySerializer.int64(obj.code, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendQRCodeRequest
    let len;
    let data = new SendQRCodeRequest(null);
    // Deserialize message field [channel]
    data.channel = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _arrayDeserializer.int64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/SendQRCodeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '704927ff9a6f6a65583495f8609d3df5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 channel
    int64[4] code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendQRCodeRequest(null);
    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = new Array(4).fill(0)
    }

    return resolved;
    }
};

class SendQRCodeResponse {
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
    // Serializes a message object of type SendQRCodeResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.bool(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendQRCodeResponse
    let len;
    let data = new SendQRCodeResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/SendQRCodeResponse';
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
    const resolved = new SendQRCodeResponse(null);
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
  Request: SendQRCodeRequest,
  Response: SendQRCodeResponse,
  md5sum() { return '8193f777c6b316488f0375ed416381c5'; },
  datatype() { return 'iarc_msgs/SendQRCode'; }
};
