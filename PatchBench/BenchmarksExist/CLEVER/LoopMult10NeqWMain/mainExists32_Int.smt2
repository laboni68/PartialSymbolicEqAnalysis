(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x76 () Bool)         ; Declare Boolean variable x76
(declare-fun x77 () Bool)         ; Declare Boolean variable x77
(declare-fun x75 () Bool)         ; Declare Boolean variable x75
(declare-fun x81 () Bool)         ; Declare Boolean variable x81
(declare-fun x544 () Bool)        ; Declare Boolean variable x544
(declare-fun x546 () Bool)        ; Declare Boolean variable x546
(declare-fun x545 () Bool)        ; Declare Boolean variable x545

; Assert that x76 is true if rdi <= 8
(assert (= x76 (<= rdi 8)))

; Assert that x77 is true if x76 is false
(assert (= x77 (not x76)))

; Assert that x75 is true if rdi <= 11
(assert (= x75 (<= rdi 11)))

; Assert that x81 is true if x75 is false
(assert (= x81 (not x75)))

; Assert that x544 is true if both x81 and x77 are true
(assert (= x544 (and x81 x77)))

; Assert that x546 is true if either:
; - x76 is true, or 
; - x544 is true
(assert (= x546 (or x76 x544)))

; Assert that x545 is true if either:
; - x76 is true, or 
; - x75 is true, x77 is true, and rdi * 10 = 0
(assert (= x545 (or x76 (and x75 x77 (= (* 10 rdi) 0)) x544)))

; Assert the final condition that both x545 and x546 are true
(assert (and x545 x546))

(check-sat)
