;; Auto-generated. Do not edit!


(when (boundp 'rviz_teleop_commander::groupChart)
  (if (not (find-package "RVIZ_TELEOP_COMMANDER"))
    (make-package "RVIZ_TELEOP_COMMANDER"))
  (shadow 'groupChart (find-package "RVIZ_TELEOP_COMMANDER")))
(unless (find-package "RVIZ_TELEOP_COMMANDER::GROUPCHART")
  (make-package "RVIZ_TELEOP_COMMANDER::GROUPCHART"))

(in-package "ROS")
;;//! \htmlinclude groupChart.msg.html


(defclass rviz_teleop_commander::groupChart
  :super ros::object
  :slots (_numHuman _riskFactor ))

(defmethod rviz_teleop_commander::groupChart
  (:init
   (&key
    ((:numHuman __numHuman) 0)
    ((:riskFactor __riskFactor) 0.0)
    )
   (send-super :init)
   (setq _numHuman (round __numHuman))
   (setq _riskFactor (float __riskFactor))
   self)
  (:numHuman
   (&optional __numHuman)
   (if __numHuman (setq _numHuman __numHuman)) _numHuman)
  (:riskFactor
   (&optional __riskFactor)
   (if __riskFactor (setq _riskFactor __riskFactor)) _riskFactor)
  (:serialization-length
   ()
   (+
    ;; int64 _numHuman
    8
    ;; float64 _riskFactor
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _numHuman
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _numHuman (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _numHuman) (= (length (_numHuman . bv)) 2)) ;; bignum
              (write-long (ash (elt (_numHuman . bv) 0) 0) s)
              (write-long (ash (elt (_numHuman . bv) 1) -1) s))
             ((and (class _numHuman) (= (length (_numHuman . bv)) 1)) ;; big1
              (write-long (elt (_numHuman . bv) 0) s)
              (write-long (if (>= _numHuman 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _numHuman s)(write-long (if (>= _numHuman 0) 0 #xffffffff) s)))
     ;; float64 _riskFactor
       (sys::poke _riskFactor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _numHuman
#+(or :alpha :irix6 :x86_64)
      (setf _numHuman (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _numHuman (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _riskFactor
     (setq _riskFactor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rviz_teleop_commander::groupChart :md5sum-) "97d4b5d0a9eee48cf3fa2d456080f40e")
(setf (get rviz_teleop_commander::groupChart :datatype-) "rviz_teleop_commander/groupChart")
(setf (get rviz_teleop_commander::groupChart :definition-)
      "int64 numHuman
float64 riskFactor
")



(provide :rviz_teleop_commander/groupChart "97d4b5d0a9eee48cf3fa2d456080f40e")


