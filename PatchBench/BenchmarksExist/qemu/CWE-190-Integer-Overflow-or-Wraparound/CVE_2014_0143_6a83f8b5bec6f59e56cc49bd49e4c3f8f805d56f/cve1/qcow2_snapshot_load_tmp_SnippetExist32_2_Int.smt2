; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x11 () Int)          ; Extracted lower bits of rdi
(declare-fun x39 () Bool)         ; Condition for x11 <= 33554432

; Extract lower bits of rdi
(assert (= x11 rdi ))  ; x11 is the lower 32 bits of rdi

; Assert that x39 is true if x11 <= 33554432
(assert (= x39 (<= x11 33554432)))

; Assert the final condition that x39 is true
(assert x39)

(check-sat)
