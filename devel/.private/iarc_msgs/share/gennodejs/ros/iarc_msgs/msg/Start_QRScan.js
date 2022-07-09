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

class Start_QRScan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_qrscan = null;
    }
    else {
      if (initObj.hasOwnProperty('start_qrscan')) {
        this.start_qrscan = initObj.start_qrscan
      }
      else {
        this.start_qrscan = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Start_QRScan
    // Serialize message field [start_qrscan]
    bufferOffset = _serializer.int8(obj.start_qrscan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Start_QRScan
    let len;
    let data = new Start_QRScan(null);
    // Deserialize message field [start_qrscan]
    data.start_qrscan = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iarc_msgs/Start_QRScan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88694611e19cf8dc57b2f35c3cd23ec9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 start_qrscan
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Start_QRScan(null);
    if (msg.start_qrscan !== undefined) {
      resolved.start_qrscan = msg.start_qrscan;
    }
    else {
      resolved.start_qrscan = 0
    }

    return resolved;
    }
};

module.exports = Start_QRScan;
