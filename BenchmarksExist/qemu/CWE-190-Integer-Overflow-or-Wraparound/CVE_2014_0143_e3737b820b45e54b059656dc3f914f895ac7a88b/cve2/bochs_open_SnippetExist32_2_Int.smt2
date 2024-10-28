; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x9 () Int)           ; Declare integer variable x9
(declare-fun x38 () Int)          ; Declare integer variable x38
(declare-fun x39 () Bool)         ; Declare Boolean variable x39
(declare-fun x41 () Bool)         ; Declare Boolean variable x41
(declare-fun x180 () Bool)        ; Declare Boolean variable x180

; Extract the lower bit (bit 0) of rdi
(assert (= x9 rdi)) ; x9 is the lower 32 bits of rdi

; Assert that x38 is equal to the concatenation of 0 and x9
(assert (= x38 (div rdi 4294967296))) ; x38 represents the 64-bit value from rdi

; Assert that x39 is true if 2147483648 <= x38
(assert (= x39 (<= 2147483648 x38)))

; Assert that x41 is true if x39 is false
(assert (= x41 (not x39)))

; Assert that x180 is true if either:
; - x39 is true, or 
; - x41 is true and x9 is equal to 4294967274
(assert (= x180 (or x39 (and x41 (= x9 4294967274)))))

; Assert the final condition that x180 is true
(assert x180)

(check-sat)
