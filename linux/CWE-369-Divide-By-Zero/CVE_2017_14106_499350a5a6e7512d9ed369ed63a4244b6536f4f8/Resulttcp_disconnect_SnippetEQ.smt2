; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x88 (= (_ bv0 32) R)))
 (let ((?x84 (concat (concat (_ bv0 47) ((_ extract 15 0) rdi)) (_ bv0 1))))
 (let ((?x85 (bvudiv (_ bv50 64) ?x84)))
 (let ((?x86 ((_ extract 31 0) ?x85)))
 (let (($x87 (= R ?x86)))
 (let ((?x10 ((_ extract 15 0) rdi)))
 (let ((?x12 (concat (_ bv0 16) ?x10)))
 (let ((?x15 (bvshl ?x12 (_ bv1 32))))
 (let (($x25 (and (distinct (_ bv0 32) ?x15) true)))
 (and $x25 $x87 $x88)))))))))))
(check-sat)
