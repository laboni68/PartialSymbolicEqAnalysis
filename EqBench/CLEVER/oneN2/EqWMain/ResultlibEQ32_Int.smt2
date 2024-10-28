(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun x6 () Int)          ; Declare integer variable x6
(declare-fun x76 () Int)         ; Declare integer variable x76
(declare-fun x83 () Bool)        ; Declare Boolean variable x83
(declare-fun x45 () Bool)        ; Declare Boolean variable x45
(declare-fun x84 () Bool)        ; Declare Boolean variable x84
(declare-fun x75 () Bool)        ; Declare Boolean variable x75
(declare-fun x56 () Bool)        ; Declare Boolean variable x56
(declare-fun x82 () Bool)        ; Declare Boolean variable x82
(declare-fun x85 () Bool)        ; Declare Boolean variable x85
(declare-fun x79 () Bool)        ; Declare Boolean variable x79
(declare-fun x11 () Bool)        ; Declare Boolean variable x11
(declare-fun x80 () Bool)        ; Declare Boolean variable x80
(declare-fun x41 () Bool)        ; Declare Boolean variable x41
(declare-fun x78 () Bool)        ; Declare Boolean variable x78
(declare-fun x81 () Bool)        ; Declare Boolean variable x81

; Extract lower 32 bits from rdi
(assert (= x6 rdi)) ; x6 is the lower 32 bits of rdi

; Compute x76 as the sum of x6 and 4294967295
(assert (= x76 (+ x6 4294967295)))

; Assert that x83 is true if R equals x76
(assert (= x83 (= R x76)))

; Assert that x45 is true if x6 is greater than or equal to 11
(assert (= x45 (>= x6 11)))

; Assert that x84 is true if both x45 and x83 are true
(assert (= x84 (and x45 x83)))

; Assert that x75 is true if R equals 11
(assert (= x75 (= R 11)))

; Assert that x56 is true if x6 is less than 11
(assert (= x56 (< x6 11)))

; Assert that x82 is true if both x56 and x75 are true
(assert (= x82 (and x56 x75)))

; Assert that x85 is true if either x82 or x84 is true
(assert (= x85 (or x82 x84)))

; Assert that x79 is true if R equals x6
(assert (= x79 (= R x6)))

; Assert that x11 is true if x6 is greater than or equal to 10
(assert (= x11 (>= x6 10)))

; Assert that x80 is true if both x11 and x79 are true
(assert (= x80 (and x11 x79)))

; Assert that x41 is true if x6 is less than 10
(assert (= x41 (< x6 10)))

; Assert that x78 is true if both x41 and x75 are true
(assert (= x78 (and x41 x75)))

; Assert that x81 is true if either x78 or x80 is true
(assert (= x81 (or x78 x80)))

; Assert that the final result is true if both x81 and x85 are true
(assert (and x81 x85))

(check-sat)
