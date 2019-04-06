(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; return (a + |b|)
;; if b > 0, then (a + b)
;;           else (a - b)
