#lang racket
(require graphics/turtles)
(turtles)
(define (r i) (turn -45))
(define (l i) (turn 45))
(define (f i) (if (= 0 i) (draw 4) (let ([j (- i 1)]) (list (r j) (f j) (l j) (l 0) (f j) (r 0))) ))
(define (g i) (move 2))

(f 12)
