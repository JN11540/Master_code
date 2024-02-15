// Auto-generated. Do not edit!

// (in-package rgbd_object_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class highest_z {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.high_z = null;
    }
    else {
      if (initObj.hasOwnProperty('high_z')) {
        this.high_z = initObj.high_z
      }
      else {
        this.high_z = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type highest_z
    // Serialize message field [high_z]
    bufferOffset = _arraySerializer.float64(obj.high_z, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type highest_z
    let len;
    let data = new highest_z(null);
    // Deserialize message field [high_z]
    data.high_z = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.high_z.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rgbd_object_detection/highest_z';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fa59990232b2dddf2b0b21950ccf9db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] high_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new highest_z(null);
    if (msg.high_z !== undefined) {
      resolved.high_z = msg.high_z;
    }
    else {
      resolved.high_z = []
    }

    return resolved;
    }
};

module.exports = highest_z;
