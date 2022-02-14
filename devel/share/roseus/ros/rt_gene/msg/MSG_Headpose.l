;; Auto-generated. Do not edit!


(when (boundp 'rt_gene::MSG_Headpose)
  (if (not (find-package "RT_GENE"))
    (make-package "RT_GENE"))
  (shadow 'MSG_Headpose (find-package "RT_GENE")))
(unless (find-package "RT_GENE::MSG_HEADPOSE")
  (make-package "RT_GENE::MSG_HEADPOSE"))

(in-package "ROS")
;;//! \htmlinclude MSG_Headpose.msg.html


(defclass rt_gene::MSG_Headpose
  :super ros::object
  :slots (_subject_id _roll _pitch _yaw _x _y _z ))

(defmethod rt_gene::MSG_Headpose
  (:init
   (&key
    ((:subject_id __subject_id) "")
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _subject_id (string __subject_id))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:subject_id
   (&optional __subject_id)
   (if __subject_id (setq _subject_id __subject_id)) _subject_id)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; string _subject_id
    4 (length _subject_id)
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subject_id
       (write-long (length _subject_id) s) (princ _subject_id s)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subject_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rt_gene::MSG_Headpose :md5sum-) "4a67796c87e69b7ea1ff5e7bb87e7034")
(setf (get rt_gene::MSG_Headpose :datatype-) "rt_gene/MSG_Headpose")
(setf (get rt_gene::MSG_Headpose :definition-)
      "string subject_id
float64 roll
float64 pitch
float64 yaw
float64 x
float64 y
float64 z

")



(provide :rt_gene/MSG_Headpose "4a67796c87e69b7ea1ff5e7bb87e7034")


