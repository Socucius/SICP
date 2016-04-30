#lang racket

; @description the first process is linearly-recursive.
; (inc (+ 3 5))
;   (inc (+ 2 5))
;      (inc (+ 1 5))
;        (inc (+ 0 5))
;        (inc 5)
;      (inc 6)    
;   (inc 7)
; (inc 8)
; 9

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))


; @description the second process is linear-iterative
; (+ 3 6)
; (+ 2 7)
; (+ 1 8)
; (+ 0 9)
; 9

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))