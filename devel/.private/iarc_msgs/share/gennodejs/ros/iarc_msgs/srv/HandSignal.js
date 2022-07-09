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

class HandSignalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HandSignalRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HandSignalRequest
    let len;
    let data = new HandSignalRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/HandSignalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HandSignalRequest(null);
    return resolved;
    }
};

class HandSignalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal_num = null;
    }
    else {
      if (initObj.hasOwnProperty('signal_num')) {
        this.signal_num = initObj.signal_num
      }
      else {
        this.signal_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HandSignalResponse
    // Serialize message field [signal_num]
    bufferOffset = _serializer.int64(obj.signal_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HandSignalResponse
    let len;
    let data = new HandSignalResponse(null);
    // Deserialize message field [signal_num]
    data.signal_num = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iarc_msgs/HandSignalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66389ecef7e0d1c6c3fdf9137ae8737e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 signal_num
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HandSignalResponse(null);
    if (msg.signal_num !== undefined) {
      resolved.signal_num = msg.signal_num;
    }
    else {
      resolved.signal_num = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: HandSignalRequest,
  Response: HandSignalResponse,
  md5sum() { return '66389ecef7e0d1c6c3fdf9137ae8737e'; },
  datatype() { return 'iarc_msgs/HandSignal'; }
};
