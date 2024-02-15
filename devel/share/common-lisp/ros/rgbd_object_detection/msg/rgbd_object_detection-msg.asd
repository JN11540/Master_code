
(cl:in-package :asdf)

(defsystem "rgbd_object_detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
               :visualization_msgs-msg
)
  :components ((:file "_package")
    (:file "AllObjectMarker" :depends-on ("_package_AllObjectMarker"))
    (:file "_package_AllObjectMarker" :depends-on ("_package"))
    (:file "MaskrcnnResult" :depends-on ("_package_MaskrcnnResult"))
    (:file "_package_MaskrcnnResult" :depends-on ("_package"))
    (:file "OneObjectMarker" :depends-on ("_package_OneObjectMarker"))
    (:file "_package_OneObjectMarker" :depends-on ("_package"))
    (:file "computeAP_id" :depends-on ("_package_computeAP_id"))
    (:file "_package_computeAP_id" :depends-on ("_package"))
    (:file "computeAP_ingredient" :depends-on ("_package_computeAP_ingredient"))
    (:file "_package_computeAP_ingredient" :depends-on ("_package"))
    (:file "highest_z" :depends-on ("_package_highest_z"))
    (:file "_package_highest_z" :depends-on ("_package"))
    (:file "talker" :depends-on ("_package_talker"))
    (:file "_package_talker" :depends-on ("_package"))
    (:file "talker_1" :depends-on ("_package_talker_1"))
    (:file "_package_talker_1" :depends-on ("_package"))
    (:file "test_msg" :depends-on ("_package_test_msg"))
    (:file "_package_test_msg" :depends-on ("_package"))
  ))