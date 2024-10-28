(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun x42 () Bool) ; Declare Boolean variable x42
(declare-fun x232 () Bool) ; Declare Boolean variable x232

; Assert that x42 is true if rdi <= 0
(assert (= x42 (<= rdi 0)))

; Assert that x232 is true if:
; - Either x42 is false and rdi <= 76695843
; - Or x42 is true and (x42 is true or rdi > 76695843)
(assert (= x232 (or (and (not x42) (<= rdi 76695843)) 
                     (and x42 (or x42 (and (not (<= rdi 76695843)) (not x42)))))))

; Assert the final condition that x232 is true
(assert x232)

(check-sat)
