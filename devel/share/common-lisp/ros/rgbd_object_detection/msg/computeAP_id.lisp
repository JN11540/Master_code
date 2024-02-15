; Auto-generated. Do not edit!


(cl:in-package rgbd_object_detection-msg)


;//! \htmlinclude computeAP_id.msg.html

(cl:defclass <computeAP_id> (roslisp-msg-protocol:ros-message)
  ((ingredient
    :reader ingredient
    :initarg :ingredient
    :type (cl:vector rgbd_object_detection-msg:computeAP_ingredient)
   :initform (cl:make-array 0 :element-type 'rgbd_object_detection-msg:computeAP_ingredient :initial-element (cl:make-instance 'rgbd_object_detection-msg:computeAP_ingredient))))
)

(cl:defclass computeAP_id (<computeAP_id>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <computeAP_id>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'computeAP_id)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rgbd_object_detection-msg:<computeAP_id> is deprecated: use rgbd_object_detection-msg:computeAP_id instead.")))

(cl:ensure-generic-function 'ingredient-val :lambda-list '(m))
(cl:defmethod ingredient-val ((m <computeAP_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgbd_object_detection-msg:ingredient-val is deprecated.  Use rgbd_object_detection-msg:ingredient instead.")
  (ingredient m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <computeAP_id>) ostream)
  "Serializes a message object of type '<computeAP_id>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ingredient))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ingredient))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <computeAP_id>) istream)
  "Deserializes a message object of type '<computeAP_id>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ingredient) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ingredient)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rgbd_object_detection-msg:computeAP_ingredient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<computeAP_id>)))
  "Returns string type for a message object of type '<computeAP_id>"
  "rgbd_object_detection/computeAP_id")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'computeAP_id)))
  "Returns string type for a message object of type 'computeAP_id"
  "rgbd_object_detection/computeAP_id")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<computeAP_id>)))
  "Returns md5sum for a message object of type '<computeAP_id>"
  "ad8e40b02f261285e7657170912e56c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'computeAP_id)))
  "Returns md5sum for a message object of type 'computeAP_id"
  "ad8e40b02f261285e7657170912e56c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<computeAP_id>)))
  "Returns full string definition for message of type '<computeAP_id>"
  (cl:format cl:nil "computeAP_ingredient[] ingredient~%================================================================================~%MSG: rgbd_object_detection/computeAP_ingredient~%float64 iou~%float64 confidence~%bool classification~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'computeAP_id)))
  "Returns full string definition for message of type 'computeAP_id"
  (cl:format cl:nil "computeAP_ingredient[] ingredient~%================================================================================~%MSG: rgbd_object_detection/computeAP_ingredient~%float64 iou~%float64 confidence~%bool classification~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <computeAP_id>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ingredient) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <computeAP_id>))
  "Converts a ROS message object to a list"
  (cl:list 'computeAP_id
    (cl:cons ':ingredient (ingredient msg))
))
