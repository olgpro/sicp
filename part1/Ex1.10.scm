(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1)
		 (A x (- y 1))))))

(A 1 10) ; => 1024 = 2^10
(A 2 4) ; => 65536 = 2^16 = 2^2^2^2
(A 3 3) ; => 65536 = 2^16 = 2^2^2^2


(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))


(f 1) ; => 2
(f 2) ; => 2*2 = 4
(f 3) ; => 2*3 = 6
(f 4) ; => 2*4 = 8

;; f(n) = A(0, n), so x = 0 => f(n) = 2*n by definition of the Ackermann function




(g 1) ; => 2
(g 2) ; => 2^2 = 4
(g 3) ; => 2^3 = 8
(g 4) ; => 2^4 = 16
(g 10) ; = > 2^10 = 1024
;; for example, let's evaluate (A 1 10):
;; (A 0 (A 1 9)) 
;; (A 0 (A 0 (A 1 8)))
;; ... 
;; (A 0 (A 0 (... (A 0 (A 0 (A 1 1))) ...))) 
;; (A 0 (A 0 (... (A 0 (A 0 2)) ...))) 
;; (A 0 (A 0 (... (A 0 (* 2 2)) ...))) 
;; (A 0 (A 0 (... (A 0 4) ...))) 
;; ... 
;; (A 0 (A 0 2^8)) 
;; (A 0 (* 2 2^8)) 
;; (A 0 2^9) 
;; 2^10 
;; 1024

;; g(n) = A(1, n) = 2^n if n>0
;; proof by mathematical induction
;; g(1) = 2 => true
;; for k>1 A(1, k) = A(0, A(1, k-1)) = 2*A(1, k-1) = 2^k
;; A(1, k+1) = A(0, A(1, k)) = 2*A(1, k) = 2*2*A(1, k-1) = 2^(k+1) => true


(h 1) ; => 2
(h 2) ; => 2^2 = 4
(h 3) ; => 2^2^2 = 16
(h 4) ; => 2^2^2^2 = 65536
;; for example, let's evaluate (A 2 4):
;; (A 2 4) 
;; (A 1 (A 2 3)) 
;; (A 1 (A 1 (A 2 2))) 
;; (A 1 (A 1 (A 1 (A 2 1)))) 
;; (A 1 (A 1 (A 1 2)))
;; ... 
;; (A 1 (A 1 2^2)) 
;; ... 
;; (A 1 2^2^2)) 
;; ... 
;; 2^2^2^2 = 2^2^4 = 2^16 = 65536

;; h(n) = A (2, n) = 2^2^...^2 with n>0 copies of 2
;; proof by mathematical induction
;; h(1) = 2 => true
;; for k>1 A(2, k) = A(1, A(2, k-1) = 2^A(2, k-1) = 2^2^...^2 with k copies of 2
;; A(2, k+1) = A(1, A(2, k)) = 2^A(2, k) = 2^2^A(2, k-1) = 2^2^...^2 with k+1 copies of 2 => true
