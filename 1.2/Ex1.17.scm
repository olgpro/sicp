;; a recursive process that multiplies two non-negative integers

(define (** a b)
  (cond ((= b 0) 0)
	((even? b) (** (double a) (halve b)))
	(else (+ a (** a (- b 1))))))

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

