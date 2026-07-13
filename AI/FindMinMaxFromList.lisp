(setq numbers '(25 10 45 5 30 600 -10 15))

(setq max (car numbers))
(setq min (car numbers))

(dolist (n (cdr numbers))
  (when (> n max)
    (setq max n))

  (when (< n min)
    (setq min n)))

(format t "Numbers: ~A~%" numbers)
(format t "Maximum = ~A~%" max)
(format t "Minimum = ~A~%" min)