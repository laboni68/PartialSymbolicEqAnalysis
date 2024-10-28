; benchmark generated from python API
(set-info :status unknown)
(set-logic QF_LIA) ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int) ; Declare integer variable rdi
(declare-fun rsi () Int) ; Declare integer variable rsi
(declare-fun x9 () Int) ; Declare integer variable x9
(declare-fun x15 () Int) ; Declare integer variable x15
(declare-fun x100 () Int) ; Declare integer variable x100
(declare-fun x101 () Int) ; Declare integer variable x101
(declare-fun x117 () Bool) ; Declare Boolean variable x117
(declare-fun x115 () Bool) ; Declare Boolean variable x115
(declare-fun x62 () Bool) ; Declare Boolean variable x62
(declare-fun x54 () Bool) ; Declare Boolean variable x54
(declare-fun x75 () Bool) ; Declare Boolean variable x75

; Extract the lower 32 bits of rdi
(assert (= x9 (mod rdi 4294967296))) ; x9 is the lower 32 bits of rdi

; Extract the lower 32 bits of rsi
(assert (= x15 (mod rsi 4294967296))) ; x15 is the lower 32 bits of rsi

; Assert the condition for x117
(assert (= x117 (not (<= (ite (<= x9 16) 16 x9) 0))))

; Assert the condition for x115
(assert (= x115 (not (<= (ite (<= x15 13) 13 x15) 0))))

; Calculate x100 based on the condition of x62
(assert (= x100 (ite (<= x15 13) 13 (div rsi (exp 2 27)))))

; Calculate x101
(assert (= x101 (+ 128 x100)))

; Assert the condition for x54
(assert (= x54 (<= x9 16)))

; Calculate x90 based on the condition of x54
(assert (= x90 (ite x54 16 (div rdi (exp 2 27)))))

; Calculate x91
(assert (= x91 (+ 128 x90)))

; Assert the condition for x144
(assert (= (bvsle (* x91 x101) (_ bv268435454 28)) true))

; Calculate x63 based on the condition of x62
(assert (= x63 (ite (<= x15 13) 13 x15)))

; Calculate x65
(assert (= x65 (+ 128 x63)))

; Calculate x66
(assert (= x66 (concat (_ bv0 32) x65)))

; Calculate x55 based on the condition of x54
(assert (= x55 (ite x54 16 x9)))

; Calculate x60
(assert (= x60 (+ 128 x55)))

; Calculate x61
(assert (= x61 (concat (_ bv0 32) x60)))

; Calculate x67
(assert (= x67 (* x61 x66)))

; Assert the final condition for x75
(assert (= x75 (= ((_ extract 63 28) x67) (_ bv0 36))))

; Assert the overall condition that combines everything
(assert (and x75 (bvsle (* x91 x101) (_ bv268435454 28)) x115 x117))

(check-sat)
