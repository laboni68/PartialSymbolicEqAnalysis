; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x50 (= ((_ extract 31 22) rdi) (_ bv0 10))))
 (and $x50)))
(check-sat)

