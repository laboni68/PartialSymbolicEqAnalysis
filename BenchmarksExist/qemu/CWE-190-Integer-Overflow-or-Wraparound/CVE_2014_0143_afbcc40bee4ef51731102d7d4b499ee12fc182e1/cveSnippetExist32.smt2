; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x48 (= ((_ extract 31 29) rdi) (_ bv0 3))))
 (and $x48)))
(check-sat)
