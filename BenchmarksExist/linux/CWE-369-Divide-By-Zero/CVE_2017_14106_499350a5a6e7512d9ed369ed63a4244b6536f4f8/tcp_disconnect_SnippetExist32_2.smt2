; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x65 ((_ extract 31 0) (bvudiv_i (_ bv50 64) (concat (_ bv0 47) ((_ extract 15 0) rdi) (_ bv0 1))))))
 (let (($x88 (= ?x65 (_ bv0 32))))
 (let ((?x10 ((_ extract 15 0) rdi)))
 (let (($x61 (= ?x10 (_ bv0 16))))
 (let (($x62 (not $x61)))
 (and $x62 $x88)))))))
(check-sat)

