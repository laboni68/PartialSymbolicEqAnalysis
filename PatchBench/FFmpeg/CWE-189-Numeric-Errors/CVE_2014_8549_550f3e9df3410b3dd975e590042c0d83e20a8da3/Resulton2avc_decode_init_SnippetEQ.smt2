; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x48 (= (_ bv1 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x11 (bvule ?x6 (_ bv2 32))))
 (let (($x52 (and $x11 $x48)))
 (let (($x50 (= (_ bv3131621040 32) R)))
 (let (($x43 (bvugt ?x6 (_ bv2 32))))
 (let (($x51 (and $x43 $x50)))
 (let (($x53 (or $x51 $x52)))
 (and $x48 $x53))))))))))
(check-sat)