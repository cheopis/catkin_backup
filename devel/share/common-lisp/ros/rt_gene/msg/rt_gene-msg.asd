
(cl:in-package :asdf)

(defsystem "rt_gene-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MSG_Blink" :depends-on ("_package_MSG_Blink"))
    (:file "_package_MSG_Blink" :depends-on ("_package"))
    (:file "MSG_BlinkList" :depends-on ("_package_MSG_BlinkList"))
    (:file "_package_MSG_BlinkList" :depends-on ("_package"))
    (:file "MSG_Gaze" :depends-on ("_package_MSG_Gaze"))
    (:file "_package_MSG_Gaze" :depends-on ("_package"))
    (:file "MSG_GazeList" :depends-on ("_package_MSG_GazeList"))
    (:file "_package_MSG_GazeList" :depends-on ("_package"))
    (:file "MSG_Headpose" :depends-on ("_package_MSG_Headpose"))
    (:file "_package_MSG_Headpose" :depends-on ("_package"))
    (:file "MSG_HeadposeList" :depends-on ("_package_MSG_HeadposeList"))
    (:file "_package_MSG_HeadposeList" :depends-on ("_package"))
    (:file "MSG_Landmarks" :depends-on ("_package_MSG_Landmarks"))
    (:file "_package_MSG_Landmarks" :depends-on ("_package"))
    (:file "MSG_LandmarksList" :depends-on ("_package_MSG_LandmarksList"))
    (:file "_package_MSG_LandmarksList" :depends-on ("_package"))
    (:file "MSG_SubjectImages" :depends-on ("_package_MSG_SubjectImages"))
    (:file "_package_MSG_SubjectImages" :depends-on ("_package"))
    (:file "MSG_SubjectImagesList" :depends-on ("_package_MSG_SubjectImagesList"))
    (:file "_package_MSG_SubjectImagesList" :depends-on ("_package"))
  ))