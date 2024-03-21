;; Auto-generated. Do not edit!


(when (boundp 'natnet_ros_cpp::MarkerPoses)
  (if (not (find-package "NATNET_ROS_CPP"))
    (make-package "NATNET_ROS_CPP"))
  (shadow 'MarkerPoses (find-package "NATNET_ROS_CPP")))
(unless (find-package "NATNET_ROS_CPP::MARKERPOSES")
  (make-package "NATNET_ROS_CPP::MARKERPOSES"))
(unless (find-package "NATNET_ROS_CPP::MARKERPOSESREQUEST")
  (make-package "NATNET_ROS_CPP::MARKERPOSESREQUEST"))
(unless (find-package "NATNET_ROS_CPP::MARKERPOSESRESPONSE")
  (make-package "NATNET_ROS_CPP::MARKERPOSESRESPONSE"))

(in-package "ROS")





(defclass natnet_ros_cpp::MarkerPosesRequest
  :super ros::object
  :slots ())

(defmethod natnet_ros_cpp::MarkerPosesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass natnet_ros_cpp::MarkerPosesResponse
  :super ros::object
  :slots (_num_of_markers _x_position _y_position _z_position ))

(defmethod natnet_ros_cpp::MarkerPosesResponse
  (:init
   (&key
    ((:num_of_markers __num_of_markers) 0)
    ((:x_position __x_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_position __y_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z_position __z_position) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _num_of_markers (round __num_of_markers))
   (setq _x_position __x_position)
   (setq _y_position __y_position)
   (setq _z_position __z_position)
   self)
  (:num_of_markers
   (&optional __num_of_markers)
   (if __num_of_markers (setq _num_of_markers __num_of_markers)) _num_of_markers)
  (:x_position
   (&optional __x_position)
   (if __x_position (setq _x_position __x_position)) _x_position)
  (:y_position
   (&optional __y_position)
   (if __y_position (setq _y_position __y_position)) _y_position)
  (:z_position
   (&optional __z_position)
   (if __z_position (setq _z_position __z_position)) _z_position)
  (:serialization-length
   ()
   (+
    ;; int64 _num_of_markers
    8
    ;; float64[] _x_position
    (* 8    (length _x_position)) 4
    ;; float64[] _y_position
    (* 8    (length _y_position)) 4
    ;; float64[] _z_position
    (* 8    (length _z_position)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num_of_markers
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num_of_markers (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num_of_markers) (= (length (_num_of_markers . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num_of_markers . bv) 0) 0) s)
              (write-long (ash (elt (_num_of_markers . bv) 1) -1) s))
             ((and (class _num_of_markers) (= (length (_num_of_markers . bv)) 1)) ;; big1
              (write-long (elt (_num_of_markers . bv) 0) s)
              (write-long (if (>= _num_of_markers 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num_of_markers s)(write-long (if (>= _num_of_markers 0) 0 #xffffffff) s)))
     ;; float64[] _x_position
     (write-long (length _x_position) s)
     (dotimes (i (length _x_position))
       (sys::poke (elt _x_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y_position
     (write-long (length _y_position) s)
     (dotimes (i (length _y_position))
       (sys::poke (elt _y_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _z_position
     (write-long (length _z_position) s)
     (dotimes (i (length _z_position))
       (sys::poke (elt _z_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num_of_markers
#+(or :alpha :irix6 :x86_64)
      (setf _num_of_markers (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num_of_markers (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64[] _x_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _z_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass natnet_ros_cpp::MarkerPoses
  :super ros::object
  :slots ())

(setf (get natnet_ros_cpp::MarkerPoses :md5sum-) "c7367279fedb79f450024191cc1ecd3e")
(setf (get natnet_ros_cpp::MarkerPoses :datatype-) "natnet_ros_cpp/MarkerPoses")
(setf (get natnet_ros_cpp::MarkerPoses :request) natnet_ros_cpp::MarkerPosesRequest)
(setf (get natnet_ros_cpp::MarkerPoses :response) natnet_ros_cpp::MarkerPosesResponse)

(defmethod natnet_ros_cpp::MarkerPosesRequest
  (:response () (instance natnet_ros_cpp::MarkerPosesResponse :init)))

(setf (get natnet_ros_cpp::MarkerPosesRequest :md5sum-) "c7367279fedb79f450024191cc1ecd3e")
(setf (get natnet_ros_cpp::MarkerPosesRequest :datatype-) "natnet_ros_cpp/MarkerPosesRequest")
(setf (get natnet_ros_cpp::MarkerPosesRequest :definition-)
      "---
int64 num_of_markers
float64[] x_position
float64[] y_position
float64[] z_position
")

(setf (get natnet_ros_cpp::MarkerPosesResponse :md5sum-) "c7367279fedb79f450024191cc1ecd3e")
(setf (get natnet_ros_cpp::MarkerPosesResponse :datatype-) "natnet_ros_cpp/MarkerPosesResponse")
(setf (get natnet_ros_cpp::MarkerPosesResponse :definition-)
      "---
int64 num_of_markers
float64[] x_position
float64[] y_position
float64[] z_position
")



(provide :natnet_ros_cpp/MarkerPoses "c7367279fedb79f450024191cc1ecd3e")


