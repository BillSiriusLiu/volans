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

class QRMatrix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.matrix = null;
    }
    else {
      if (initObj.hasOwnProperty('matrix')) {
        this.matrix = initObj.matrix
      }
      else {
        this.matrix = new Array(121).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QRMatrix
    // Check that the constant length array field [matrix] has the right length
    if (obj.matrix.length !== 121) {
      throw new Error('Unable to serialize array field matrix - length must be 121')
    }
    // Serialize message field [matrix]
    bufferOffset = _arraySerializer.int64(obj.matrix, buffer, bufferOffset, 121);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QRMatrix
    let len;
    let data = new QRMatrix(null);
    // Deserialize message field [matrix]
    data.matrix = _arrayDeserializer.int64(buffer, bufferOffset, 121)
    return data;
  }

  static getMessageSize(object) {
    return 968;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iarc_msgs/QRMatrix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6613d284da8b77ddadc769d602bc297f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[121] matrix
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QRMatrix(null);
    if (msg.matrix !== undefined) {
      resolved.matrix = msg.matrix;
    }
    else {
      resolved.matrix = new Array(121).fill(0)
    }

    return resolved;
    }
};

module.exports = QRMatrix;
