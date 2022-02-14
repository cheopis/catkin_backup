;; Auto-generated. Do not edit!


(when (boundp 'rt_gene::MSG_Landmarks)
  (if (not (find-package "RT_GENE"))
    (make-package "RT_GENE"))
  (shadow 'MSG_Landmarks (find-package "RT_GENE")))
(unless (find-package "RT_GENE::MSG_LANDMARKS")
  (make-package "RT_GENE::MSG_LANDMARKS"))

(in-package "ROS")
;;//! \htmlinclude MSG_Landmarks.msg.html


(defclass rt_gene::MSG_Landmarks
  :super ros::object
  :slots (_subject_id _landmarks ))

(defmethod rt_gene::MSG_Landmarks
  (:init
   (&key
    ((:subject_id __subject_id) "")
    ((:landmarks __landmarks) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _subject_id (string __subject_id))
   (setq _landmarks __landmarks)
   self)
  (:subject_id
   (&optional __subject_id)
   (if __subject_id (setq _subject_id __subject_id)) _subject_id)
  (:landmarks
   (&optional __landmarks)
   (if __landmarks (setq _landmarks __landmarks)) _landmarks)
  (:serialization-length
   ()
   (+
    ;; string _subject_id
    4 (length _subject_id)
    ;; float64[] _landmarks
    (* 8    (length _landmarks)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subject_id
       (write-long (length _subject_id) s) (princ _subject_id s)
     ;; float64[] _landmarks
     (write-long (length _landmarks) s)
     (dotimes (i (length _landmarks))
       (sys::poke (elt _landmarks i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subject_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _landmarks i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get rt_gene::MSG_Landmarks :md5sum-) "e6e6840b2076b49500e303fc6790d231")
(setf (get rt_gene::MSG_Landmarks :datatype-) "rt_gene/MSG_Landmarks")
(setf (get rt_gene::MSG_Landmarks :definition-)
      "string subject_id
float64[] landmarks

")



(provide :rt_gene/MSG_Landmarks "e6e6840b2076b49500e303fc6790d231")


