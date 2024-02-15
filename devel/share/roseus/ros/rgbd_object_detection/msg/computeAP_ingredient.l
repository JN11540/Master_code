;; Auto-generated. Do not edit!


(when (boundp 'rgbd_object_detection::computeAP_ingredient)
  (if (not (find-package "RGBD_OBJECT_DETECTION"))
    (make-package "RGBD_OBJECT_DETECTION"))
  (shadow 'computeAP_ingredient (find-package "RGBD_OBJECT_DETECTION")))
(unless (find-package "RGBD_OBJECT_DETECTION::COMPUTEAP_INGREDIENT")
  (make-package "RGBD_OBJECT_DETECTION::COMPUTEAP_INGREDIENT"))

(in-package "ROS")
;;//! \htmlinclude computeAP_ingredient.msg.html


(defclass rgbd_object_detection::computeAP_ingredient
  :super ros::object
  :slots (_iou _confidence _classification ))

(defmethod rgbd_object_detection::computeAP_ingredient
  (:init
   (&key
    ((:iou __iou) 0.0)
    ((:confidence __confidence) 0.0)
    ((:classification __classification) nil)
    )
   (send-super :init)
   (setq _iou (float __iou))
   (setq _confidence (float __confidence))
   (setq _classification __classification)
   self)
  (:iou
   (&optional __iou)
   (if __iou (setq _iou __iou)) _iou)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:classification
   (&optional (__classification :null))
   (if (not (eq __classification :null)) (setq _classification __classification)) _classification)
  (:serialization-length
   ()
   (+
    ;; float64 _iou
    8
    ;; float64 _confidence
    8
    ;; bool _classification
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _iou
       (sys::poke _iou (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _classification
       (if _classification (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _iou
     (setq _iou (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _classification
     (setq _classification (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rgbd_object_detection::computeAP_ingredient :md5sum-) "5dbd6052d8bab1fac1b2de3c8bfb4d47")
(setf (get rgbd_object_detection::computeAP_ingredient :datatype-) "rgbd_object_detection/computeAP_ingredient")
(setf (get rgbd_object_detection::computeAP_ingredient :definition-)
      "float64 iou
float64 confidence
bool classification
")



(provide :rgbd_object_detection/computeAP_ingredient "5dbd6052d8bab1fac1b2de3c8bfb4d47")


