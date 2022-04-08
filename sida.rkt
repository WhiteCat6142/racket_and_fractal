#lang racket

(require racket/gui/base)
(require racket/draw)

(define (w1x x y) (+ (* 0.836 x) (* 0.044 y)))
(define (w1y x y) (+ (* -0.044 x) (* 0.836 y) 0.169))

(define (w2x x y) (+ (* -0.141 x) (* 0.302 y)))
(define (w2y x y) (+ (* 0.302 x) (* 0.141 y) 0.127))

(define (w3x x y) (+ (* 0.141 x) (* -0.302 y)))
(define (w3y x y) (+ (* 0.302 x) (* 0.141 y) 0.169))

(define (w4x x y) 0)
(define (w4y x y) (* 0.175337 y))

(define (f dc k x y)
 (if (< 0 k)
  (cons
   (cond
    [(< (random) 0.3) (f dc (- k 1) (w2x x y) (w2y x y))]
    [(< (random) 0.3) (f dc (- k 1) (w3x x y) (w3y x y))]
    [(< (random) 0.3) (f dc (- k 1) (w4x x y) (w4y x y))])
   (f dc (- k 1) (w1x x y) (w1y x y)))
  (plot dc x y)))


(define (plot dc x y)
 (send dc  draw-rectangle (+ (* x 512) 256) (- 512 (* y 512)) 2 2))

(define frame (new frame% [label "Example"] [width 512] [height 512]))
(send frame show #t)
(new canvas% [parent frame]
             [paint-callback
              (lambda (canvas dc)
                (send dc set-pen "Dark Green" 1 'solid)
                (send dc set-brush "green" 'solid)
                (f dc 20 0 0))])
