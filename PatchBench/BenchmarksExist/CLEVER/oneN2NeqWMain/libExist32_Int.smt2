(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun x6 () Int)          ; Declare integer variable x6
(declare-fun x41 () Bool)        ; Declare Boolean variable x41
(declare-fun x42 () Bool)        ; Declare Boolean variable x42
(declare-fun x269 () Bool)       ; Declare Boolean variable x269
(declare-fun x278 () Bool)       ; Declare Boolean variable x278

; Extract the lower 32 bits of rdi
(assert (= x6 rdi )) ; x6 is the lower 32 bits of rdi

; Assert that x41 is true if x6 is less than or equal to 10
(assert (= x41 (<= x6 10)))

; Assert that x42 is true if x41 is false
(assert (= x42 (not x41)))

; Assert that x269 is true if either:
; - x42 is true, or
; - x41 is true and x6 equals 10
(assert (= x269 (or x42 (and x41 (= x6 10)))))

; Assert that x278 is true if either:
; - x42 is true, or
; - x41 is true and x6 equals 11
(assert (= x278 (or x42 (and x41 (= x6 11)))))

; Assert the final condition that both x278 and x269 are true
(assert (and x278 x269))

(check-sat)
