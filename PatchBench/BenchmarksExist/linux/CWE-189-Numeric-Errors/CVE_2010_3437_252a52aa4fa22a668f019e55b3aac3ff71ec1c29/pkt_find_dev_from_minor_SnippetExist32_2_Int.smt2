(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun x58 () Bool) ; Declare Boolean variable x58
(declare-fun x9 () Int) ; Declare integer variable x9 (full 32-bit value of rdi)
(declare-fun x42 () Bool) ; Declare Boolean variable x42
(declare-fun x249 () Bool) ; Declare Boolean variable x249
(declare-fun x60 () Bool) ; Declare Boolean variable x60
(declare-fun x43 () Bool) ; Declare Boolean variable x43
(declare-fun x248 () Bool) ; Declare Boolean variable x248
(declare-fun x250 () Bool) ; Declare Boolean variable x250

; x58 is true if the upper 29 bits of rdi are zero (equivalent to checking if rdi < 8)
;(assert (= x58 (= (div rdi 8) 0)))
(assert (= x58 (and (< rdi 8) (>= rdi 0))))


; Extract the full 32-bit value of rdi
(assert (= x9 rdi))

; x42 is true if x9 is less than or equal to 7
(assert (= x42 (<= x9 7)))

; x249 is true if both x42 and x58 are true
(assert (= x249 (and x42 x58)))

; x60 is the negation of x58
(assert (= x60 (not x58)))

; x43 is the negation of x42
(assert (= x43 (not x42)))

; x248 is true if both x43 and x60 are true
(assert (= x248 (and x43 x60)))

; x250 is true if either x248 or x249 is true
(assert (= x250 (or x248 x249)))

; Assert that x250 is true
(assert x250)
(check-sat)
