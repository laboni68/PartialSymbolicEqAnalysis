; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x47 () Bool)         ; Declare Boolean variable x47

; Assert that the bits 31 to 29 of rdi are equal to 0
(assert (= x47 (= (div rdi 536870912) 0)))

; Assert the final condition that x47 is true
(assert x47)

(check-sat)
