(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun rsi () Int) ; Declare integer variable rsi
(declare-fun x54 () Int) ; Declare integer variable x54
(declare-fun x63 () Bool) ; Declare Boolean variable x63
(declare-fun x46 () Bool) ; Declare Boolean variable x46
(declare-fun x66 () Bool) ; Declare Boolean variable x66
(declare-fun x447 () Bool) ; Declare Boolean variable x447

; Extract the most significant bit (bit 31) of rdi
(assert (= x54 (div rdi 2147483648))) ; x54 is bit 31 of rdi
; Assert that x63 is true if bit 31 of rdi is 0
(assert (= x63 (= x54 0)))

; Extract the lower 32 bits of rdi and rsi
(declare-fun x9 () Int)
(declare-fun x23 () Int)
(assert (= x9 rdi)) ; x9 is the lower 32 bits of rdi
(assert (= x23 rsi)) ; x23 is the lower 32 bits of rsi

; Assert that x46 is true if rsi <= rdi
(assert (= x46 (<= x23 x9)))

; Assert that x66 is true if x46 is false
(assert (= x66 (not x46)))

; Assert that x447 is true if:
; - Either bit 31 of rdi is not 0 and rdi equals 4294967290
; - Or rsi <= rdi and bit 31 of rdi is 0 and rdi equals 4294967290
; - Or rsi > rdi and bit 31 of rdi is 0
(assert (= x447 (or (and (not x63) (= x9 4294967290)) 
                    (and x46 x63 (= x9 4294967290)) 
                    (and x66 x63))))

; Assert the final condition that x447 is true
(assert x447)

(check-sat)
