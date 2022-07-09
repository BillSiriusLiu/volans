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

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command_num = null;
    }
    else {
      if (initObj.hasOwnProperty('command_num')) {
        this.command_num = initObj.command_num
      }
      else {
        this.command_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [command_num]
    bufferOffset = _serializer.int64(obj.command_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [command_num]
    data.command_num = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iarc_msgs/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c309d1b38a34db114a7283dc4ce576c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 command_num
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.command_num !== undefined) {
      resolved.command_num = msg.command_num;
    }
    else {
      resolved.command_num = 0
    }

    return resolved;
    }
};

module.exports = Command;
