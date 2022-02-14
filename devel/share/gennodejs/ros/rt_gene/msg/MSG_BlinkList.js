// Auto-generated. Do not edit!

// (in-package rt_gene.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MSG_Blink = require('./MSG_Blink.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MSG_BlinkList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.subjects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('subjects')) {
        this.subjects = initObj.subjects
      }
      else {
        this.subjects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MSG_BlinkList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [subjects]
    // Serialize the length for message field [subjects]
    bufferOffset = _serializer.uint32(obj.subjects.length, buffer, bufferOffset);
    obj.subjects.forEach((val) => {
      bufferOffset = MSG_Blink.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MSG_BlinkList
    let len;
    let data = new MSG_BlinkList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [subjects]
    // Deserialize array length for message field [subjects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.subjects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.subjects[i] = MSG_Blink.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.subjects.forEach((val) => {
      length += MSG_Blink.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_gene/MSG_BlinkList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f99a9f8c2658e27d518518e54fb874d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    MSG_Blink[] subjects
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: rt_gene/MSG_Blink
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
    const resolved = new MSG_BlinkList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.subjects !== undefined) {
      resolved.subjects = new Array(msg.subjects.length);
      for (let i = 0; i < resolved.subjects.length; ++i) {
        resolved.subjects[i] = MSG_Blink.Resolve(msg.subjects[i]);
      }
    }
    else {
      resolved.subjects = []
    }

    return resolved;
    }
};

module.exports = MSG_BlinkList;
