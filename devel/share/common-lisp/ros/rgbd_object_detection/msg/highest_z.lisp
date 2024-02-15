; Auto-generated. Do not edit!


(cl:in-package rgbd_object_detection-msg)


;//! \htmlinclude highest_z.msg.html

(cl:defclass <highest_z> (roslisp-msg-protocol:ros-message)
  ((high_z
    :reader high_z
    :initarg :high_z
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass highest_z (<highest_z>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <highest_z>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'highest_z)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rgbd_object_detection-msg:<highest_z> is deprecated: use rgbd_object_detection-msg:highest_z instead.")))

(cl:ensure-generic-function 'high_z-val :lambda-list '(m))
(cl:defmethod high_z-val ((m <highest_z>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgbd_object_detection-msg:high_z-val is deprecated.  Use rgbd_object_detection-msg:high_z instead.")
  (high_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <highest_z>) ostream)
  "Serializes a message object of type '<highest_z>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'high_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'high_z))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <highest_z>) istream)
  "Deserializes a message object of type '<highest_z>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'high_z) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'high_z)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<highest_z>)))
  "Returns string type for a message object of type '<highest_z>"
  "rgbd_object_detection/highest_z")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'highest_z)))
  "Returns string type for a message object of type 'highest_z"
  "rgbd_object_detection/highest_z")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<highest_z>)))
  "Returns md5sum for a message object of type '<highest_z>"
  "1fa59990232b2dddf2b0b21950ccf9db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'highest_z)))
  "Returns md5sum for a message object of type 'highest_z"
  "1fa59990232b2dddf2b0b21950ccf9db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<highest_z>)))
  "Returns full string definition for message of type '<highest_z>"
  (cl:format cl:nil "float64[] high_z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'highest_z)))
  "Returns full string definition for message of type 'highest_z"
  (cl:format cl:nil "float64[] high_z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <highest_z>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'high_z) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <highest_z>))
  "Converts a ROS message object to a list"
  (cl:list 'highest_z
    (cl:cons ':high_z (high_z msg))
))
