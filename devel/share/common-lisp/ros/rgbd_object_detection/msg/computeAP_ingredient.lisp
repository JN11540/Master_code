; Auto-generated. Do not edit!


(cl:in-package rgbd_object_detection-msg)


;//! \htmlinclude computeAP_ingredient.msg.html

(cl:defclass <computeAP_ingredient> (roslisp-msg-protocol:ros-message)
  ((iou
    :reader iou
    :initarg :iou
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (classification
    :reader classification
    :initarg :classification
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass computeAP_ingredient (<computeAP_ingredient>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <computeAP_ingredient>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'computeAP_ingredient)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rgbd_object_detection-msg:<computeAP_ingredient> is deprecated: use rgbd_object_detection-msg:computeAP_ingredient instead.")))

(cl:ensure-generic-function 'iou-val :lambda-list '(m))
(cl:defmethod iou-val ((m <computeAP_ingredient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgbd_object_detection-msg:iou-val is deprecated.  Use rgbd_object_detection-msg:iou instead.")
  (iou m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <computeAP_ingredient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgbd_object_detection-msg:confidence-val is deprecated.  Use rgbd_object_detection-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'classification-val :lambda-list '(m))
(cl:defmethod classification-val ((m <computeAP_ingredient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgbd_object_detection-msg:classification-val is deprecated.  Use rgbd_object_detection-msg:classification instead.")
  (classification m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <computeAP_ingredient>) ostream)
  "Serializes a message object of type '<computeAP_ingredient>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'iou))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'classification) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <computeAP_ingredient>) istream)
  "Deserializes a message object of type '<computeAP_ingredient>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iou) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'classification) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<computeAP_ingredient>)))
  "Returns string type for a message object of type '<computeAP_ingredient>"
  "rgbd_object_detection/computeAP_ingredient")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'computeAP_ingredient)))
  "Returns string type for a message object of type 'computeAP_ingredient"
  "rgbd_object_detection/computeAP_ingredient")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<computeAP_ingredient>)))
  "Returns md5sum for a message object of type '<computeAP_ingredient>"
  "5dbd6052d8bab1fac1b2de3c8bfb4d47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'computeAP_ingredient)))
  "Returns md5sum for a message object of type 'computeAP_ingredient"
  "5dbd6052d8bab1fac1b2de3c8bfb4d47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<computeAP_ingredient>)))
  "Returns full string definition for message of type '<computeAP_ingredient>"
  (cl:format cl:nil "float64 iou~%float64 confidence~%bool classification~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'computeAP_ingredient)))
  "Returns full string definition for message of type 'computeAP_ingredient"
  (cl:format cl:nil "float64 iou~%float64 confidence~%bool classification~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <computeAP_ingredient>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <computeAP_ingredient>))
  "Converts a ROS message object to a list"
  (cl:list 'computeAP_ingredient
    (cl:cons ':iou (iou msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':classification (classification msg))
))
