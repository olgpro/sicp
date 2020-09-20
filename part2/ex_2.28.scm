;; Write a procedure fringe that takes as arguments a tree (represented as a list) and
;; returns a list whose elements are all the leaves of the tree arranged in left-to-right
;; order. For example:
;;   (define x (list (list 1 2) (list 3 4)))
;;   (fringe x)
;;   (1 2 3 4)

;;  (fringe (list x x))
;;  (1 2 3 4 1 2 3 4)

(define (fringe items)
  (cond ((null? items) '())
        ((not (pair? (car items))) (append (list (car items)) (fringe (cdr items))))
        ((pair? (car items)) (append (fringe (car items)) (fringe (cdr items))))))

(define y (list 1 2))
(fringe y)

(define x (list (list 1 2) (list 3 4)))
(fringe x)
(fringe (list x x))


