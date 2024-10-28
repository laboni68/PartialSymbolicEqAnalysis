(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun x6 () Int)          ; Declare integer variable x6
(declare-fun x58 () Int)         ; Declare integer variable x58
(declare-fun x74 () Bool)        ; Declare Boolean variable x74
(declare-fun x11 () Bool)        ; Declare Boolean variable x11
(declare-fun x75 () Bool)        ; Declare Boolean variable x75
(declare-fun x69 () Bool)        ; Declare Boolean variable x69
(declare-fun x41 () Bool)        ; Declare Boolean variable x41
(declare-fun x70 () Bool)        ; Declare Boolean variable x70
(declare-fun x76 () Bool)        ; Declare Boolean variable x76
(declare-fun x71 () Bool)        ; Declare Boolean variable x71
(declare-fun x72 () Bool)        ; Declare Boolean variable x72
(declare-fun x73 () Bool)        ; Declare Boolean variable x73

; Extract lower 32 bits from rdi
(assert (= x6 rdi)) ; x6 is the lower 32 bits of rdi

; Compute x58 as x6 plus 1
(assert (= x58 (+ x6 1)))

; Assert that x74 is true if R equals x58
(assert (= x74 (= R x58)))

; Assert that x11 is true if x6 is greater than or equal to 10
(assert (= x11 (>= x6 10)))

; Assert that x75 is true if both x11 and x74 are true
(assert (= x75 (and x11 x74)))

; Assert that x69 is true if R equals 11
(assert (= x69 (= R 11)))

; Assert that x41 is true if x6 is less than 10
(assert (= x41 (< x6 10)))

; Assert that x70 is true if both x41 and x69 are true
(assert (= x70 (and x41 x69)))

; Assert that x76 is true if either x70 or x75 is true
(assert (= x76 (or x70 x75)))

; Assert that x71 is true if R equals x6
(assert (= x71 (= R x6)))

; Assert that x72 is true if both x11 and x71 are true
(assert (= x72 (and x11 x71)))

; Assert that x73 is true if either x70 or x72 is true
(assert (= x73 (or x70 x72)))

; Assert the final condition that both x73 and x76 are true
(assert (and x73 x76))

(check-sat)
