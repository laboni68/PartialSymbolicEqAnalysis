(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun x6 () Bool)         ; Declare boolean variable x6

; Assert that x6 is true if and only if R is equal to rdi
(assert (= x6 (= R rdi)))

; Assert that if 64 >= rdi and x6 is true, then $x75 is true
(declare-fun x75 () Bool)
(assert (= x75 (and (>= 64 rdi) x6)))


; Assert that if 64 < rdi and R = 0, then $x74 is true
(declare-fun x74 () Bool)
(assert (= x74 (and (< 64 rdi) (= R 0))))

; Assert that $x76 is true if either $x74 or $x75 is true
(declare-fun x76 () Bool)
(assert (= x76 (or x74 x75)))

; Assert that if rdi <= 64 and x6 is true, then $x72 is true
(declare-fun x72 () Bool)
(assert (= x72 (and (<= rdi 64) x6)))

; Assert that if rdi > 64 and R = 0, then $x67 is true
(declare-fun x67 () Bool)
(assert (= x67 (and (> rdi 64) (= R 0))))

; Assert that $x73 is true if either $x67 or $x72 is true
(declare-fun x73 () Bool)
(assert (= x73 (or x67 x72)))

; Assert that $x73 and $x76 both hold
(assert (and x73 x76))

(check-sat)
