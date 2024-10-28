; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun rdx () Int)          ; Declare integer variable rdx
(declare-fun rsi () Int)          ; Declare integer variable rsi
(declare-fun x14 () Int)          ; Extracted lower bits of rdi
(declare-fun x11 () Int)          ; Extracted lower bits of rdx
(declare-fun x24 () Bool)         ; Condition for x11 <= x14
(declare-fun x9 () Int)           ; Extracted lower bits of rsi
(declare-fun x52 () Bool)         ; Condition for x14 <= x9
(declare-fun x53 () Bool)         ; Negation of x52
(declare-fun x12 () Int)          ; Sum of x11 and x9
(declare-fun x96 () Bool)         ; Condition for x12 <= x14
(declare-fun x99 () Bool)         ; Negation of x96
(declare-fun x1022 () Bool)       ; Final condition based on logical operations

; Extract lower bits of rdi, rdx, and rsi
(assert (= x14 rdi ))  ; x14 is the lower 32 bits of rdi
(assert (= x11 rdx ))  ; x11 is the lower 32 bits of rdx
(assert (= x9 rsi ))   ; x9 is the lower 32 bits of rsi

; Assert that x24 is true if x11 <= x14
(assert (= x24 (<= x11 x14)))

; Assert that x52 is true if x14 <= x9
(assert (= x52 (<= x14 x9)))

; Assert that x53 is true if x52 is false
(assert (= x53 (not x52)))

; Compute x12 as the sum of x11 and x9
(assert (= x12 (+ x11 x9)))

; Assert that x96 is true if x12 <= x14
(assert (= x96 (<= x12 x14)))

; Assert that x99 is true if x96 is false
(assert (= x99 (not x96)))

; Final condition based on logical operations
(assert (= x1022 (or 
    (and (or (not x24) (and x99 x53 x24) (and x52 x24)) x99)
    (and x96 x53 x24)
)))

; Assert the final condition that x1022 is true
(assert x1022)

(check-sat)
