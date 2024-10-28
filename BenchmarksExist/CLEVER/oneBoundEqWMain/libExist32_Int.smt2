(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun x6 () Int)          ; Declare integer variable x6
(declare-fun x50 () Bool)        ; Declare Boolean variable x50
(declare-fun x51 () Bool)        ; Declare Boolean variable x51
(declare-fun x345 () Bool)       ; Declare Boolean variable x345
(declare-fun x44 () Bool)        ; Declare Boolean variable x44
(declare-fun x45 () Bool)        ; Declare Boolean variable x45
(declare-fun x341 () Bool)       ; Declare Boolean variable x341

; Extract the lower 32 bits of rdi
(assert (= x6 rdi )) ; x6 is the lower 32 bits of rdi

; Assert that x50 is true if x6 is less than or equal to 11
(assert (= x50 (<= x6 11)))

; Assert that x51 is true if x50 is false
(assert (= x51 (not x50)))

; Assert that x345 is true if either:
; - x51 is true, or
; - x50 is true and x6 equals 12
(assert (= x345 (or x51 (and x50 (= x6 12)))))

; Assert that x44 is true if x6 is less than or equal to 10
(assert (= x44 (<= x6 10)))

; Assert that x45 is true if x44 is false
(assert (= x45 (not x44)))

; Assert that x341 is true if either:
; - x45 is true, or
; - x44 is true and x6 equals 11
(assert (= x341 (or x45 (and x44 (= x6 11)))))

; Assert the final condition that both x341 and x345 are true
(assert (and x341 x345))

(check-sat)
