;; Auto-generated. Do not edit!


(when (boundp 'rt_gene::MSG_GazeList)
  (if (not (find-package "RT_GENE"))
    (make-package "RT_GENE"))
  (shadow 'MSG_GazeList (find-package "RT_GENE")))
(unless (find-package "RT_GENE::MSG_GAZELIST")
  (make-package "RT_GENE::MSG_GAZELIST"))

(in-package "ROS")
;;//! \htmlinclude MSG_GazeList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rt_gene::MSG_GazeList
  :super ros::object
  :slots (_header _subjects ))

(defmethod rt_gene::MSG_GazeList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:subjects __subjects) (let (r) (dotimes (i 0) (push (instance rt_gene::MSG_Gaze :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _subjects __subjects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:subjects
   (&rest __subjects)
   (if (keywordp (car __subjects))
       (send* _subjects __subjects)
     (progn
       (if __subjects (setq _subjects (car __subjects)))
       _subjects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rt_gene/MSG_Gaze[] _subjects
    (apply #'+ (send-all _subjects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rt_gene/MSG_Gaze[] _subjects
     (write-long (length _subjects) s)
     (dolist (elem _subjects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rt_gene/MSG_Gaze[] _subjects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _subjects (let (r) (dotimes (i n) (push (instance rt_gene::MSG_Gaze :init) r)) r))
     (dolist (elem- _subjects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rt_gene::MSG_GazeList :md5sum-) "1fd1b4a8dea2437b6a97a0ca1b6ec557")
(setf (get rt_gene::MSG_GazeList :datatype-) "rt_gene/MSG_GazeList")
(setf (get rt_gene::MSG_GazeList :definition-)
      "Header header
MSG_Gaze[] subjects

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
MSG: rt_gene/MSG_Gaze
string subject_id
float64 phi
float64 theta

")



(provide :rt_gene/MSG_GazeList "1fd1b4a8dea2437b6a97a0ca1b6ec557")


