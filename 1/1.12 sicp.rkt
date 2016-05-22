#lang racket

; @desc Pascal's triangle
; ptr-1 - procedure that calculates binomeal coefficient
; with the help of the factorial procedure.
; ptr-2 - procedure that calculates binomeal coefficient without
; the factorial procedure.
; note that in the ptr-1 procedure numbers start with the zero.
; @param n[int] index of the triangle's row
; @param k[int] index of the triangle's number
; @return [int] triangle's element

(define (ptr-1 n k)
  (cond
    [(= k 1) 1]
    [(= n k) 1]
    [(> k n) (error "Invalid parameters")]
    [else (/ (fact n) (* (fact k) (fact (- n k))))]))

(define (ptr-2 n k)
  (cond
    [(or (= k 1) (= n 1)) 1]
    [(= n k) 1]
    [(> k n) (error "Invalid parameters")]
    [else (+ (ptr-2 (- n 1) (- k 1)) (ptr-2 (- n 1) k))]))


(define (fact n)
  (if (= n 0) 1
      (* n (fact (- n 1)))))

(ptr-1 4 2) ; => 6
(ptr-2 5 3) ; => 6