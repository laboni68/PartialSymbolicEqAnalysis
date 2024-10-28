(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun rsi () Int)         ; Declare integer variable rsi
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun x6 () Int)          ; Declare integer variable x6
(declare-fun x21 () Int)         ; Declare integer variable x21
(declare-fun x8 () Int)          ; Declare integer variable x8
(declare-fun x22 () Int)         ; Declare integer variable x22
(declare-fun x35 () Bool)        ; Declare Boolean variable x35
(declare-fun x16 () Int)         ; Declare integer variable x16
(declare-fun x17 () Int)         ; Declare integer variable x17
(declare-fun x26 () Bool)        ; Declare Boolean variable x26

; Extract lower 32 bits from rdi
(assert (= x6 rdi)) ; x6 is the lower 32 bits of rdi

; Compute x21 as the product of 4294967295 and x6
(assert (= x21 (* 4294967295 x6)))

; Extract lower 32 bits from rsi
(assert (= x8 rsi)) ; x8 is the lower 32 bits of rsi

; Compute x22 as the sum of x8 and x21
(assert (= x22 (+ x8 x21)))

; Assert that x35 is true if R equals x22
(assert (= x35 (= R x22)))

; Compute x16 as the product of 4294967295 and x8
(assert (= x16 (* 4294967295 x8)))

; Compute x17 as the sum of x6 and x16
(assert (= x17 (+ x6 x16)))

; Assert that x26 is true if R equals x17
(assert (= x26 (= R x17)))

; Assert the final condition that both x26 and x35 are true
(assert (and x26 x35))

(check-sat)
