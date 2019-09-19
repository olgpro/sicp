;; a iterative process that multiplies two non-negative integers
;; a*b+c = const  ->  a<=a b<=b-1 c<=c+a

(define (** a b)
  (**-iter a b 0))

(define (**-iter a b c)
  (cond ((= b 0) c)
	((even? b) (**-iter (double a) (halve b) c))
	(else (**-iter a (- b 1) (+ c a)))))

(define (halve a)
  (/ a 2))

(define (double a)
  (* a 2))

(define (even? n)
  (= (remainder n 2) 0))


(** 7 1)
(** 4 3)
(** 5 5)
(** 50 120)

