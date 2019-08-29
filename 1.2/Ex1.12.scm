;; recursive
;; C(n-1, k-1) + C(n-1, k) = C(n, k), 0 < k < n
;; C(0, 0) = C(n, 0) = C(n, n) = 1
;; n is the line number from the top starting from 0
;; k is the column number from the left starting from 0

(define (binom n k)
  (cond ((or (= k 0) (= k n)) 1)
	((or (< k 0) (< n 0) (< n k)) 0)
	(else (+ (binom (- n 1) (- k 1)) (binom (- n 1) k)))))

(binom 0 0)
(binom 1 0)
(binom 0 1)
(binom 1 1)
(binom 2 0)
(binom 2 1)
(binom 2 2)
(binom 3 0)
(binom 3 1)
(binom 3 2)
(binom 3 3)
(binom 4 0)
(binom 4 1)
(binom 4 2)
(binom 4 3)
(binom 4 4)
(binom 5 4)
(binom 4 5)
