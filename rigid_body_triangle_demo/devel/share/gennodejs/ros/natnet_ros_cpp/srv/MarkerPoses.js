// Auto-generated. Do not edit!

// (in-package natnet_ros_cpp.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MarkerPosesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MarkerPosesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MarkerPosesRequest
    let len;
    let data = new MarkerPosesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'natnet_ros_cpp/MarkerPosesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MarkerPosesRequest(null);
    return resolved;
    }
};

class MarkerPosesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_of_markers = null;
      this.x_position = null;
      this.y_position = null;
      this.z_position = null;
    }
    else {
      if (initObj.hasOwnProperty('num_of_markers')) {
        this.num_of_markers = initObj.num_of_markers
      }
      else {
        this.num_of_markers = 0;
      }
      if (initObj.hasOwnProperty('x_position')) {
        this.x_position = initObj.x_position
      }
      else {
        this.x_position = [];
      }
      if (initObj.hasOwnProperty('y_position')) {
        this.y_position = initObj.y_position
      }
      else {
        this.y_position = [];
      }
      if (initObj.hasOwnProperty('z_position')) {
        this.z_position = initObj.z_position
      }
      else {
        this.z_position = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MarkerPosesResponse
    // Serialize message field [num_of_markers]
    bufferOffset = _serializer.int64(obj.num_of_markers, buffer, bufferOffset);
    // Serialize message field [x_position]
    bufferOffset = _arraySerializer.float64(obj.x_position, buffer, bufferOffset, null);
    // Serialize message field [y_position]
    bufferOffset = _arraySerializer.float64(obj.y_position, buffer, bufferOffset, null);
    // Serialize message field [z_position]
    bufferOffset = _arraySerializer.float64(obj.z_position, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MarkerPosesResponse
    let len;
    let data = new MarkerPosesResponse(null);
    // Deserialize message field [num_of_markers]
    data.num_of_markers = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [x_position]
    data.x_position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y_position]
    data.y_position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [z_position]
    data.z_position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.x_position.length;
    length += 8 * object.y_position.length;
    length += 8 * object.z_position.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'natnet_ros_cpp/MarkerPosesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7367279fedb79f450024191cc1ecd3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 num_of_markers
    float64[] x_position
    float64[] y_position
    float64[] z_position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MarkerPosesResponse(null);
    if (msg.num_of_markers !== undefined) {
      resolved.num_of_markers = msg.num_of_markers;
    }
    else {
      resolved.num_of_markers = 0
    }

    if (msg.x_position !== undefined) {
      resolved.x_position = msg.x_position;
    }
    else {
      resolved.x_position = []
    }

    if (msg.y_position !== undefined) {
      resolved.y_position = msg.y_position;
    }
    else {
      resolved.y_position = []
    }

    if (msg.z_position !== undefined) {
      resolved.z_position = msg.z_position;
    }
    else {
      resolved.z_position = []
    }

    return resolved;
    }
};

module.exports = {
  Request: MarkerPosesRequest,
  Response: MarkerPosesResponse,
  md5sum() { return 'c7367279fedb79f450024191cc1ecd3e'; },
  datatype() { return 'natnet_ros_cpp/MarkerPoses'; }
};
