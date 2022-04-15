#lang racket
(require graphics/turtles)
(turtles)
(define (r i) (turn -45))
(define (l i) (turn 45))
(define (f i) (if (= 0 i) (draw 2) (let ([j (- i 1)]) (list (r 0) (f j) (l j) (l 0) (g j) (r 0)) )))
(define (g i) (if (= 0 i) (draw 2) (let ([j (- i 1)]) (list (l 0) (f j) (r j) (r 0) (g j) (l 0)) )))
(f 12)
