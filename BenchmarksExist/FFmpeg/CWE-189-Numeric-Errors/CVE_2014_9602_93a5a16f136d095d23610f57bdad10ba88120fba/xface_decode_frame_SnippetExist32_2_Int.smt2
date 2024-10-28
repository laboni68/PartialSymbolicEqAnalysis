(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun rsi () Int) ; Declare integer variable rsi
(declare-fun x11 () Int) 

; Define x11 as rdi + 1
(assert (= x11 (+ rdi 1))) 

(declare-fun x67 () Bool) 
; Assert that x67 is true if x11 is less than or equal to 666
(assert (= x67 (<= x11 666)))

(declare-fun x19 () Int) 
; Define x19 as rsi
(assert (= x19 rsi))

(declare-fun x65 () Bool) 
; Assert that x65 is true if x19 is less than or equal to 545
(assert (= x65 (<= x19 545)))

(declare-fun x66 () Bool) 
; Define x66 as the negation of x65
(assert (= x66 (not x65)))

(declare-fun x70 () Bool) 
; Define x70 as the negation of x67
(assert (= x70 (not x67)))

(declare-fun x57 () Bool) 
; Assert that x57 is true if x11 is less than or equal to 704
(assert (= x57 (<= x11 704)))

(declare-fun x62 () Bool) 
; Define x62 as the negation of x57
(assert (= x62 (not x57)))

(declare-fun x421 () Bool) 
; Assert the conditions for x421
(assert (= x421 (and (or x62 (and (not (<= x19 575)) x57)) (or x70 (and x66 x67)))))

(declare-fun x426 () Bool) 
; Assert the conditions for x426
(assert (= x426 (or (and (<= x19 575) x57 x65 x67) x421)))

; Assert the final condition that x426 is true
(assert x426)

(check-sat)
