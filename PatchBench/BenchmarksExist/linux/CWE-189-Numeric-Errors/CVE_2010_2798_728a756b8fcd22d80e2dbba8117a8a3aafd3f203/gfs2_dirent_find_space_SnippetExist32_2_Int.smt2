(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun rsi () Int) ; Declare integer variable rsi
(declare-fun x9 () Int) ; Declare integer variable x9
(declare-fun x16 () Int) ; Declare integer variable x16
(declare-fun x54 () Int) ; Declare integer variable x54
(declare-fun x17 () Bool) ; Declare Boolean variable x17
(declare-fun x55 () Bool) ; Declare Boolean variable x55
(declare-fun x543 () Bool) ; Declare Boolean variable x543

; Extract the lower 32 bits of rdi
(assert (= x9 rdi))

; Compute x16 based on the upper 29 bits of rsi and a shift by 3 bits
(assert (= x16 (+ (mod (div rsi 8) 536870912) 47)))

; Assert x17 as true if x16 is less than or equal to x9
(assert (= x17 (<= x16 x9)))

; Compute x54 by adding 4294967256 to x9
(assert (= x54 (+ x9 4294967256)))

; Assert x55 as true if x16 is less than or equal to x54
(assert (= x55 (<= x16 x54)))

; Assert x543 as true if either both x55 and x17 are true, or both are false
(assert (= x543 (or (and (not x55) (not x17)) (and x55 x17))))

; Assert the final condition that x543 is true
(assert x543)

(check-sat)
