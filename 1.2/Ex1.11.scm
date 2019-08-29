;; recursive
(define (f n)
  (if (< n 3) n
      (+ (f (- n 1))
	 (f (- n 2))
	 (f (- n 3)))))

(f 0)
(f 1)
(f 2)
(f -5)
(f 3)
(f 4)
(f 5)
(f 6)
(f 7)
(f 8)
(f 20)
(f 30)


;; iterative (a <= a+b+c; b <= a; c <= b)
(define (f2-iter a b c count)
  (cond ((< count 3) count)
        ((= count 3) (+ a b c))
	(else (f2-iter (+ a b c) a b (- count 1)))))

(define (f2 n)
  (f2-iter 2 1 0 n))

(f2 0)
(f2 1)
(f2 2)
(f2 -5)
(f2 3)
(f2 4)
(f2 5)
(f2 6)
(f2 7)
(f2 8)
(f2 20)
(f2 30)