
;; based on the solution 1.7 (#2)

(define (cube-iter guess x)
  (define improve
    (/ (+ (/ x (square guess))
	  (* 2 guess))
       3))
  (define new-guess improve)
  (define (good-enough? new-guess)
    (< (abs (/ (- guess new-guess)
	       guess))
       1e-10))
  (if (good-enough? new-guess)
      new-guess
      (cube-iter new-guess x)))

;; if x = -2*y^3 => division by zero
;; y - variable initial approximation
(define (qb x y)  
  (if (= x (* (- 2) y y y))
      (- (cube-iter y (- x)))
      (cube-iter y x)))


;; or simply if initial approximation y >= 0:
;(define (qb x)  
;  (if (>= x 0)
;      (cube-iter 1.0 x)
;      (- (cube-iter 1.0 (- x)))))



(qb 8 1.0)
(qb 1000 1.0)
(qb -1000 -20.0)
(qb -8 1.0)
(qb 2 1.0)
(qb 2 -1.0)
(qb -2 1.0)
(qb -2 -15.0)
(qb 1e+100 1.0)
(qb 1e-100 1.0)

