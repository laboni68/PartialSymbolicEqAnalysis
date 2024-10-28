; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x51 (bvule ((_ extract 20 0) rdi) (_ bv1048576 21))))
 (let (($x48 (= ((_ extract 31 21) rdi) (_ bv0 11))))
 (and $x48 $x51))))
(check-sat)

