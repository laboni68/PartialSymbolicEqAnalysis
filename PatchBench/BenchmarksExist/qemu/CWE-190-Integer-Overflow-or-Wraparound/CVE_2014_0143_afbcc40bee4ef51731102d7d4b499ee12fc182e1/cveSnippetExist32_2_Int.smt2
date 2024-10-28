(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun x48 () Bool) ; Declare Boolean variable x48

; Check if the extracted bits 31 to 29 are 0 (equivalent to rdi // 2^29 == 0)
(assert (= x48 (= (div rdi 536870912) 0)))

; Assert the condition x48 is true
(assert x48)

(check-sat)
