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

class SendQRMatrixRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channel = null;
      this.matrix = null;
    }
    else {
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('matrix')) {
        this.matrix = initObj.matrix
      }
      else {
        this.matrix = new Array(121).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendQRMatrixRequest
    // Serialize message field [channel]
    bufferOffset = _serializer.int64(obj.channel, buffer, bufferOffset);
    // Check that the constant length array field [matrix] has the right length
    if (obj.matrix.length !== 121) {
      throw new Error('Unable to serialize array field matrix - length must be 121')
    }
    // Serialize message field [matrix]
    bufferOffset = _arraySerializer.int64(obj.matrix, buffer, bufferOffset, 121);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendQRMatrixRequest
    let len;
    let data = new SendQRMatrixRequest(null);
    // Deserialize message field [channel]
    data.channel = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [matrix]
    data.matrix = _arrayDeserializer.int64(buffer, bufferOffset, 121)
    return data;
  }

  static getMessageSize(object) {
    return 976;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/SendQRMatrixRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c50499576f641c0c50005489ac6fa47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 channel
    int64[121] matrix
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendQRMatrixRequest(null);
    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.matrix !== undefined) {
      resolved.matrix = msg.matrix;
    }
    else {
      resolved.matrix = new Array(121).fill(0)
    }

    return resolved;
    }
};

class SendQRMatrixResponse {
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
    // Serializes a message object of type SendQRMatrixResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.bool(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendQRMatrixResponse
    let len;
    let data = new SendQRMatrixResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/SendQRMatrixResponse';
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
    const resolved = new SendQRMatrixResponse(null);
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
  Request: SendQRMatrixRequest,
  Response: SendQRMatrixResponse,
  md5sum() { return 'fd173312d52f41d9b2e7080c044e0769'; },
  datatype() { return 'iarc_msgs/SendQRMatrix'; }
};
