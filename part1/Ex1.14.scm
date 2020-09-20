;; exercise 1.14

;; the space required is proportional to the maximum depth of the tree => Θ(n)

;; the time complexity for (cc n 1) => Θ(n)
;; the time complexity for (cc n 2) => (cc n 1) + (cc n-u 2), where u is the denomination of the k-th coin
;; (cc n-u 2) - excluding the root and the last level in this tree, there will be exactly ⌊n/5⌋ levels
;; each of these levels contains a call to (cc n 1), for sufficiently large n, each of which is Θ(n) in time
;; the total number of nodes in the call tree for (cc n 2) is Θ(n^2)
;; the time complexity for 5 kinds of coins grows as Θ(n^5)
