(defpackage :square-root
  (:use :cl)
  (:export :square-root))

(in-package :square-root)
(defun square-root (radicand)
  ;; Rounding down Heron's Method
  (round
    (labels ((square (x) (* x x))
             (average (a b) (/ (+ a b) 2))
             (good-enough? (guess x)
               (< (abs (- (square guess) x)) 0.001))
             (improve (guess x)
               (average guess (/ x guess)))
             (try (guess x)
               (if (good-enough? guess x)
                   guess
                   (try (improve guess x) x))))
      (try 1.0 radicand))))