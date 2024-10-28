; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x50 (bvule ((_ extract 1 0) rdi) (_ bv2 2))))
 (let (($x47 (= ((_ extract 31 2) rdi) (_ bv0 30))))
 (and $x47 $x50))))
(check-sat)
