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

class computeAP_ingredient {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.iou = null;
      this.confidence = null;
      this.classification = null;
    }
    else {
      if (initObj.hasOwnProperty('iou')) {
        this.iou = initObj.iou
      }
      else {
        this.iou = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('classification')) {
        this.classification = initObj.classification
      }
      else {
        this.classification = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type computeAP_ingredient
    // Serialize message field [iou]
    bufferOffset = _serializer.float64(obj.iou, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [classification]
    bufferOffset = _serializer.bool(obj.classification, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type computeAP_ingredient
    let len;
    let data = new computeAP_ingredient(null);
    // Deserialize message field [iou]
    data.iou = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [classification]
    data.classification = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rgbd_object_detection/computeAP_ingredient';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5dbd6052d8bab1fac1b2de3c8bfb4d47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new computeAP_ingredient(null);
    if (msg.iou !== undefined) {
      resolved.iou = msg.iou;
    }
    else {
      resolved.iou = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.classification !== undefined) {
      resolved.classification = msg.classification;
    }
    else {
      resolved.classification = false
    }

    return resolved;
    }
};

module.exports = computeAP_ingredient;
