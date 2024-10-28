; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun x49 () Bool) ; Declare Boolean variable x49
(declare-fun x46 () Bool) ; Declare Boolean variable x46
(declare-fun x50 () Bool) ; Declare Boolean variable x50
(declare-fun x51 () Bool) ; Declare Boolean variable x51
(declare-fun x295 () Bool) ; Declare Boolean variable x295
(declare-fun x10 () Int) ; Declare integer variable x10

; Extract the relevant bits from rdi
(assert (= x10 rdi)) ; x10 is the lower 32 bits of rdi

; Assert that x49 is true if the lower 31 bits of rdi are less than or equal to 2147483590
(assert (= x49 (<= x10 2147483590))) 

; Assert that x46 is true if the highest bit of rdi is equal to 1
(assert (= x46 (= (div rdi 2147483648) 1))) 

; Assert that x50 is true if both x46 and x49 are true
(assert (= x50 (and x46 x49))) 

; Assert that x51 is the negation of x50
(assert (= x51 (not x50))) 

; Assert that x295 is true if either:
; - x50 is true, or
; - x51 is true and the lower 32 bits of rdi are equal to 3199971726
(assert (= x295 (or x50 (and x51 (= x10 3199971726))))) 

; Assert the final condition that x295 is true
(assert x295) 

(check-sat)
