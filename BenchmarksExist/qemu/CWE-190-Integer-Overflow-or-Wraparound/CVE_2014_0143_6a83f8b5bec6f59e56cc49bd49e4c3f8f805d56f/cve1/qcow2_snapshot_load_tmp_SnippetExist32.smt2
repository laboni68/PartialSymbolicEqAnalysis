; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x11 ((_ extract 31 0) rdi)))
 (let (($x39 (bvsle ?x11 (_ bv33554432 32))))
 (and $x39))))
(check-sat)
