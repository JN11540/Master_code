;; Auto-generated. Do not edit!


(when (boundp 'rgbd_object_detection::highest_z)
  (if (not (find-package "RGBD_OBJECT_DETECTION"))
    (make-package "RGBD_OBJECT_DETECTION"))
  (shadow 'highest_z (find-package "RGBD_OBJECT_DETECTION")))
(unless (find-package "RGBD_OBJECT_DETECTION::HIGHEST_Z")
  (make-package "RGBD_OBJECT_DETECTION::HIGHEST_Z"))

(in-package "ROS")
;;//! \htmlinclude highest_z.msg.html


(defclass rgbd_object_detection::highest_z
  :super ros::object
  :slots (_high_z ))

(defmethod rgbd_object_detection::highest_z
  (:init
   (&key
    ((:high_z __high_z) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _high_z __high_z)
   self)
  (:high_z
   (&optional __high_z)
   (if __high_z (setq _high_z __high_z)) _high_z)
  (:serialization-length
   ()
   (+
    ;; float64[] _high_z
    (* 8    (length _high_z)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _high_z
     (write-long (length _high_z) s)
     (dotimes (i (length _high_z))
       (sys::poke (elt _high_z i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _high_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _high_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _high_z i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get rgbd_object_detection::highest_z :md5sum-) "1fa59990232b2dddf2b0b21950ccf9db")
(setf (get rgbd_object_detection::highest_z :datatype-) "rgbd_object_detection/highest_z")
(setf (get rgbd_object_detection::highest_z :definition-)
      "float64[] high_z
")



(provide :rgbd_object_detection/highest_z "1fa59990232b2dddf2b0b21950ccf9db")


