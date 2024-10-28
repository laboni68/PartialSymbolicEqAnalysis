(set-info :status unknown)
(set-logic QF_LIA)

(declare-fun rdi () Int)

(declare-fun x58 () Bool)
(declare-fun x9 () Int)
(declare-fun x42 () Bool)
(declare-fun x247 () Bool)
(declare-fun x60 () Bool)
(declare-fun x43 () Bool)
(declare-fun x246 () Bool)
(declare-fun x248 () Bool)

(assert (= x58 (and (< rdi 32) (>= rdi 0)))) ; Checking if bits 31-5 are 0

(assert (= x9 rdi)) ; Extracting full 32-bit rdi as integer
(assert (= x42 (<= x9 31))) ; Checking if rdi <= 31
(assert (= x247 (and x42 x58))) ; Condition where both checks hold

(assert (= x60 (not x58))) ; Negation of x58 condition

(assert (= x43 (not x42))) ; Negation of x42 condition
(assert (= x246 (and x43 x60))) ; Condition for complement case
(assert (= x248 (or x246 x247))) ; Final OR condition
(assert x248)

(check-sat)
