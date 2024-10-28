(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun x47 () Bool)        ; Declare Boolean variable x47
(declare-fun x50 () Bool)        ; Declare Boolean variable x50
(declare-fun x10 () Bool)        ; Declare Boolean variable x10
(declare-fun x51 () Bool)        ; Declare Boolean variable x51
(declare-fun x36 () Bool)        ; Declare Boolean variable x36
(declare-fun x48 () Bool)        ; Declare Boolean variable x48
(declare-fun x52 () Bool)        ; Declare Boolean variable x52

; Assert that x47 is true if and only if R equals the lower 32 bits of rdi
(assert (= x47 (= R  rdi)))

; Assert that x50 is true if R equals 255
(assert (= x50 (= R 255)))

; Assert that x10 is true if the lower 32 bits of rdi equals 0
(assert (= x10 (= rdi 0)))

; Assert that x51 is true if both x10 and x50 are true
(assert (= x51 (and x10 x50)))

; Assert that x36 is true if the lower 32 bits of rdi is not equal to 0
(assert (= x36 (!= rdi 0)))

; Assert that x48 is true if both x36 and x47 are true
(assert (= x48 (and x36 x47)))

; Assert that x52 is true if either x48 or x51 is true
(assert (= x52 (or x48 x51)))

; Assert that the final result is true if both x52 and x47 are true
(assert (and x52 x47))

(check-sat)
