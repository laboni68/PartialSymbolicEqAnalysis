(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun rsi () Int) ; Declare integer variable rsi
(declare-fun rdx () Int) ; Declare integer variable rdx
(declare-fun x9 () Int) 
(declare-fun x66 () Bool) 
(declare-fun x64 () Bool) 
(declare-fun x71 () Bool) 
(declare-fun x409 () Bool) 
(declare-fun x74 () Bool)
(declare-fun x403 () Bool)  

; Extract the lower 32 bits of rdi
(assert (= x9 rdi ))

; Assert that x66 is true if the lower 32 bits of rdi are equal to 2
(assert (= x66 (= x9 2)))

; Assert that x64 is true if the upper 16 bits of rsi are equal to 0
(assert (= x64 (= (div rsi 65536) 0)))

; Assert that x71 is true if x64 is false
(assert (= x71 (not x64)))

; Assert that x409 is true if:
; - Either the lower 32 bits of rdx are equal to 0, x64 is true, and x66 is true
; - Or x71 is true and x66 is true
; - Or x71 and x66 are both true
(assert (= x409 (and (or (and (= rdx 0) x64 x66)
                         (and x71 x66)) 
                    x71 x66)))

; Assert that x74 is true if x66 is false
(assert (= x74 (not x66)))

; Assert that x403 is true if:
; - Either x74 is true
; - Or the lower 32 bits of rdx are not equal to 0, x64 is true, and x66 is true
; - Or x409 is true
(assert (= x403 (or x74 
                    (and (not (= rdx  0)) x64 x66) 
                    x409)))

; Assert the final condition that both x403 and x409 are true
(assert x403)

(check-sat)
