;; Auto-generated. Do not edit!


(when (boundp 'rt_gene::MSG_Gaze)
  (if (not (find-package "RT_GENE"))
    (make-package "RT_GENE"))
  (shadow 'MSG_Gaze (find-package "RT_GENE")))
(unless (find-package "RT_GENE::MSG_GAZE")
  (make-package "RT_GENE::MSG_GAZE"))

(in-package "ROS")
;;//! \htmlinclude MSG_Gaze.msg.html


(defclass rt_gene::MSG_Gaze
  :super ros::object
  :slots (_subject_id _phi _theta ))

(defmethod rt_gene::MSG_Gaze
  (:init
   (&key
    ((:subject_id __subject_id) "")
    ((:phi __phi) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _subject_id (string __subject_id))
   (setq _phi (float __phi))
   (setq _theta (float __theta))
   self)
  (:subject_id
   (&optional __subject_id)
   (if __subject_id (setq _subject_id __subject_id)) _subject_id)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; string _subject_id
    4 (length _subject_id)
    ;; float64 _phi
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subject_id
       (write-long (length _subject_id) s) (princ _subject_id s)
     ;; float64 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subject_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _phi
     (setq _phi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rt_gene::MSG_Gaze :md5sum-) "d7b3cda7766f7ea47f1ac64e0a9b76eb")
(setf (get rt_gene::MSG_Gaze :datatype-) "rt_gene/MSG_Gaze")
(setf (get rt_gene::MSG_Gaze :definition-)
      "string subject_id
float64 phi
float64 theta

")



(provide :rt_gene/MSG_Gaze "d7b3cda7766f7ea47f1ac64e0a9b76eb")


