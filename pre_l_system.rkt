#lang racket
(require graphics/turtles)
(turtles)
(define (r) (turn -60))
(define (l) (turn 60))
(define (f) (draw 10))
(define (g) (move 10))

(define (phase i x)
 (lambda () (list (x) (l) (x) (r) (r) (x) (l) (x))) )

((foldl phase f '(1 2 3 4)))
