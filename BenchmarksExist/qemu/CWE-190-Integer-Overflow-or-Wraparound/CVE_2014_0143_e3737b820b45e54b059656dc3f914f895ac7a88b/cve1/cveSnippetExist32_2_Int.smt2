(set-logic QF_LIA)                       ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun rdi () Int)                 ; Declare integer variable rdi
(declare-fun x51 () Bool)                ; Declare Boolean variable x51
(declare-fun x48 () Bool)                ; Declare Boolean variable x48
(declare-fun x20 () Int)                 ; Declare integer variable for the extracted bits

; Extract the lower 21 bits of rdi
(assert (= x20 rdi ))      ; x20 corresponds to (_ extract 20 0) of rdi

; Assert that x51 is true if x20 <= 1048576
(assert (= x51 (<= x20 1048576)))

(assert (= x51 true))


(check-sat)
