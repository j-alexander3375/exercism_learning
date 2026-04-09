(defpackage :collatz-conjecture
  (:use :cl)
  (:export :collatz))

(in-package :collatz-conjecture)

(defun collatz (n &optional (steps 0))
  (when (<= n 0)
    (return-from collatz nil))
  (if (= n 1)
      steps
      (collatz (if (evenp n)
                   (/ n 2)
                   (+ (* 3 n) 1))
               (1+ steps))))