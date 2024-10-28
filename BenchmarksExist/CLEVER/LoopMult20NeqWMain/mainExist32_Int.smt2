(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x9 () Int)           ; Declare integer variable x9
(declare-fun x100 () Bool)        ; Declare Boolean variable x100
(declare-fun x101 () Bool)        ; Declare Boolean variable x101
(declare-fun x99 () Bool)         ; Declare Boolean variable x99
(declare-fun x103 () Bool)        ; Declare Boolean variable x103
(declare-fun x660 () Bool)        ; Declare Boolean variable x660
(declare-fun x662 () Bool)        ; Declare Boolean variable x662
(declare-fun x661 () Bool)        ; Declare Boolean variable x661

; Extract the lower bit (bit 0) of rdi
(assert (= x9 rdi)) ; x9 is the lower 32 bits of rdi

; Assert that x100 is true if x9 <= 17
(assert (= x100 (<= x9 17)))

; Assert that x101 is true if x100 is false
(assert (= x101 (not x100)))

; Assert that x99 is true if x9 <= 21
(assert (= x99 (<= x9 21)))

; Assert that x103 is true if x99 is false
(assert (= x103 (not x99)))

; Assert that x660 is true if both x103 and x101 are true
(assert (= x660 (and x103 x101)))

; Assert that x662 is true if either:
; - x100 is true, or 
; - x660 is true
(assert (= x662 (or x100 x660)))

; Assert that x661 is true if either:
; - x100 is true, or 
; - x99 is true, x101 is true, and 20 * x9 = 0
(assert (= x661 (or x100 (and x99 x101 (= (* 20 x9) 0)) x660)))

; Assert the final condition that both x661 and x662 are true
(assert (and x661 x662))

(check-sat)
