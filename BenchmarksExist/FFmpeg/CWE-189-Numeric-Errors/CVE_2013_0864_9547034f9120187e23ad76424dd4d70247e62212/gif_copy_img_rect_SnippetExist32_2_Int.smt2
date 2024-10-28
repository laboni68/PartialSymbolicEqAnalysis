; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_BV) ; Use logic for Quantifier-Free Bit-Vector Arithmetic

(declare-fun rsi () Int) ; Declare bit-vector variable rsi
(declare-fun rdi () Int) ; Declare bit-vector variable rdi
(declare-fun x6 () Int) ; Declare bit-vector variable x6
(declare-fun x10 () Int) ; Declare bit-vector variable x10
(declare-fun x951 () Bool) ; Declare Boolean variable x951

; Extract the lower 32 bits of rsi
(assert (= x6  rsi))

; Extract the lower 32 bits of rdi
(assert (= x10  rdi))

; Assert that x10 is equal to x6
(assert (= x951 (= x10 x6)))

; Assert the overall condition
(assert x951)

(check-sat)
