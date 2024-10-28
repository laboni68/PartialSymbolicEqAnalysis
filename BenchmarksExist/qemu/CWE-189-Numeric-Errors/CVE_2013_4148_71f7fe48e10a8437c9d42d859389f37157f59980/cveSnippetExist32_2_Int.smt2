(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun x6 () Int) ; Declare integer variable x6
(declare-fun x60 () Bool) ; Declare Boolean variable x60
(declare-fun x53 () Bool) ; Declare Boolean variable x53
(declare-fun x50 () Bool) ; Declare Boolean variable x50
(declare-fun x522 () Bool) ; Declare Boolean variable x522
(declare-fun x703 () Bool) ; Declare Boolean variable x703

; Extract the lower 32 bits of rdi (since rdi is 32-bit, x6 = rdi)
(assert (= x6 rdi))

; Check if x6 is <= 64
(assert (= x60 (<= x6 64)))

; Check if the lower 7 bits of rdi are <= 64 (equivalent to rdi % 128 <= 64)
(assert (= x53 (and (<= rdi 64) (>= rdi 0))))

; Check if the upper 25 bits of rdi are all 0 (equivalent to rdi // 128 == 0)
(assert (= x50 (= (div rdi 128) 0)))

; Define x522 based on conditions involving x50, x53, and x60
(assert (= x522 (and (or (not (and x50 x53)) (and x50 x53 (= x6 0))) (or (not x60) (and x60 (= x6 0))))))

; Define x703 based on various specific values of x6
(assert (= x703 (or
  (and x50 x53 (= x6 1) x60)
  (and x50 x53 (= x6 17) x60)
  (and x50 x53 (= x6 49) x60)
  (and x50 x53 (= x6 51) x60)
  (and x50 x53 (= x6 19) x60)
  (and x50 x53 (= x6 3) x60)
  ; (... other cases ...)
  (and x50 x53 (= x6 62) x60)
  x522)))

; Assert the final condition that x703 is true
(assert x703)

(check-sat)
