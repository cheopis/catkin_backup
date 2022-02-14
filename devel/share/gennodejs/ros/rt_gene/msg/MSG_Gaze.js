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

class MSG_Gaze {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subject_id = null;
      this.phi = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('subject_id')) {
        this.subject_id = initObj.subject_id
      }
      else {
        this.subject_id = '';
      }
      if (initObj.hasOwnProperty('phi')) {
        this.phi = initObj.phi
      }
      else {
        this.phi = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MSG_Gaze
    // Serialize message field [subject_id]
    bufferOffset = _serializer.string(obj.subject_id, buffer, bufferOffset);
    // Serialize message field [phi]
    bufferOffset = _serializer.float64(obj.phi, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MSG_Gaze
    let len;
    let data = new MSG_Gaze(null);
    // Deserialize message field [subject_id]
    data.subject_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [phi]
    data.phi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.subject_id.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_gene/MSG_Gaze';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7b3cda7766f7ea47f1ac64e0a9b76eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string subject_id
    float64 phi
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MSG_Gaze(null);
    if (msg.subject_id !== undefined) {
      resolved.subject_id = msg.subject_id;
    }
    else {
      resolved.subject_id = ''
    }

    if (msg.phi !== undefined) {
      resolved.phi = msg.phi;
    }
    else {
      resolved.phi = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    return resolved;
    }
};

module.exports = MSG_Gaze;
