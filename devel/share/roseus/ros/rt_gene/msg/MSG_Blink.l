;; Auto-generated. Do not edit!


(when (boundp 'rt_gene::MSG_Blink)
  (if (not (find-package "RT_GENE"))
    (make-package "RT_GENE"))
  (shadow 'MSG_Blink (find-package "RT_GENE")))
(unless (find-package "RT_GENE::MSG_BLINK")
  (make-package "RT_GENE::MSG_BLINK"))

(in-package "ROS")
;;//! \htmlinclude MSG_Blink.msg.html


(defclass rt_gene::MSG_Blink
  :super ros::object
  :slots (_subject_id _blink _probability ))

(defmethod rt_gene::MSG_Blink
  (:init
   (&key
    ((:subject_id __subject_id) "")
    ((:blink __blink) nil)
    ((:probability __probability) 0.0)
    )
   (send-super :init)
   (setq _subject_id (string __subject_id))
   (setq _blink __blink)
   (setq _probability (float __probability))
   self)
  (:subject_id
   (&optional __subject_id)
   (if __subject_id (setq _subject_id __subject_id)) _subject_id)
  (:blink
   (&optional __blink)
   (if __blink (setq _blink __blink)) _blink)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:serialization-length
   ()
   (+
    ;; string _subject_id
    4 (length _subject_id)
    ;; bool _blink
    1
    ;; float64 _probability
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subject_id
       (write-long (length _subject_id) s) (princ _subject_id s)
     ;; bool _blink
       (if _blink (write-byte -1 s) (write-byte 0 s))
     ;; float64 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subject_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _blink
     (setq _blink (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _probability
     (setq _probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rt_gene::MSG_Blink :md5sum-) "aa03186403fe21e492d9b7fd51b80207")
(setf (get rt_gene::MSG_Blink :datatype-) "rt_gene/MSG_Blink")
(setf (get rt_gene::MSG_Blink :definition-)
      "string subject_id
bool blink
float64 probability
")



(provide :rt_gene/MSG_Blink "aa03186403fe21e492d9b7fd51b80207")


