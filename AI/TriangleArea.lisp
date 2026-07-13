(format t "Enter the base: ")
(setq base (read))

(format t "Enter the height: ")
(setq height (read))

(setq area (/ (* base height) 2.0))

(format t "Area of Triangle = ~A~%" area)