#lang racket

; @descr modificated Newton's method for finding roots
; @param guess[int/float] first approximation
; @param x[int/float]     number
; @return [int/float]     number's root

(define (square-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-iter (improve guess x)
                 x)))

(define (good-enough? guess x)
  (< (abs (- 1 (/ (* guess guess) x))) 0.000001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(square-iter 0.5 0.2)

