#lang racket

; @desc calculates sum of the two largest numbers
; @param [int/float]
; @return [int/float]

(define (square-of-two x y z)
  (+ (square (max (max x y) z)) (square (min (max x y) z))))
 

(define (square x)
  (* x x))    

(define (max x y)
  (if (> x y)
      x
      y))

(define (min x y)
  (if (< x y)
      x
      y))