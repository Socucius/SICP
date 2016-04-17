#lang racket

; @desc The main problem with this code is that
; our 'new-if' statement is not a special form
; so the interpreter will try to calculate the
; arguments but because of an applicative evaluation order
; will go into recursion

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter quess x)
  (new-if (good-enouth? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))