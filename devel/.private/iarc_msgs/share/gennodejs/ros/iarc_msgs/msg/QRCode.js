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

class QRCode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QRCode
    // Check that the constant length array field [code] has the right length
    if (obj.code.length !== 4) {
      throw new Error('Unable to serialize array field code - length must be 4')
    }
    // Serialize message field [code]
    bufferOffset = _arraySerializer.int64(obj.code, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QRCode
    let len;
    let data = new QRCode(null);
    // Deserialize message field [code]
    data.code = _arrayDeserializer.int64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iarc_msgs/QRCode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fdbad0f70adc75d9bbd4ce667ab39d53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[4] code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QRCode(null);
    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = QRCode;
