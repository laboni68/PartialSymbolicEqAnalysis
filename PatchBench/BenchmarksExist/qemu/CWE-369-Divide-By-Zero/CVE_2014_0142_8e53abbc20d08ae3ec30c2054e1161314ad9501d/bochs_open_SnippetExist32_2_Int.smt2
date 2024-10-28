; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x85 () Bool)         ; Declare Boolean variable x85
(declare-fun x82 () Bool)         ; Declare Boolean variable x82
(declare-fun x63 () Int)          ; Declare integer variable x63
(declare-fun x64 () Bool)         ; Declare Boolean variable x64
(declare-fun x67 () Bool)         ; Declare Boolean variable x67
(declare-fun x68 () Bool)         ; Declare Boolean variable x68


; Assert that x85 is true if lower 24 bits of rdi <= 8388608
(assert (= x85 (and (<= rdi 8388608) (>= rdi 0))))

; Assert that x82 is true if the bits 31 to 24 of rdi are equal to 0
(assert (= x82 (= (div rdi 16777216) 0)))

; Assert that x67 is true if x9 (the full rdi) is equal to 0
(assert (= x67 (= rdi 0)))

; Assert that x68 is true if x67 is false
(assert (= x68 (not x67)))

; Extract upper bits and check their condition
(assert (= x64 (<= 9223372036854775807 4294967295)))

; Assert that x65 is true if x64 is false
(declare-fun x65 () Bool)
(assert (= x65 (not x64)))

; Combine all conditions into the final assertion
(assert (and x65 x68 x82 x85))

(check-sat)
