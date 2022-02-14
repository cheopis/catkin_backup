; Auto-generated. Do not edit!


(cl:in-package rt_gene-msg)


;//! \htmlinclude MSG_Blink.msg.html

(cl:defclass <MSG_Blink> (roslisp-msg-protocol:ros-message)
  ((subject_id
    :reader subject_id
    :initarg :subject_id
    :type cl:string
    :initform "")
   (blink
    :reader blink
    :initarg :blink
    :type cl:boolean
    :initform cl:nil)
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0))
)

(cl:defclass MSG_Blink (<MSG_Blink>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MSG_Blink>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MSG_Blink)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_gene-msg:<MSG_Blink> is deprecated: use rt_gene-msg:MSG_Blink instead.")))

(cl:ensure-generic-function 'subject_id-val :lambda-list '(m))
(cl:defmethod subject_id-val ((m <MSG_Blink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:subject_id-val is deprecated.  Use rt_gene-msg:subject_id instead.")
  (subject_id m))

(cl:ensure-generic-function 'blink-val :lambda-list '(m))
(cl:defmethod blink-val ((m <MSG_Blink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:blink-val is deprecated.  Use rt_gene-msg:blink instead.")
  (blink m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <MSG_Blink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:probability-val is deprecated.  Use rt_gene-msg:probability instead.")
  (probability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MSG_Blink>) ostream)
  "Serializes a message object of type '<MSG_Blink>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subject_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subject_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'blink) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MSG_Blink>) istream)
  "Deserializes a message object of type '<MSG_Blink>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subject_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subject_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'blink) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MSG_Blink>)))
  "Returns string type for a message object of type '<MSG_Blink>"
  "rt_gene/MSG_Blink")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MSG_Blink)))
  "Returns string type for a message object of type 'MSG_Blink"
  "rt_gene/MSG_Blink")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MSG_Blink>)))
  "Returns md5sum for a message object of type '<MSG_Blink>"
  "aa03186403fe21e492d9b7fd51b80207")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MSG_Blink)))
  "Returns md5sum for a message object of type 'MSG_Blink"
  "aa03186403fe21e492d9b7fd51b80207")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MSG_Blink>)))
  "Returns full string definition for message of type '<MSG_Blink>"
  (cl:format cl:nil "string subject_id~%bool blink~%float64 probability~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MSG_Blink)))
  "Returns full string definition for message of type 'MSG_Blink"
  (cl:format cl:nil "string subject_id~%bool blink~%float64 probability~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MSG_Blink>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subject_id))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MSG_Blink>))
  "Converts a ROS message object to a list"
  (cl:list 'MSG_Blink
    (cl:cons ':subject_id (subject_id msg))
    (cl:cons ':blink (blink msg))
    (cl:cons ':probability (probability msg))
))
