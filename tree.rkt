#lang racket
(require graphics/turtles)
(turtles)
(define (g i) (if (positive? i) (list (draw 10) (split (turn -30) (g (- i 2))) (split (turn 30) (g (- i 2))) (g (- i 1)) ) (draw 5) ))
(turn 90)
(g 3)
(home)
