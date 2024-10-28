(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun rdi () Int)         ; Declare integer variable rdi

(declare-fun x72 () Bool)        ; Declare Boolean variable for checking if R equals 0
(declare-fun x42 () Bool)        ; Declare Boolean variable for checking if rdi <= 268435455
(declare-fun x76 () Bool)        ; Declare Boolean variable for conjunction of x42 and x72
(declare-fun x69 () Bool)        ; Declare Boolean variable for checking if R equals 27
(declare-fun x57 () Bool)        ; Declare Boolean variable for checking if rdi > 268435455
(declare-fun x75 () Bool)        ; Declare Boolean variable for conjunction of x57 and x69
(declare-fun x77 () Bool)        ; Declare Boolean variable for OR condition
(declare-fun x15 () Bool)        ; Declare Boolean variable for checking if 2147483648 > rdi
(declare-fun x73 () Bool)        ; Declare Boolean variable for conjunction of x15 and x72
(declare-fun x26 () Bool)        ; Declare Boolean variable for checking if 2147483648 <= rdi
(declare-fun x70 () Bool)        ; Declare Boolean variable for conjunction of x26 and x69
(declare-fun x74 () Bool)        ; Declare Boolean variable for OR condition

; Assert that R equals 0
(assert (= x72 (= R 0)))         ; x72 is true if R equals 0

; Assert that rdi <= 268435455
(assert (= x42 (<= rdi 268435455))) ; x42 is true if rdi <= 268435455

; Assert that x76 is true if both x42 and x72 are true
(assert (= x76 (and x42 x72)))    ; x76 is true if x42 and x72 are true

; Assert that R equals 27
(assert (= x69 (= R 27)))         ; x69 is true if R equals 27

; Assert that rdi > 268435455
(assert (= x57 (> rdi 268435455))) ; x57 is true if rdi > 268435455

; Assert that x75 is true if both x57 and x69 are true
(assert (= x75 (and x57 x69)))    ; x75 is true if x57 and x69 are true

; Assert that x77 is true if either x75 or x76 is true
(assert (= x77 (or x75 x76)))     ; x77 is true if either x75 or x76 is true

; Assert that 2147483648 > rdi
(assert (= x15 (> 2147483648 rdi))) ; x15 is true if 2147483648 > rdi

; Assert that x73 is true if both x15 and x72 are true
(assert (= x73 (and x15 x72)))    ; x73 is true if x15 and x72 are true

; Assert that 2147483648 <= rdi
(assert (= x26 (<= 2147483648 rdi))) ; x26 is true if 2147483648 <= rdi

; Assert that x70 is true if both x26 and x69 are true
(assert (= x70 (and x26 x69)))    ; x70 is true if x26 and x69 are true

; Assert that x74 is true if either x70 or x73 is true
(assert (= x74 (or x70 x73)))     ; x74 is true if either x70 or x73 is true

; Assert that the final condition is satisfied
(assert (and x74 x77))            ; The overall condition to be satisfied

(check-sat)
