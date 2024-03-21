
(cl:in-package :asdf)

(defsystem "natnet_ros_cpp-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MarkerPoses" :depends-on ("_package_MarkerPoses"))
    (:file "_package_MarkerPoses" :depends-on ("_package"))
  ))