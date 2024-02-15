// Auto-generated. Do not edit!

// (in-package rgbd_object_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let computeAP_ingredient = require('./computeAP_ingredient.js');

//-----------------------------------------------------------

class computeAP_id {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ingredient = null;
    }
    else {
      if (initObj.hasOwnProperty('ingredient')) {
        this.ingredient = initObj.ingredient
      }
      else {
        this.ingredient = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type computeAP_id
    // Serialize message field [ingredient]
    // Serialize the length for message field [ingredient]
    bufferOffset = _serializer.uint32(obj.ingredient.length, buffer, bufferOffset);
    obj.ingredient.forEach((val) => {
      bufferOffset = computeAP_ingredient.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type computeAP_id
    let len;
    let data = new computeAP_id(null);
    // Deserialize message field [ingredient]
    // Deserialize array length for message field [ingredient]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ingredient = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ingredient[i] = computeAP_ingredient.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 17 * object.ingredient.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rgbd_object_detection/computeAP_id';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad8e40b02f261285e7657170912e56c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    computeAP_ingredient[] ingredient
    ================================================================================
    MSG: rgbd_object_detection/computeAP_ingredient
    float64 iou
    float64 confidence
    bool classification
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new computeAP_id(null);
    if (msg.ingredient !== undefined) {
      resolved.ingredient = new Array(msg.ingredient.length);
      for (let i = 0; i < resolved.ingredient.length; ++i) {
        resolved.ingredient[i] = computeAP_ingredient.Resolve(msg.ingredient[i]);
      }
    }
    else {
      resolved.ingredient = []
    }

    return resolved;
    }
};

module.exports = computeAP_id;
