// Auto-generated. Do not edit!

// (in-package rt_gene.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MSG_Blink {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subject_id = null;
      this.blink = null;
      this.probability = null;
    }
    else {
      if (initObj.hasOwnProperty('subject_id')) {
        this.subject_id = initObj.subject_id
      }
      else {
        this.subject_id = '';
      }
      if (initObj.hasOwnProperty('blink')) {
        this.blink = initObj.blink
      }
      else {
        this.blink = false;
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MSG_Blink
    // Serialize message field [subject_id]
    bufferOffset = _serializer.string(obj.subject_id, buffer, bufferOffset);
    // Serialize message field [blink]
    bufferOffset = _serializer.bool(obj.blink, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float64(obj.probability, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MSG_Blink
    let len;
    let data = new MSG_Blink(null);
    // Deserialize message field [subject_id]
    data.subject_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [blink]
    data.blink = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.subject_id.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_gene/MSG_Blink';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa03186403fe21e492d9b7fd51b80207';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string subject_id
    bool blink
    float64 probability
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MSG_Blink(null);
    if (msg.subject_id !== undefined) {
      resolved.subject_id = msg.subject_id;
    }
    else {
      resolved.subject_id = ''
    }

    if (msg.blink !== undefined) {
      resolved.blink = msg.blink;
    }
    else {
      resolved.blink = false
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    return resolved;
    }
};

module.exports = MSG_Blink;
