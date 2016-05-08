#lang racket

; @desc Newton's method for finding cube-roots
; @param guess[int/float] first approximation
; @param x[int/float]     number
; @return [int/float]     number's cube-root

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 x)))

(define (good-enough? guess x)
  (< (abs (- 1 (/ (expt guess 3) x))) 0.000001))

(define (improve guess x)
  (/ (+ (* guess 2) (/ x (expt guess 2))) 3))

(cube-iter 2 4.0)
