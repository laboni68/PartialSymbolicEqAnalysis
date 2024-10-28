(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun R () Int)           ; Declare integer variable R

; Extract the lower 23 bits from rdi
(declare-fun x29 () Int)         ; Declare integer variable for extracted bits from rdi
(declare-fun x75 () Int)         ; Declare integer variable for concatenation result
(declare-fun x76 () Bool)        ; Declare Boolean variable for checking if R equals x75
(declare-fun x6 () Int)          ; Declare integer variable for extracted 32 bits from rdi
(declare-fun x27 () Bool)        ; Declare Boolean variable for checking if x6 <= 4194303
(declare-fun x78 () Bool)        ; Declare Boolean variable for conjunction of x27 and x76
(declare-fun x71 () Bool)        ; Declare Boolean variable for checking if R equals 4294967291
(declare-fun x60 () Bool)        ; Declare Boolean variable for checking if x6 > 4194303
(declare-fun x73 () Bool)        ; Declare Boolean variable for conjunction of x60 and x71
(declare-fun x74 () Bool)        ; Declare Boolean variable for final OR condition

; Assert that R equals the concatenated value
(assert (= x76 (= R rdi)))               ; x76 is true if R equals x75

(assert (= x6 rdi))

; Assert that x27 is true if x6 <= 4194303
(assert (= x27 (<= x6 4194303))) ; x27 is true if x6 <= 4194303

; Assert that x78 is true if both x27 and x76 are true
(assert (= x78 (and x27 x76)))   ; x78 is true if x27 and x76 are true

; Assert that x71 is true if R equals 4294967291
(assert (= x71 (= R 4294967291))) ; x71 is true if R equals 4294967291

; Assert that x60 is true if x6 > 4194303
(assert (= x60 (> x6 4194303)))   ; x60 is true if x6 > 4194303

; Assert that x73 is true if both x60 and x71 are true
(assert (= x73 (and x60 x71)))    ; x73 is true if x60 and x71 are true

; Assert that x74 is true if either x73 or x78 is true
(assert (= x74 (or x73 x78)))     ; x74 is true if either x73 or x78 is true

; Assert that the final condition is satisfied
(assert (and x76 x74))            ; The overall condition to be satisfied

(check-sat)
