(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun rsi () Int) ; Declare integer variable rsi
(declare-fun rdx () Int) ; Declare integer variable rdx

(declare-fun x13 () Int) 

; Extract the lower 32 bits of rdi
(assert (= x13 rdi))

; Extract the lower 8 bits of rsi and concatenate with 24 zero bits
(assert (= x11 (and (>= rsi 0) (<= rsi 256))))

; Assert that x58 is true if x11 is less than or equal to x13
(assert (= x58 (<= x11 x13)))

; Assert that x59 is true if x58 is false
(assert (= x59 (not x58)))

; Extract the lower 8 bits of rdx and concatenate with 24 zero bits
(assert (= x21 (mod rdx 256)))

; Assert that x51 is true if x21 is less than or equal to x13
(assert (= x51 (<= x21 x13)))

; Assert that x442 is true if:
; - Either x51 is false and x59 is true
; - Or x51 and x59 are both true
(assert (= x442 (or (and (not x51) x59) (and x51 x59))))

; Assert the final condition that x442 is true
(assert x442)

(check-sat)
