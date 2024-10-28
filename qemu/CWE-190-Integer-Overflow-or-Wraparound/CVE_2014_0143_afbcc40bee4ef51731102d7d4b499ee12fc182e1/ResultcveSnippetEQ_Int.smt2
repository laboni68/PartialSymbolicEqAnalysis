(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun R () Int)           ; Declare integer variable R

; Extract the lower 30 bits from rdi
(declare-fun x29 () Int)         ; Declare integer variable for extracted bits from rdi
(declare-fun x28 () Int)         ; Declare integer variable for concatenation result
(declare-fun x73 () Bool)        ; Declare Boolean variable for checking if R equals x68
(declare-fun x6 () Int)          ; Declare integer variable for extracted 32 bits from rdi
(declare-fun x33 () Bool)        ; Declare Boolean variable for checking if x6 <= 536870911
(declare-fun x77 () Bool)        ; Declare Boolean variable for conjunction of x33 and x73
(declare-fun x74 () Bool)        ; Declare Boolean variable for checking if R equals 4294967269
(declare-fun x59 () Bool)        ; Declare Boolean variable for checking if x6 > 536870911
(declare-fun x75 () Bool)        ; Declare Boolean variable for conjunction of x59 and x74
(declare-fun x70 () Bool)        ; Declare Boolean variable for final OR condition
(assert (/ rdi  2)) ; Shift right to eliminate upper bits



(check-sat)
