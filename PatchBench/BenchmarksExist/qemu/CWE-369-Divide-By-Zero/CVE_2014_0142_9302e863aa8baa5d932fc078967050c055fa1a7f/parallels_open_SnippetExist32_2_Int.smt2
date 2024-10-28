; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x9 () Int)           ; Declare integer variable x9
(declare-fun x71 () Bool)         ; Declare Boolean variable x71
(declare-fun x72 () Bool)         ; Declare Boolean variable x72
(declare-fun x67 () Bool)         ; Declare Boolean variable x67
(declare-fun x64 () Bool)         ; Declare Boolean variable x64
(declare-fun x48 () Bool)         ; Declare Boolean variable x48
(declare-fun x286 () Bool)        ; Declare Boolean variable x286

; Extract the lower 32 bits of rdi
(assert (= x9 (mod rdi 4294967296))) ; x9 is the lower 32 bits of rdi

; Assert that x71 is true if x9 is equal to 0
(assert (= x71 (= x9 0)))

; Assert that x72 is true if x71 is false
(assert (= x72 (not x71)))

; Extract the lower 22 bits of rdi and assert the condition
(assert (= x67 (<= (mod rdi 4194304) 4186127))) ; x67 is true if the lower 22 bits of rdi <= 4186127

; Assert that x64 is true if the bits 31 to 22 of rdi are equal to 0
(assert (= x64 (= (div rdi (exp 2 22)) 0)))

; Assert that x48 is true if x9 is less than or equal to 4186127
(assert (= x48 (<= x9 4186127)))

; Assert x286 as a combination of conditions
(assert (= x286 (or (and (not x48) (not (and x64 x67)) x72) (and x48 x64 x67 x72))))

; Final assertion for x286
(assert x286)

(check-sat)
