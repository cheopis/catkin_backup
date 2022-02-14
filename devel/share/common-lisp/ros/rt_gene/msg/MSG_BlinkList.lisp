; Auto-generated. Do not edit!


(cl:in-package rt_gene-msg)


;//! \htmlinclude MSG_BlinkList.msg.html

(cl:defclass <MSG_BlinkList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (subjects
    :reader subjects
    :initarg :subjects
    :type (cl:vector rt_gene-msg:MSG_Blink)
   :initform (cl:make-array 0 :element-type 'rt_gene-msg:MSG_Blink :initial-element (cl:make-instance 'rt_gene-msg:MSG_Blink))))
)

(cl:defclass MSG_BlinkList (<MSG_BlinkList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MSG_BlinkList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MSG_BlinkList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_gene-msg:<MSG_BlinkList> is deprecated: use rt_gene-msg:MSG_BlinkList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MSG_BlinkList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:header-val is deprecated.  Use rt_gene-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'subjects-val :lambda-list '(m))
(cl:defmethod subjects-val ((m <MSG_BlinkList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:subjects-val is deprecated.  Use rt_gene-msg:subjects instead.")
  (subjects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MSG_BlinkList>) ostream)
  "Serializes a message object of type '<MSG_BlinkList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subjects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'subjects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MSG_BlinkList>) istream)
  "Deserializes a message object of type '<MSG_BlinkList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subjects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subjects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rt_gene-msg:MSG_Blink))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MSG_BlinkList>)))
  "Returns string type for a message object of type '<MSG_BlinkList>"
  "rt_gene/MSG_BlinkList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MSG_BlinkList)))
  "Returns string type for a message object of type 'MSG_BlinkList"
  "rt_gene/MSG_BlinkList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MSG_BlinkList>)))
  "Returns md5sum for a message object of type '<MSG_BlinkList>"
  "f99a9f8c2658e27d518518e54fb874d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MSG_BlinkList)))
  "Returns md5sum for a message object of type 'MSG_BlinkList"
  "f99a9f8c2658e27d518518e54fb874d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MSG_BlinkList>)))
  "Returns full string definition for message of type '<MSG_BlinkList>"
  (cl:format cl:nil "Header header~%MSG_Blink[] subjects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rt_gene/MSG_Blink~%string subject_id~%bool blink~%float64 probability~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MSG_BlinkList)))
  "Returns full string definition for message of type 'MSG_BlinkList"
  (cl:format cl:nil "Header header~%MSG_Blink[] subjects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rt_gene/MSG_Blink~%string subject_id~%bool blink~%float64 probability~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MSG_BlinkList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subjects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MSG_BlinkList>))
  "Converts a ROS message object to a list"
  (cl:list 'MSG_BlinkList
    (cl:cons ':header (header msg))
    (cl:cons ':subjects (subjects msg))
))
