#lang racket

; @desc Ackermann function
; 1.(define (f n) (A 0 n))
; 2.(define (g n) (A 1 n))
; 3.(define (h n) (A 2 n))
; @return
; The 1 procedure returns 2*n
; The 2 procedure returns 2^n
; Let's n = 3
; (A 0 (A 1 (n-1)))
; (A 0 (A 0 (A 1 (n-2))))
; (A 0 (A 0 2))
; (A 0 4)
; 8 (2^3)
; The 3 procedure returns 2^n-times-pow-2
; Let's n = 3
; (A 2 3)
; (A 1 (A 2 2))
; (A 1 (A 1 (A 2 1)))
; (A 1 (A 1 2))
; (A 1 (A 0 (A 1 1)))
; (A 1 4)
; 16 ( 2^2^2)


(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
