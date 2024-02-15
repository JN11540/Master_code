; Auto-generated. Do not edit!


(cl:in-package rgbd_object_detection-msg)


;//! \htmlinclude talker_1.msg.html

(cl:defclass <talker_1> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass talker_1 (<talker_1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <talker_1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'talker_1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rgbd_object_detection-msg:<talker_1> is deprecated: use rgbd_object_detection-msg:talker_1 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <talker_1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgbd_object_detection-msg:header-val is deprecated.  Use rgbd_object_detection-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <talker_1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgbd_object_detection-msg:data-val is deprecated.  Use rgbd_object_detection-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <talker_1>) ostream)
  "Serializes a message object of type '<talker_1>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <talker_1>) istream)
  "Deserializes a message object of type '<talker_1>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<talker_1>)))
  "Returns string type for a message object of type '<talker_1>"
  "rgbd_object_detection/talker_1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'talker_1)))
  "Returns string type for a message object of type 'talker_1"
  "rgbd_object_detection/talker_1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<talker_1>)))
  "Returns md5sum for a message object of type '<talker_1>"
  "98610943e4af5bf18c39a51dd08ed69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'talker_1)))
  "Returns md5sum for a message object of type 'talker_1"
  "98610943e4af5bf18c39a51dd08ed69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<talker_1>)))
  "Returns full string definition for message of type '<talker_1>"
  (cl:format cl:nil "Header header~%int16 data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'talker_1)))
  "Returns full string definition for message of type 'talker_1"
  (cl:format cl:nil "Header header~%int16 data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <talker_1>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <talker_1>))
  "Converts a ROS message object to a list"
  (cl:list 'talker_1
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
