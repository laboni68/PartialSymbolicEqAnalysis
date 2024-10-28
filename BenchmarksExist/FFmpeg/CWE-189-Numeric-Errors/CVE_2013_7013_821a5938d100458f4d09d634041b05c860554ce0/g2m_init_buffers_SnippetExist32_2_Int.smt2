; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun x52 () Int) ; Declare integer variable x52
(declare-fun x11 () Int) ; Declare integer variable x11
(declare-fun x14 () Int) ; Declare integer variable x14
(declare-fun x15 () Int) ; Declare integer variable x15
(declare-fun x667 () Bool) ; Declare Boolean variable x667

; Extract the relevant bits from rdi and compute the concatenated values
(assert (= x52 (mod (div rdi (exp 2 4)) (exp 2 4)))) ; Equivalent to the first concat operation
(assert (= x11 (mod (div rdi (exp 2 4)) (exp 2 4)))) ; Equivalent to the second concat operation
(assert (= x14 (mod (div rdi (exp 2 5)) (exp 2 5)))) ; Equivalent to the third concat operation
(assert (= x15 (+ x14 x11))) ; x15 is the sum of x14 and x11

; Assert that x667 is true if x15 is equal to x52
(assert (= x667 (= x15 x52)))

; Assert the final condition that x667 is true
(assert x667)

(check-sat)
