(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
   (if (not (> (abs angle) 0.1)) ;; the base case
       angle
       (p (sine (/ angle 3.0)))))

(sine 12.15)
;; -> (p (sine (/ 12.15 3))
;; -> (p (sine 4.05))
;; -> (p (p (sine (/ 4.05 3))))
;; -> (p (p (sine 1.349999999999999)))
;; -> (p (p (p (sine (/ 1.349999999999999 3)))))
;; -> (p (p (p (sine .44999999999999996))))
;; -> (p (p (p (p (sine (/ .44999999999999996 3))))))
;; -> (p (p (p (p (sine .15)))))
;; -> (p (p (p (p (p (sine (/ .15 3)))))))
;; -> (p (p (p (p (p (sine .05))))))
;; -> (p (p (p (p (p 0.05)))))

;; if the argument >= 0.1, p is called once, and the argument is divided by three
;; the number of steps required is the smallest integer n such that 12.15 / 3^n < 0.1 or 121.5 < 3^n
;; n is 5, so p is called 5 times

;; if a > 0.1, the number of steps is the smallest n such that 10*a < 3^n
;; log(10) + log(a) < n log(3)
;; the number of steps has order of growth Θ(log(n))
;; the space required is proportional to the number of steps => Θ(log(n))
