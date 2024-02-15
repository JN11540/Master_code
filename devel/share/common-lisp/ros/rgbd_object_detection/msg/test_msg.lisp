; Auto-generated. Do not edit!


(cl:in-package rgbd_object_detection-msg)


;//! \htmlinclude test_msg.msg.html

(cl:defclass <test_msg> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass test_msg (<test_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rgbd_object_detection-msg:<test_msg> is deprecated: use rgbd_object_detection-msg:test_msg instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <test_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgbd_object_detection-msg:value-val is deprecated.  Use rgbd_object_detection-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <test_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgbd_object_detection-msg:id-val is deprecated.  Use rgbd_object_detection-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test_msg>) ostream)
  "Serializes a message object of type '<test_msg>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test_msg>) istream)
  "Deserializes a message object of type '<test_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test_msg>)))
  "Returns string type for a message object of type '<test_msg>"
  "rgbd_object_detection/test_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_msg)))
  "Returns string type for a message object of type 'test_msg"
  "rgbd_object_detection/test_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test_msg>)))
  "Returns md5sum for a message object of type '<test_msg>"
  "16fa2018fdb9139a1d30fdf240e51082")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test_msg)))
  "Returns md5sum for a message object of type 'test_msg"
  "16fa2018fdb9139a1d30fdf240e51082")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test_msg>)))
  "Returns full string definition for message of type '<test_msg>"
  (cl:format cl:nil "int16 value~%string id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test_msg)))
  "Returns full string definition for message of type 'test_msg"
  (cl:format cl:nil "int16 value~%string id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test_msg>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'test_msg
    (cl:cons ':value (value msg))
    (cl:cons ':id (id msg))
))
