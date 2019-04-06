(define (square a)
  (* a a))  

(define (sum-of-squares a b) 
  (+ (square a) (square b)))

(define (f a b c)
  (cond ((and (>= a c) (>= b c))
	 (sum-of-squares a b))
        ((and (>= a b) (>= c b))
	 (sum-of-squares a c))
	(else
	 (sum-of-squares b c))))

(f 5 8 3)
(f 0 -3 -2)
(f -10 9 -6)
(f 3 3 1)

