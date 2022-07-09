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

class Start_Cure {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_cure = null;
    }
    else {
      if (initObj.hasOwnProperty('start_cure')) {
        this.start_cure = initObj.start_cure
      }
      else {
        this.start_cure = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Start_Cure
    // Serialize message field [start_cure]
    bufferOffset = _serializer.int8(obj.start_cure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Start_Cure
    let len;
    let data = new Start_Cure(null);
    // Deserialize message field [start_cure]
    data.start_cure = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iarc_msgs/Start_Cure';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12fc1e224eb302516363b13510ed18b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 start_cure
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Start_Cure(null);
    if (msg.start_cure !== undefined) {
      resolved.start_cure = msg.start_cure;
    }
    else {
      resolved.start_cure = 0
    }

    return resolved;
    }
};

module.exports = Start_Cure;
