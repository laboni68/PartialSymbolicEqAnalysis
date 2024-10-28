; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x217 (or (and (not (bvsle (_ bv2147483648 64) rdi)) (= ((_ extract 63 28) rdi) (_ bv0 36))) (and (bvsle (_ bv2147483648 64) rdi) (not (= ((_ extract 63 28) rdi) (_ bv0 36)))))))
 (and $x217)))
(check-sat)
