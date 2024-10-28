(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun rsi () Int) ; Declare integer variable rsi

; Assert that x62 is true if rdi equals 9223372036854775808
(assert (= x62 (= rdi 9223372036854775808)))

; Assert that x67 is true if rsi equals 9223372036854775808
(assert (= x67 (= rsi 9223372036854775808)))

; Define x68 as the negation of x67
(assert (= x68 (not x67)))

; Assert that x27 is true if 18446744073709548516 is less than or equal to rsi
(assert (= x27 (<= 18446744073709548516 rsi)))

; Assert that x78 is true if rsi is less than or equal to 2147479996900
(assert (= x78 (<= rsi 2147479996900)))

; Assert the conditions for x551
(assert (= x551 (or (and (<= rdi 2147479996900) (<= 18446744073709548516 rdi) (not x62)) 
                    (and x78 x27 x68 x62))))

; Assert the conditions for x544
(assert (= x544 (or (and x67 x62) 
                    (and (or (not x62) (and x68 x62)) x551))))

; Assert the final condition that x544 is true
(assert x544)

(check-sat)
