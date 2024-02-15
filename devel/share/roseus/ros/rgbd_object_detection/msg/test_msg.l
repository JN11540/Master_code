;; Auto-generated. Do not edit!


(when (boundp 'rgbd_object_detection::test_msg)
  (if (not (find-package "RGBD_OBJECT_DETECTION"))
    (make-package "RGBD_OBJECT_DETECTION"))
  (shadow 'test_msg (find-package "RGBD_OBJECT_DETECTION")))
(unless (find-package "RGBD_OBJECT_DETECTION::TEST_MSG")
  (make-package "RGBD_OBJECT_DETECTION::TEST_MSG"))

(in-package "ROS")
;;//! \htmlinclude test_msg.msg.html


(defclass rgbd_object_detection::test_msg
  :super ros::object
  :slots (_value _id ))

(defmethod rgbd_object_detection::test_msg
  (:init
   (&key
    ((:value __value) 0)
    ((:id __id) "")
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _id (string __id))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int16 _value
    2
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _value
       (write-word _value s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rgbd_object_detection::test_msg :md5sum-) "16fa2018fdb9139a1d30fdf240e51082")
(setf (get rgbd_object_detection::test_msg :datatype-) "rgbd_object_detection/test_msg")
(setf (get rgbd_object_detection::test_msg :definition-)
      "int16 value
string id
")



(provide :rgbd_object_detection/test_msg "16fa2018fdb9139a1d30fdf240e51082")


