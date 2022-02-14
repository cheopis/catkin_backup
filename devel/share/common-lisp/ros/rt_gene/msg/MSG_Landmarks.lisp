; Auto-generated. Do not edit!


(cl:in-package rt_gene-msg)


;//! \htmlinclude MSG_Landmarks.msg.html

(cl:defclass <MSG_Landmarks> (roslisp-msg-protocol:ros-message)
  ((subject_id
    :reader subject_id
    :initarg :subject_id
    :type cl:string
    :initform "")
   (landmarks
    :reader landmarks
    :initarg :landmarks
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MSG_Landmarks (<MSG_Landmarks>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MSG_Landmarks>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MSG_Landmarks)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_gene-msg:<MSG_Landmarks> is deprecated: use rt_gene-msg:MSG_Landmarks instead.")))

(cl:ensure-generic-function 'subject_id-val :lambda-list '(m))
(cl:defmethod subject_id-val ((m <MSG_Landmarks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:subject_id-val is deprecated.  Use rt_gene-msg:subject_id instead.")
  (subject_id m))

(cl:ensure-generic-function 'landmarks-val :lambda-list '(m))
(cl:defmethod landmarks-val ((m <MSG_Landmarks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:landmarks-val is deprecated.  Use rt_gene-msg:landmarks instead.")
  (landmarks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MSG_Landmarks>) ostream)
  "Serializes a message object of type '<MSG_Landmarks>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subject_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subject_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks))))
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
   (cl:slot-value msg 'landmarks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MSG_Landmarks>) istream)
  "Deserializes a message object of type '<MSG_Landmarks>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subject_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subject_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MSG_Landmarks>)))
  "Returns string type for a message object of type '<MSG_Landmarks>"
  "rt_gene/MSG_Landmarks")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MSG_Landmarks)))
  "Returns string type for a message object of type 'MSG_Landmarks"
  "rt_gene/MSG_Landmarks")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MSG_Landmarks>)))
  "Returns md5sum for a message object of type '<MSG_Landmarks>"
  "e6e6840b2076b49500e303fc6790d231")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MSG_Landmarks)))
  "Returns md5sum for a message object of type 'MSG_Landmarks"
  "e6e6840b2076b49500e303fc6790d231")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MSG_Landmarks>)))
  "Returns full string definition for message of type '<MSG_Landmarks>"
  (cl:format cl:nil "string subject_id~%float64[] landmarks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MSG_Landmarks)))
  "Returns full string definition for message of type 'MSG_Landmarks"
  (cl:format cl:nil "string subject_id~%float64[] landmarks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MSG_Landmarks>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subject_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MSG_Landmarks>))
  "Converts a ROS message object to a list"
  (cl:list 'MSG_Landmarks
    (cl:cons ':subject_id (subject_id msg))
    (cl:cons ':landmarks (landmarks msg))
))
