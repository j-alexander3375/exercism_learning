(defpackage :pizza-pi
  (:use :cl)
  (:export :dough-calculator :pizzas-per-cube
           :size-from-sauce :fair-share-p))

(in-package :pizza-pi)

(defun dough-calculator (pizzas diameter)
  (round (* pizzas (+ (/ (* 45 pi diameter) 20) 200)))
  )

(defun size-from-sauce (sauce)
  (sqrt (/ (* 40 sauce) (* 3 pi)))
  )

(defun pizzas-per-cube (cube-size diameter)
  (floor (/ (* 2 (expt cube-size 3)) (* 3 pi (expt diameter 2))))
  )

(defun fair-share-p (pizzas friends)
  (= (mod (* pizzas 8) friends) 0)
  )


;; (fair-share-p 10 5)   ;; T
;; (fair-share-p 10 3)   ;; NIL
;; (print (fair-share-p 9 3)) ;; prints T