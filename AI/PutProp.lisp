;; Store properties 
;; (putprop 'employee 'Rahim 'name) 
;; (putprop 'employee 'Manager 'rank)

;; Display properties 
;; (format t "Employee Name: ~A~%" (get 'employee 'name)) 
;; (format t "Employee Rank: ~A~%" (get 'employee 'rank))

;; 1. Store the name and rank directly using SETF and GET
(setf (get 'emp-101 'name) "Ada Lovelace")
(setf (get 'emp-101 'rank) "Senior Engineer")

;; 2. Retrieve and print the data directly using GET
(format t "--- Employee Record ---~%")
(format t "Name: ~A~%" (get 'emp-101 'name))
(format t "Rank: ~A~%" (get 'emp-101 'rank))