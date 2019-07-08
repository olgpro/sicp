(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(sqrt 144)
(sqrt 9)
(sqrt 0.0001)
(sqrt 1e-10)
(sqrt 1e+10)


;; new possible implementation

(define (new-good-enough? guess guess0)
  (< (abs (/ (- guess guess0) guess0)) 1e-10))

(define (new-sqrt-iter guess guess0 x)
  (if (new-good-enough? guess guess0)
      guess
      (new-sqrt-iter (improve guess x)
                        guess
                        x)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 0.5 x))


(new-sqrt 4)
(new-sqrt 0.0001)
(new-sqrt 1e-10)
(new-sqrt 45e+10)


;; or

(define (new-sqrt-2 x)
  (define (sqrt-iter guess)
    (define improve
      (average guess (/ x guess)))
    (define new-guess improve)
    (define (good-enough? new-guess)
      (< (abs (/ (- guess new-guess) guess)) 1e-10))
    (if (good-enough? new-guess)
	new-guess
	(sqrt-iter new-guess)))
  (sqrt-iter 1.0))

(new-sqrt-2 4)
(new-sqrt-2 0.0001)
(new-sqrt-2 1e-10)
(new-sqrt-2 45e+10)


