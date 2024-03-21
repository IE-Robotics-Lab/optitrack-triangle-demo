; Auto-generated. Do not edit!


(cl:in-package natnet_ros_cpp-srv)


;//! \htmlinclude MarkerPoses-request.msg.html

(cl:defclass <MarkerPoses-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MarkerPoses-request (<MarkerPoses-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerPoses-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerPoses-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name natnet_ros_cpp-srv:<MarkerPoses-request> is deprecated: use natnet_ros_cpp-srv:MarkerPoses-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerPoses-request>) ostream)
  "Serializes a message object of type '<MarkerPoses-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerPoses-request>) istream)
  "Deserializes a message object of type '<MarkerPoses-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerPoses-request>)))
  "Returns string type for a service object of type '<MarkerPoses-request>"
  "natnet_ros_cpp/MarkerPosesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerPoses-request)))
  "Returns string type for a service object of type 'MarkerPoses-request"
  "natnet_ros_cpp/MarkerPosesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerPoses-request>)))
  "Returns md5sum for a message object of type '<MarkerPoses-request>"
  "c7367279fedb79f450024191cc1ecd3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerPoses-request)))
  "Returns md5sum for a message object of type 'MarkerPoses-request"
  "c7367279fedb79f450024191cc1ecd3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerPoses-request>)))
  "Returns full string definition for message of type '<MarkerPoses-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerPoses-request)))
  "Returns full string definition for message of type 'MarkerPoses-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerPoses-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerPoses-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerPoses-request
))
;//! \htmlinclude MarkerPoses-response.msg.html

(cl:defclass <MarkerPoses-response> (roslisp-msg-protocol:ros-message)
  ((num_of_markers
    :reader num_of_markers
    :initarg :num_of_markers
    :type cl:integer
    :initform 0)
   (x_position
    :reader x_position
    :initarg :x_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (y_position
    :reader y_position
    :initarg :y_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (z_position
    :reader z_position
    :initarg :z_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MarkerPoses-response (<MarkerPoses-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerPoses-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerPoses-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name natnet_ros_cpp-srv:<MarkerPoses-response> is deprecated: use natnet_ros_cpp-srv:MarkerPoses-response instead.")))

(cl:ensure-generic-function 'num_of_markers-val :lambda-list '(m))
(cl:defmethod num_of_markers-val ((m <MarkerPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader natnet_ros_cpp-srv:num_of_markers-val is deprecated.  Use natnet_ros_cpp-srv:num_of_markers instead.")
  (num_of_markers m))

(cl:ensure-generic-function 'x_position-val :lambda-list '(m))
(cl:defmethod x_position-val ((m <MarkerPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader natnet_ros_cpp-srv:x_position-val is deprecated.  Use natnet_ros_cpp-srv:x_position instead.")
  (x_position m))

(cl:ensure-generic-function 'y_position-val :lambda-list '(m))
(cl:defmethod y_position-val ((m <MarkerPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader natnet_ros_cpp-srv:y_position-val is deprecated.  Use natnet_ros_cpp-srv:y_position instead.")
  (y_position m))

(cl:ensure-generic-function 'z_position-val :lambda-list '(m))
(cl:defmethod z_position-val ((m <MarkerPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader natnet_ros_cpp-srv:z_position-val is deprecated.  Use natnet_ros_cpp-srv:z_position instead.")
  (z_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerPoses-response>) ostream)
  "Serializes a message object of type '<MarkerPoses-response>"
  (cl:let* ((signed (cl:slot-value msg 'num_of_markers)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'x_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'y_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'z_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'z_position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerPoses-response>) istream)
  "Deserializes a message object of type '<MarkerPoses-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_markers) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'z_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'z_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerPoses-response>)))
  "Returns string type for a service object of type '<MarkerPoses-response>"
  "natnet_ros_cpp/MarkerPosesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerPoses-response)))
  "Returns string type for a service object of type 'MarkerPoses-response"
  "natnet_ros_cpp/MarkerPosesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerPoses-response>)))
  "Returns md5sum for a message object of type '<MarkerPoses-response>"
  "c7367279fedb79f450024191cc1ecd3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerPoses-response)))
  "Returns md5sum for a message object of type 'MarkerPoses-response"
  "c7367279fedb79f450024191cc1ecd3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerPoses-response>)))
  "Returns full string definition for message of type '<MarkerPoses-response>"
  (cl:format cl:nil "int64 num_of_markers~%float64[] x_position~%float64[] y_position~%float64[] z_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerPoses-response)))
  "Returns full string definition for message of type 'MarkerPoses-response"
  (cl:format cl:nil "int64 num_of_markers~%float64[] x_position~%float64[] y_position~%float64[] z_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerPoses-response>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'z_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerPoses-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerPoses-response
    (cl:cons ':num_of_markers (num_of_markers msg))
    (cl:cons ':x_position (x_position msg))
    (cl:cons ':y_position (y_position msg))
    (cl:cons ':z_position (z_position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MarkerPoses)))
  'MarkerPoses-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MarkerPoses)))
  'MarkerPoses-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerPoses)))
  "Returns string type for a service object of type '<MarkerPoses>"
  "natnet_ros_cpp/MarkerPoses")