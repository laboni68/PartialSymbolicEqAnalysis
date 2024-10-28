(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun x217 () Bool) ; Declare Boolean variable x217

; Check the conditions for x217
(assert (= x217 
  (or 
    (and (< rdi 2147483648) (= (div rdi 268435456) 0))   ; rdi < 2^31 and bits 63 to 28 are 0
    (and (>= rdi 2147483648) (not (= (div rdi 268435456) 0))) ; rdi >= 2^31 and bits 63 to 28 are not 0
  )
))

; Assert that x217 is true
(assert x217)

(check-sat)
