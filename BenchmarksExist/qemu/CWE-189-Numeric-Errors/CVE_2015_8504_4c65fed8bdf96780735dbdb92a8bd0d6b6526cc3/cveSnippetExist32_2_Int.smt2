(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x6 () Int)           ; Declare integer variable x6
(declare-fun x38 () Bool)         ; Declare Boolean variable x38
(declare-fun x39 () Bool)         ; Declare Boolean variable x39
(declare-fun x181 () Bool)        ; Declare Boolean variable x181

; Extract the lower 32 bits of rdi
(assert (= x6 rdi)) ; x6 is the lower 32 bits of rdi

; Assert that x38 is true if x6 is equal to 0
(assert (= x38 (= x6 0)))

; Assert that x39 is true if x38 is false
(assert (= x39 (not x38)))

; Assert that x181 is true if either:
; - x39 is true, or
; - x38 is true and x6 is equal to 255
(assert (= x181 (or x39 (and x38 (= x6 255)))))

; Assert the final condition that x181 is true
(assert x181)

(check-sat)
