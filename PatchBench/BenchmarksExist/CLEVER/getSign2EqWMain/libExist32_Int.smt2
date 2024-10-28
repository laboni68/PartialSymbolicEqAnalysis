(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun x9 () Int)          ; Declare integer variable x9
(declare-fun x82 () Bool)        ; Declare Boolean variable x82
(declare-fun x83 () Bool)        ; Declare Boolean variable x83
(declare-fun x70 () Bool)        ; Declare Boolean variable x70
(declare-fun x71 () Bool)        ; Declare Boolean variable x71
(declare-fun x59 () Int)         ; Declare integer variable x59
(declare-fun x68 () Bool)        ; Declare Boolean variable x68
(declare-fun x288 () Bool)       ; Declare Boolean variable x288

; Extract the lower 32 bits of rdi
(assert (= x9 rdi)) ; x9 is the lower 32 bits of rdi

; Assert that x82 is true if x9 is less than or equal to 0
(assert (= x82 (<= x9 0)))

; Assert that x83 is true if x82 is false
(assert (= x83 (not x82)))

; Assert that x70 is true if x9 equals 0
(assert (= x70 (= x9 0)))

; Assert that x71 is true if x70 is false
(assert (= x71 (not x70)))

; Extract the most significant bit from rdi
(assert (= x59 (mod (div rdi 2147483648) 2))) ; Extracting the MSB (bit 31) 

; Assert that x68 is true if x59 equals 0
(assert (= x68 (= x59 0)))

; Assert that x288 is true if either:
; - x68 is false, x71 is true, and x82 is true, or
; - x68 is true, x71 is true, and x83 is true
(assert (= x288 (or (and (not x68) x71 x82) (and x68 x71 x83))))

; Assert the final condition that x288 is true
(assert x288)

(check-sat)
