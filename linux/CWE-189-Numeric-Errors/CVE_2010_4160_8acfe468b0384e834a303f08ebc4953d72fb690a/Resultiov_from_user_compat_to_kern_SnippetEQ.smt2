; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x11 (bvadd (_ bv4294967295 32) ?x6)))
 (let (($x70 (= R ?x11)))
 (let ((?x15 (bvsub (_ bv2147483647 32) ?x6)))
 (let (($x20 (bvule (_ bv4294967295 32) ?x15)))
 (let (($x73 (and $x20 $x70)))
 (let (($x71 (= (_ bv2147483647 32) R)))
 (let (($x56 (bvugt (_ bv4294967295 32) ?x15)))
 (let (($x72 (and $x56 $x71)))
 (let (($x74 (or $x72 $x73)))
 (and $x70 $x74))))))))))))
(check-sat)
