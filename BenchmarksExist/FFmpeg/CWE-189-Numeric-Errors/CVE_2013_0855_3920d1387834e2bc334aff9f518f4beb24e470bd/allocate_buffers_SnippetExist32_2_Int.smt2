(set-info :status unknown)
(set-logic QF_LIA)

(declare-fun rdi () Int)

(declare-fun x48 () Bool)
(declare-fun x49 () Bool)

(assert (= x48 (>= rdi 536870912))) ; Checking if bits 31-29 of rdi are 0
(assert (= x49 (<= rdi 1073741824)))

(assert (and x48 x49))


(check-sat)
