; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun rsi () Int)          ; Declare integer variable rsi
(declare-fun x6 () Int)           ; Extracted lower bits of rsi
(declare-fun x12 () Int)          ; Extracted lower bits of rdi
(declare-fun x788 () Bool)        ; Boolean variable for the equality check

; Extract the lower bits of rsi and rdi
(assert (= x6 rsi))  ; x6 is the lower 32 bits of rsi
(assert (= x12 rdi)) ; x12 is the lower 32 bits of rdi

; Assert that 2 * x6 = 2 * x12
(assert (= x788 (and (= (* 2 x6) (* 2 x12)))))

(check-sat)
