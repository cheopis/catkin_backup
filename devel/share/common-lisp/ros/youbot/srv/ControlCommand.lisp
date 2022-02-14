; Auto-generated. Do not edit!


(cl:in-package youbot-srv)


;//! \htmlinclude ControlCommand-request.msg.html

(cl:defclass <ControlCommand-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass ControlCommand-request (<ControlCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name youbot-srv:<ControlCommand-request> is deprecated: use youbot-srv:ControlCommand-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ControlCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot-srv:x-val is deprecated.  Use youbot-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ControlCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot-srv:y-val is deprecated.  Use youbot-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommand-request>) ostream)
  "Serializes a message object of type '<ControlCommand-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommand-request>) istream)
  "Deserializes a message object of type '<ControlCommand-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommand-request>)))
  "Returns string type for a service object of type '<ControlCommand-request>"
  "youbot/ControlCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommand-request)))
  "Returns string type for a service object of type 'ControlCommand-request"
  "youbot/ControlCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommand-request>)))
  "Returns md5sum for a message object of type '<ControlCommand-request>"
  "63fcde9b0992e05088e19b97775995fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommand-request)))
  "Returns md5sum for a message object of type 'ControlCommand-request"
  "63fcde9b0992e05088e19b97775995fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommand-request>)))
  "Returns full string definition for message of type '<ControlCommand-request>"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommand-request)))
  "Returns full string definition for message of type 'ControlCommand-request"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommand-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommand-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude ControlCommand-response.msg.html

(cl:defclass <ControlCommand-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ControlCommand-response (<ControlCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name youbot-srv:<ControlCommand-response> is deprecated: use youbot-srv:ControlCommand-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <ControlCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot-srv:response-val is deprecated.  Use youbot-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommand-response>) ostream)
  "Serializes a message object of type '<ControlCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommand-response>) istream)
  "Deserializes a message object of type '<ControlCommand-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommand-response>)))
  "Returns string type for a service object of type '<ControlCommand-response>"
  "youbot/ControlCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommand-response)))
  "Returns string type for a service object of type 'ControlCommand-response"
  "youbot/ControlCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommand-response>)))
  "Returns md5sum for a message object of type '<ControlCommand-response>"
  "63fcde9b0992e05088e19b97775995fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommand-response)))
  "Returns md5sum for a message object of type 'ControlCommand-response"
  "63fcde9b0992e05088e19b97775995fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommand-response>)))
  "Returns full string definition for message of type '<ControlCommand-response>"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommand-response)))
  "Returns full string definition for message of type 'ControlCommand-response"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommand-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommand-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ControlCommand)))
  'ControlCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ControlCommand)))
  'ControlCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommand)))
  "Returns string type for a service object of type '<ControlCommand>"
  "youbot/ControlCommand")