(define (exp b n)
  (exp-iter b n 1))

(define (exp-iter b n a)
  (cond ((= n 0) a)
	((even? n) (exp-iter (square b) (/ n 2) a))
	(else (exp-iter b (- n 1) (* a b)))))

(define (square n)
  (* n n))

(define (even? n)
  (= (remainder n 2) 0))

(exp 5 2)
(exp 3 3)
(exp 4 4)
(exp 10 10)
