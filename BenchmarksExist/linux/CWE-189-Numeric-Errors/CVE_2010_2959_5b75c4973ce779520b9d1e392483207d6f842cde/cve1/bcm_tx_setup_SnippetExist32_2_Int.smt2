(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun x9 () Int) ; Declare integer variable x9
(declare-fun x44 () Bool) ; Declare Boolean variable x44
(declare-fun x45 () Bool) ; Declare Boolean variable x45
(declare-fun x63 () Bool) ; Declare Boolean variable x63
(declare-fun x60 () Bool) ; Declare Boolean variable x60
(declare-fun x64 () Bool) ; Declare Boolean variable x64
(declare-fun x65 () Bool) ; Declare Boolean variable x65
(declare-fun x250 () Bool) ; Declare Boolean variable x250
(declare-fun x247 () Bool) ; Declare Boolean variable x247
(declare-fun x246 () Bool) ; Declare Boolean variable x246

; Extract the lower 32 bits of rdi
(assert (= x9 rdi))

; Assert that x44 is true if x9 equals 0
(assert (= x44 (= x9 0)))

; Assert that x45 is true if x44 is false
(assert (= x45 (not x44)))

; Assert that x63 is true if the lower 9 bits of rdi are less than or equal to 256
(assert (= x63 (and (<= rdi 256) (>= rdi 0))))


; Assert that x64 is true if both x60 and x63 are true
(assert (= x64 x63))

; Assert that x65 is true if x64 is false
(assert (= x65 (not x64)))

; Assert that x250 is true if x44 is true, or x65 and x45 are both true
(assert (= x250 (or x44 (and x65 x45))))

; Assert that x247 is true if x45, x60, and x63 are all true
(assert (= x247 (and x45 x63)))

; Assert that x246 is true if either x247 or x250 is true
(assert (= x246 (or x247 x250)))

; Assert the final condition that x246 is true
(assert x246)

(check-sat)
