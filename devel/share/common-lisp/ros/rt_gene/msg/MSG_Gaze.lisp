; Auto-generated. Do not edit!


(cl:in-package rt_gene-msg)


;//! \htmlinclude MSG_Gaze.msg.html

(cl:defclass <MSG_Gaze> (roslisp-msg-protocol:ros-message)
  ((subject_id
    :reader subject_id
    :initarg :subject_id
    :type cl:string
    :initform "")
   (phi
    :reader phi
    :initarg :phi
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass MSG_Gaze (<MSG_Gaze>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MSG_Gaze>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MSG_Gaze)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_gene-msg:<MSG_Gaze> is deprecated: use rt_gene-msg:MSG_Gaze instead.")))

(cl:ensure-generic-function 'subject_id-val :lambda-list '(m))
(cl:defmethod subject_id-val ((m <MSG_Gaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:subject_id-val is deprecated.  Use rt_gene-msg:subject_id instead.")
  (subject_id m))

(cl:ensure-generic-function 'phi-val :lambda-list '(m))
(cl:defmethod phi-val ((m <MSG_Gaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:phi-val is deprecated.  Use rt_gene-msg:phi instead.")
  (phi m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <MSG_Gaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:theta-val is deprecated.  Use rt_gene-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MSG_Gaze>) ostream)
  "Serializes a message object of type '<MSG_Gaze>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subject_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subject_id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'phi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MSG_Gaze>) istream)
  "Deserializes a message object of type '<MSG_Gaze>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subject_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subject_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MSG_Gaze>)))
  "Returns string type for a message object of type '<MSG_Gaze>"
  "rt_gene/MSG_Gaze")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MSG_Gaze)))
  "Returns string type for a message object of type 'MSG_Gaze"
  "rt_gene/MSG_Gaze")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MSG_Gaze>)))
  "Returns md5sum for a message object of type '<MSG_Gaze>"
  "d7b3cda7766f7ea47f1ac64e0a9b76eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MSG_Gaze)))
  "Returns md5sum for a message object of type 'MSG_Gaze"
  "d7b3cda7766f7ea47f1ac64e0a9b76eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MSG_Gaze>)))
  "Returns full string definition for message of type '<MSG_Gaze>"
  (cl:format cl:nil "string subject_id~%float64 phi~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MSG_Gaze)))
  "Returns full string definition for message of type 'MSG_Gaze"
  (cl:format cl:nil "string subject_id~%float64 phi~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MSG_Gaze>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subject_id))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MSG_Gaze>))
  "Converts a ROS message object to a list"
  (cl:list 'MSG_Gaze
    (cl:cons ':subject_id (subject_id msg))
    (cl:cons ':phi (phi msg))
    (cl:cons ':theta (theta msg))
))
