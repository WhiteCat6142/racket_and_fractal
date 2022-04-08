#lang racket
(require graphics/turtles)
(define fd draw)
(define rt turn)
(turtles)

(for ((in-range 10)) (for ((in-range 8)) (fd 10) (rt 90) (fd 5) (rt -90) (fd 10) (rt 45)) (rt 36))
