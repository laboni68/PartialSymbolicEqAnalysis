(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x84 () Bool)         ; Declare Boolean variable x84
(declare-fun x85 () Bool)         ; Declare Boolean variable x85
(declare-fun x83 () Bool)         ; Declare Boolean variable x83
(declare-fun x89 () Bool)         ; Declare Boolean variable x89
(declare-fun x912 () Bool)        ; Declare Boolean variable x912
(declare-fun x914 () Bool)        ; Declare Boolean variable x914
(declare-fun x913 () Bool)        ; Declare Boolean variable x913

; Assert that x84 is true if rdi <= 12
(assert (= x84 (<= rdi 12)))

; Assert that x85 is true if x84 is false
(assert (= x85 (not x84)))

; Assert that x83 is true if rdi <= 15
(assert (= x83 (<= rdi 15)))

; Assert that x89 is true if x83 is false
(assert (= x89 (not x83)))

; Assert that x912 is true if both x89 and x85 are true
(assert (= x912 (and x89 x85)))

; Assert that x914 is true if either:
; - x84 is true, or 
; - x912 is true
(assert (= x914 (or x84 x912)))

; Assert that x913 is true if either:
; - x84 is true, or 
; - x83 is true, x85 is true, and rdi = 0
(assert (= x913 (or x84 (and x83 x85 (= rdi 0)) x912)))

; Assert the final condition that both x913 and x914 are true
(assert (and x913 x914))

(check-sat)
