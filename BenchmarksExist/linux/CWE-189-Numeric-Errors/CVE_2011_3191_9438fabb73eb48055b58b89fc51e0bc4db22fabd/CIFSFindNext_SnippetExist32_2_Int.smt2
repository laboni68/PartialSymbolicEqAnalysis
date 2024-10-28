(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun x58 () Bool) ; Declare Boolean variable x58
(declare-fun x9 () Int) ; Declare integer variable x9 (full 32-bit value of rdi)
(declare-fun x42 () Bool) ; Declare Boolean variable x42
(declare-fun x240 () Bool) ; Declare Boolean variable x240
(declare-fun x60 () Bool) ; Declare Boolean variable x60
(declare-fun x43 () Bool) ; Declare Boolean variable x43
(declare-fun x239 () Bool) ; Declare Boolean variable x239
(declare-fun x241 () Bool) ; Declare Boolean variable x241

; Extract the full 32-bit value of rdi
(assert (= x9 rdi))

; x58 is true if the upper 20 bits of rdi (bits 12 to 31) are zero (rdi < 2^12)
(assert (= x58 (< rdi 4096))) ; 4096 = 2^12

; x42 is true if x9 is less than or equal to 4095 (signed comparison)
(assert (= x42 (<= x9 4095)))

; x240 is true if both x42 and x58 are true
(assert (= x240 (and x42 x58)))

; x60 is the negation of x58
(assert (= x60 (not x58)))

; x43 is the negation of x42
(assert (= x43 (not x42)))

; x239 is true if both x43 and x60 are true
(assert (= x239 (and x43 x60)))

; x241 is true if either x239 or x240 is true
(assert (= x241 (or x239 x240)))

; Assert that x241 is true
(assert x241)
(check-sat)
