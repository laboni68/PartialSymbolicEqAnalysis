; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x52 (= ?x6 (_ bv2147483648 32))))
 (and $x52))))
(check-sat)

