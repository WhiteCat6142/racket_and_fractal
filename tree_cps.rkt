#lang racket
;; https://practical-scheme.net/wiliki/wiliki.cgi?Scheme%3A%E9%83%A8%E5%88%86%E7%B6%99%E7%B6%9A%3A%E3%82%A4%E3%83%86%E3%83%AC%E3%83%BC%E3%82%BF%E3%81%AE%E5%8F%8D%E8%BB%A2
;; https://practical-scheme.net/wiliki/wiliki.cgi?Scheme%3A%E3%81%AA%E3%81%9CScheme%E3%81%AB%E3%81%AFreturn%E3%81%8C%E7%84%A1%E3%81%84%E3%81%AE%E3%81%8B
;; https://practical-scheme.net/wiliki/wiliki.cgi?Scheme%3A%E4%BD%BF%E3%81%84%E3%81%9F%E3%81%84%E4%BA%BA%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AE%E7%B6%99%E7%B6%9A%E5%85%A5%E9%96%80
;; http://www.nct9.ne.jp/m_hiroi/func/abcscm20.html
(require racket/control)
(require graphics/turtles)
(turtles)
(define (r) (turn 60))
(define (b) (turn 180))
(define (e) ('()))
(define (e1 d) '())

(define (tree/cps n k)
  (if (= n 0)
    (begin (draw 1) (b) (move 1) (r) (k e))
    (begin (draw (expt 1.7 n))
    (reset
      (r) (shift k (tree/cps (- n 1) k)) (shift k (tree/cps (- n 1) k)) )
    (move (expt 1.7 n))
    (r)
    (k e) )))
    
(turn 90)
(tree/cps 9 e1)
