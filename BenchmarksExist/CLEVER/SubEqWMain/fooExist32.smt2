; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let (($x788 (= (bvmul (_ bv2 32) ((_ extract 31 0) rsi)) (bvmul (_ bv2 32) ((_ extract 31 0) rdi)))))
 (and $x788)))
(check-sat)

