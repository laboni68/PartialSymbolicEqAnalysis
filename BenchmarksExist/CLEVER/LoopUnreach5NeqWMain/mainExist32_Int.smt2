(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x64 () Bool)         ; Declare Boolean variable x64
(declare-fun x65 () Bool)         ; Declare Boolean variable x65
(declare-fun x63 () Bool)         ; Declare Boolean variable x63
(declare-fun x68 () Bool)         ; Declare Boolean variable x68
(declare-fun x248 () Bool)        ; Declare Boolean variable x248
(declare-fun x250 () Bool)        ; Declare Boolean variable x250
(declare-fun x249 () Bool)        ; Declare Boolean variable x249

; Extract the lower bit (bit 0) of rdi
(assert (= (mod rdi 4294967296) rdi)) ; rdi is treated as a 32-bit integer

; Assert that x64 is true if rdi <= 4
(assert (= x64 (<= rdi 4)))

; Assert that x65 is true if x64 is false
(assert (= x65 (not x64)))

; Assert that x63 is true if rdi <= 6
(assert (= x63 (<= rdi 6)))

; Assert that x68 is true if x63 is false
(assert (= x68 (not x63)))

; Assert that x248 is true if both x68 and x65 are true
(assert (= x248 (and x68 x65)))

; Assert that x250 is true if either:
; - x64 is true, or 
; - x248 is true
(assert (= x250 (or x64 x248)))

; Assert that x249 is true if either:
; - x64 is true, or 
; - the MSB of rdi is 0 and x63 and x65 are true, or 
; - x248 is true
(assert (= x249 (or x64 (and (= (mod rdi 2) 0) x63 x65) x248)))

; Assert the final condition that both x249 and x250 are true
(assert (and x249 x250))

(check-sat)
