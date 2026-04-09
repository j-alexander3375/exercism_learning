(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

(defun expected-time-in-oven ()
  "Returns the expected time the lasagna should be in the oven."
  337)

(defun remaining-minutes-in-oven (time-in)
  "Returns the remaining minutes the lasagna needs to stay in the oven."
  (- (expected-time-in-oven) time-in))

(defun preparation-time-in-minutes (layers)
  "Returns the preparation time in minutes for the given number of layers."
  (* layers 19))

(defun elapsed-time-in-minutes (layers time-in)
  "Returns the total elapsed time in minutes for preparation and time in oven."
  (+ (preparation-time-in-minutes layers) time-in))