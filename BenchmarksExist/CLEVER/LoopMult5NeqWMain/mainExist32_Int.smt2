(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun x62 () Bool)        ; Declare Boolean variable x62
(declare-fun x63 () Bool)        ; Declare Boolean variable x63
(declare-fun x61 () Bool)        ; Declare Boolean variable x61
(declare-fun x67 () Bool)        ; Declare Boolean variable x67
(declare-fun x517 () Bool)       ; Declare Boolean variable x517
(declare-fun x519 () Bool)       ; Declare Boolean variable x519
(declare-fun x518 () Bool)       ; Declare Boolean variable x518

; Assert that x62 is true if rdi is less than or equal to 4
(assert (= x62 (<= rdi 4)))

; Assert that x63 is true if x62 is false
(assert (= x63 (not x62)))

; Assert that x61 is true if rdi is less than or equal to 6
(assert (= x61 (<= rdi 6)))

; Assert that x67 is true if x61 is false
(assert (= x67 (not x61)))

; Assert that x517 is true if both x67 and x63 are true
(assert (= x517 (and x67 x63)))

; Assert that x519 is true if either x62 is true or x517 is true
(assert (= x519 (or x62 x517)))

; Assert that x518 is true if x62 is true, or if x61 is true and x63 is true, or if x517 is true
(assert (= x518 (or x62 (and x61 x63) x517)))

; Assert the final condition that both x518 and x519 are true
(assert (and x518 x519))

(check-sat)
