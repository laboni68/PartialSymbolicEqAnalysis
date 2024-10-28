; benchmark generated from python API
(set-info :status unknown)
(declare-fun rsi () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rsi)))
 (let ((?x8 (bvmul (_ bv4294967295 32) ?x6)))
 (let (($x217 (= ?x8 (_ bv0 32))))
 (and $x217)))))
(check-sat)

