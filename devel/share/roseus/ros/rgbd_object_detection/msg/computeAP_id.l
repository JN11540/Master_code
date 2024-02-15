;; Auto-generated. Do not edit!


(when (boundp 'rgbd_object_detection::computeAP_id)
  (if (not (find-package "RGBD_OBJECT_DETECTION"))
    (make-package "RGBD_OBJECT_DETECTION"))
  (shadow 'computeAP_id (find-package "RGBD_OBJECT_DETECTION")))
(unless (find-package "RGBD_OBJECT_DETECTION::COMPUTEAP_ID")
  (make-package "RGBD_OBJECT_DETECTION::COMPUTEAP_ID"))

(in-package "ROS")
;;//! \htmlinclude computeAP_id.msg.html


(defclass rgbd_object_detection::computeAP_id
  :super ros::object
  :slots (_ingredient ))

(defmethod rgbd_object_detection::computeAP_id
  (:init
   (&key
    ((:ingredient __ingredient) ())
    )
   (send-super :init)
   (setq _ingredient __ingredient)
   self)
  (:ingredient
   (&rest __ingredient)
   (if (keywordp (car __ingredient))
       (send* _ingredient __ingredient)
     (progn
       (if __ingredient (setq _ingredient (car __ingredient)))
       _ingredient)))
  (:serialization-length
   ()
   (+
    ;; rgbd_object_detection/computeAP_ingredient[] _ingredient
    (apply #'+ (send-all _ingredient :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rgbd_object_detection/computeAP_ingredient[] _ingredient
     (write-long (length _ingredient) s)
     (dolist (elem _ingredient)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rgbd_object_detection/computeAP_ingredient[] _ingredient
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ingredient (let (r) (dotimes (i n) (push (instance rgbd_object_detection::computeAP_ingredient :init) r)) r))
     (dolist (elem- _ingredient)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rgbd_object_detection::computeAP_id :md5sum-) "ad8e40b02f261285e7657170912e56c0")
(setf (get rgbd_object_detection::computeAP_id :datatype-) "rgbd_object_detection/computeAP_id")
(setf (get rgbd_object_detection::computeAP_id :definition-)
      "computeAP_ingredient[] ingredient
================================================================================
MSG: rgbd_object_detection/computeAP_ingredient
float64 iou
float64 confidence
bool classification
")



(provide :rgbd_object_detection/computeAP_id "ad8e40b02f261285e7657170912e56c0")


