(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun R () Int)           ; Declare integer variable R

; Extract the lower 29 bits from rdi
(declare-fun x28 () Int)         ; Declare integer variable for extracted bits from rdi
(declare-fun x29 () Int)         ; Declare integer variable for concatenation result
(declare-fun x67 () Bool)        ; Declare Boolean variable for checking if R equals x29
(declare-fun x6 () Int)          ; Declare integer variable for extracted 32 bits from rdi
(declare-fun x26 () Bool)        ; Declare Boolean variable for checking if 33554432 >= x6
(declare-fun x60 () Bool)        ; Declare Boolean variable for conjunction of x26 and x67
(declare-fun x71 () Bool)        ; Declare Boolean variable for checking if R equals 4294967269
(declare-fun x56 () Bool)        ; Declare Boolean variable for checking if x6 < 33554432
(declare-fun x72 () Bool)        ; Declare Boolean variable for conjunction of x56 and x71
(declare-fun x69 () Bool)        ; Declare Boolean variable for final OR condition


; Concatenate x28 with 0 (equivalent to bitwise operation)
(assert (= x67 (= R rdi))) ; x67 is the result of concatenation

; Assert that x26 is true if 33554432 >= x6
(assert (= x26 (>= 33554432 rdi))) ; x26 is true if 33554432 >= x6

; Assert that x60 is true if both x26 and x67 are true
(assert (= x60 (and x26 x67)))    ; x60 is true if x26 and x67 are true

; Assert that x71 is true if R equals 4294967269
(assert (= x71 (= R 4294967269))) ; x71 is true if R equals 4294967269

; Assert that x56 is true if x6 < 33554432
(assert (= x56 (< rdi 33554432)))  ; x56 is true if x6 < 33554432

; Assert that x72 is true if both x56 and x71 are true
(assert (= x72 (and x56 x71)))    ; x72 is true if x56 and x71 are true

; Assert that x69 is true if either x72 or x60 is true
(assert (= x69 (or x72 x60)))     ; x69 is true if either x72 or x60 is true

; Assert that the final condition is satisfied
(assert (and x67 x69))            ; The overall condition to be satisfied

(check-sat)
