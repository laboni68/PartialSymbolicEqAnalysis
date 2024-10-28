(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun x30455 () Bool)     ; Declare Boolean variable for condition R = 4294967274
(declare-fun x6 () Int)          ; Declare integer variable for extracted bits from rdi
(declare-fun x43 () Bool)        ; Declare Boolean variable for checking if the lower bits of rdi are 0
(declare-fun x29407 () Bool)     ; Declare Boolean variable for conjunction of x43 and x30455
(declare-fun x17 () Bool)        ; Declare Boolean variable for checking if the lower bits of rdi are distinct from 0
(declare-fun x70970 () Bool)     ; Declare Boolean variable for checking if x6 < 8388608
(declare-fun x30635 () Bool)     ; Declare Boolean variable for conjunction of x70970, x17, and x30455
(declare-fun x70439 () Bool)     ; Declare Boolean variable for checking if R = 4294967276
(declare-fun x66 () Bool)        ; Declare Boolean variable for checking if x6 <= 8388608
(declare-fun x7 () Int)          ; Declare integer variable for zero-extended x6
(declare-fun x11 () Int)         ; Declare integer variable for sign-extended x7
(declare-fun x12 () Int)         ; Declare integer variable for division result
(declare-fun x13 () Int)         ; Declare integer variable for extracted bits from x12
(declare-fun x32 () Bool)        ; Declare Boolean variable for checking if x13 < 4294967295
(declare-fun x30449 () Bool)     ; Declare Boolean variable for conjunction of x32, x66, and x17, and x70439
(declare-fun x30249 () Bool)     ; Declare Boolean variable for the result of OR operations
(declare-fun x30443 () Bool)     ; Declare Boolean variable for checking if R = 0
(declare-fun x58 () Bool)        ; Declare Boolean variable for checking if 4294967295 >= x13
(declare-fun x30176 () Bool)     ; Declare Boolean variable for conjunction of x58 and x17 and x30443
(declare-fun x30262 () Bool)     ; Declare Boolean variable for conjunction of x32 and x17 and x70439
(declare-fun x30448 () Bool)     ; Declare Boolean variable for the result of OR operations

; Assert that R equals 4294967274
(assert (= x30455 (= R 4294967274)))         ; x30455 is true if R equals 4294967274

; Extract the lower 32 bits from rdi
(assert (= x6 rdi)) ; x6 is the lower 32 bits of rdi

; Assert that x43 is true if x6 is equal to 0
(assert (= x43 (= x6 0)))        ; x43 is true if x6 = 0

; Assert that x29407 is true if both x43 and x30455 are true
(assert (= x29407 (and x43 x30455))) ; x29407 is true if x43 and x30455 are true

; Assert that x17 is true if the lower 32 bits of rdi are distinct from 0
(assert (= x17 (not (= x6 0))))   ; x17 is true if x6 is not 0

; Assert that x70970 is true if x6 < 8388608
(assert (= x70970 (< x6 8388608))) ; x70970 is true if x6 < 8388608

; Assert that x30635 is true if x70970, x17, and x30455 are true
(assert (= x30635 (and x70970 x17 x30455))) ; x30635 is true if x70970, x17, and x30455 are true

; Assert that x70439 is true if R equals 4294967276
(assert (= x70439 (= R 4294967276))) ; x70439 is true if R equals 4294967276

; Assert that x66 is true if x6 <= 8388608
(assert (= x66 (<= x6 8388608)))     ; x66 is true if x6 <= 8388608

; Assert that x7 is zero-extended x6
(assert (= x7 x6))  ; x7 is the zero extension of x6

; Assert that x11 is sign-extended x7
(assert (= x11  x7)) ; x11 is the sign extension of x7

; Assert that x12 is the division of maximum int by x11
;(assert (= x12 ( 9223372036854775807 x11))) ; x12 is the division result



(check-sat)
