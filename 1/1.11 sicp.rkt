#lang racket

; @desc the function is defined by the rule:
; f(n) = n if n < 3, f(n) = f(n-1) + f(n-2) + f(n-3) if n >=3
; func-r - recursive procedure @param  n[int]
; func-i - iterative procedure @param  2,1,0 n[int]
; @return [int]

(define (func-r n)
  (cond
    [(< n 3) n]
    [(>= n 3)
     (+ (func-r (- n 1)) (func-r (- n 2)) (func-r (- n 3)))]))

(func-r 5) ; returns 11


(define (func-i a b c amount)
  (cond
    [(= amount 0) c]
    [else (func-i (+ a b c) a b (- amount 1))]))

(func-i 2 1 0 5) ; returns 11