#lang racket

<<<<<<< HEAD
; @desc calculates sum of the two largest numbers
; @param [int/float]
; @return [int/float]
=======
;@desc calculates sum of the two largest numbers
;@param [int/float]
;@return [int/float]
>>>>>>> 624a010... Update 1.3

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