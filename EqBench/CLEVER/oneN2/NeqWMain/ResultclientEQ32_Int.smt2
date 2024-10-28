(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun x6 () Int)          ; Declare integer variable x6
(declare-fun x181 () Bool)       ; Declare Boolean variable x181
(declare-fun x41 () Bool)        ; Declare Boolean variable x41
(declare-fun x164 () Bool)       ; Declare Boolean variable x164
(declare-fun x39 () Bool)        ; Declare Boolean variable x39
(declare-fun x175 () Int)        ; Declare integer variable x175
(declare-fun x392 () Bool)       ; Declare Boolean variable x392
(declare-fun x11 () Bool)        ; Declare Boolean variable x11
(declare-fun x169 () Bool)       ; Declare Boolean variable x169
(declare-fun x393 () Bool)       ; Declare Boolean variable x393
(declare-fun x171 () Bool)       ; Declare Boolean variable x171
(declare-fun x159 () Bool)       ; Declare Boolean variable x159
(declare-fun x176 () Bool)       ; Declare Boolean variable x176
(declare-fun x394 () Bool)       ; Declare Boolean variable x394
(declare-fun x52 () Bool)        ; Declare Boolean variable x52
(declare-fun x178 () Bool)       ; Declare Boolean variable x178
(declare-fun x391 () Bool)       ; Declare Boolean variable x391

; Extract lower 32 bits from rdi
(assert (= x6 rdi)) ; x6 is the lower 32 bits of rdi

; Assert that x181 is true if R equals x6
(assert (= x181 (= R x6)))

; Assert that x41 is true if x6 is less than 10
(assert (= x41 (< x6 10)))

; Assert that x164 is true if x6 is less than 11
(assert (= x164 (< x6 11)))

; Assert that x39 is true if x164, x41, and x181 are all true
(assert (= x39 (and x164 x41 x181)))

; Compute x175 as x6 plus 1
(assert (= x175 (+ x6 1)))

; Assert that x392 is true if R equals x175
(assert (= x392 (= R x175)))

; Assert that x11 is true if x6 is greater than or equal to 10
(assert (= x11 (>= x6 10)))

; Assert that x169 is true if x6 is less than or equal to x175
(assert (= x169 (<= x6 x175)))

; Assert that x393 is true if x169, x11, and x392 are all true
(assert (= x393 (and x169 x11 x392)))

; Assert that x171 is true if R equals 11
(assert (= x171 (= R 11)))

; Assert that x159 is true if x6 is greater than or equal to 11
(assert (= x159 (>= x6 11)))

; Assert that x176 is true if x159, x41, and x171 are all true
(assert (= x176 (and x159 x41 x171)))

; Assert that x394 is true if either x176, x393, or x39 is true
(assert (= x394 (or x176 x393 x39)))

; Assert that x52 is true if x6 is less than or equal to itself (always true)
(assert (= x52 (<= x6 x6)))

; Assert that x178 is true if x52, x11, and x181 are all true
(assert (= x178 (and x52 x11 x181)))

; Assert that x391 is true if either x176, x178, or x39 is true
(assert (= x391 (or x176 x178 x39)))

; Assert that the final result is true if both x391 and x394 are true
(assert (and x391 x394))

(check-sat)
