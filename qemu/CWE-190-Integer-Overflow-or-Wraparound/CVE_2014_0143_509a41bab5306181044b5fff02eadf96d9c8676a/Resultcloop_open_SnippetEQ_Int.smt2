(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun R () Int)           ; Declare integer variable R

; Extract the lower 29 bits from rdi
(declare-fun x28 () Int)         ; Declare integer variable for extracted bits from rdi
(declare-fun x29 () Int)         ; Declare integer variable for concatenation result
(declare-fun x70 () Bool)        ; Declare Boolean variable for checking if R equals x29
(declare-fun x6 () Int)          ; Declare integer variable for extracted 32 bits from rdi
(declare-fun x26 () Bool)        ; Declare Boolean variable for checking if x6 <= 536870911
(declare-fun x73 () Bool)        ; Declare Boolean variable for conjunction of x26 and x70
(declare-fun x71 () Bool)        ; Declare Boolean variable for checking if R equals 4294967274
(declare-fun x59 () Bool)        ; Declare Boolean variable for checking if x6 > 536870911
(declare-fun x68 () Bool)        ; Declare Boolean variable for conjunction of x59 and x71
(declare-fun x75 () Bool)        ; Declare Boolean variable for final OR condition

; Assert that R equals the concatenated value
(assert (= x70 (= R rdi)))               ; x70 is true if R equals x29


; Assert that x26 is true if x6 is less than or equal to 536870911
(assert (= x26 (<= rdi 536870911))) ; x26 is true if x6 <= 536870911

; Assert that x73 is true if both x26 and x70 are true
(assert (= x73 (and x26 x70)))    ; x73 is true if x26 and x70 are true

; Assert that x71 is true if R equals 4294967274
(assert (= x71 (= R 4294967274))) ; x71 is true if R equals 4294967274

; Assert that x59 is true if x6 is greater than 536870911
(assert (= x59 (> rdi 536870911))) ; x59 is true if x6 > 536870911

; Assert that x68 is true if both x59 and x71 are true
(assert (= x68 (and x59 x71)))    ; x68 is true if x59 and x71 are true

; Assert that x75 is true if either x68 or x73 is true
(assert (= x75 (or x68 x73)))     ; x75 is true if either x68 or x73 is true

; Assert that the final condition is satisfied
(assert (and x70 x75))            ; The overall condition to be satisfied

(check-sat)
