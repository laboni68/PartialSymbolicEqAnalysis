; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x26 ((_ extract 15 0) rdi)))
 (let ((?x27 (bvadd (_ bv1 16) ?x26)))
 (let ((?x14 (concat (_ bv0 16) ?x27)))
 (let (($x85 (= R ?x14)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x12 (bvule ?x6 (_ bv4194303 32))))
 (let (($x82 (and $x12 $x85)))
 (let (($x79 (= (_ bv4294967295 32) R)))
 (let (($x59 (bvugt ?x6 (_ bv4194303 32))))
 (let (($x70 (and $x59 $x79)))
 (let (($x84 (or $x70 $x82)))
 (and $x85 $x84)))))))))))))
(check-sat)
