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

class MSG_Landmarks {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subject_id = null;
      this.landmarks = null;
    }
    else {
      if (initObj.hasOwnProperty('subject_id')) {
        this.subject_id = initObj.subject_id
      }
      else {
        this.subject_id = '';
      }
      if (initObj.hasOwnProperty('landmarks')) {
        this.landmarks = initObj.landmarks
      }
      else {
        this.landmarks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MSG_Landmarks
    // Serialize message field [subject_id]
    bufferOffset = _serializer.string(obj.subject_id, buffer, bufferOffset);
    // Serialize message field [landmarks]
    bufferOffset = _arraySerializer.float64(obj.landmarks, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MSG_Landmarks
    let len;
    let data = new MSG_Landmarks(null);
    // Deserialize message field [subject_id]
    data.subject_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [landmarks]
    data.landmarks = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.subject_id.length;
    length += 8 * object.landmarks.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_gene/MSG_Landmarks';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6e6840b2076b49500e303fc6790d231';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string subject_id
    float64[] landmarks
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MSG_Landmarks(null);
    if (msg.subject_id !== undefined) {
      resolved.subject_id = msg.subject_id;
    }
    else {
      resolved.subject_id = ''
    }

    if (msg.landmarks !== undefined) {
      resolved.landmarks = msg.landmarks;
    }
    else {
      resolved.landmarks = []
    }

    return resolved;
    }
};

module.exports = MSG_Landmarks;
