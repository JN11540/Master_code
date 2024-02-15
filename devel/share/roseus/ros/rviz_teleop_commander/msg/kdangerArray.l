;; Auto-generated. Do not edit!


(when (boundp 'rviz_teleop_commander::kdangerArray)
  (if (not (find-package "RVIZ_TELEOP_COMMANDER"))
    (make-package "RVIZ_TELEOP_COMMANDER"))
  (shadow 'kdangerArray (find-package "RVIZ_TELEOP_COMMANDER")))
(unless (find-package "RVIZ_TELEOP_COMMANDER::KDANGERARRAY")
  (make-package "RVIZ_TELEOP_COMMANDER::KDANGERARRAY"))

(in-package "ROS")
;;//! \htmlinclude kdangerArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rviz_teleop_commander::kdangerArray
  :super ros::object
  :slots (_header _items ))

(defmethod rviz_teleop_commander::kdangerArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:items __items) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _items __items)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:items
   (&rest __items)
   (if (keywordp (car __items))
       (send* _items __items)
     (progn
       (if __items (setq _items (car __items)))
       _items)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rviz_teleop_commander/kdanger[] _items
    (apply #'+ (send-all _items :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rviz_teleop_commander/kdanger[] _items
     (write-long (length _items) s)
     (dolist (elem _items)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rviz_teleop_commander/kdanger[] _items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items (let (r) (dotimes (i n) (push (instance rviz_teleop_commander::kdanger :init) r)) r))
     (dolist (elem- _items)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rviz_teleop_commander::kdangerArray :md5sum-) "e8821c94651dec6ba6e5aa740d245c31")
(setf (get rviz_teleop_commander::kdangerArray :datatype-) "rviz_teleop_commander/kdangerArray")
(setf (get rviz_teleop_commander::kdangerArray :definition-)
      "Header header

kdanger[] items

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: rviz_teleop_commander/kdanger
int64 k
int64[] ids
")



(provide :rviz_teleop_commander/kdangerArray "e8821c94651dec6ba6e5aa740d245c31")


