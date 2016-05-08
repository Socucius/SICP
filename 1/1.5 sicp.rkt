#lang racket

; @desc test for applicative/normal order evaluation
; so if it is an applicative order evaluation
; we can't perform test procedure

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))
