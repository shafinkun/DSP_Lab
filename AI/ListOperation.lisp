(setq list1 '(10 20 30))
(setq list2 '(40 50 60))

(format t "List1: ~A~%" list1)
(format t "List2: ~A~%" list2)

;; APPEND
(format t "APPEND: ~A~%" (append list1 list2))

;; REVERSE
(format t "REVERSE of List1: ~A~%" (reverse list1))

;; LENGTH
(format t "LENGTH of List1: ~A~%" (length list1))

;; MEMBER
(format t "MEMBER 20: ~A~%" (member 20 list1))
(format t "MEMBER 100: ~A~%" (member 100 list1))