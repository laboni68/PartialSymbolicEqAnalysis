; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x75 ((_ extract 22 0) rdi)))
 (let ((?x62 (concat ?x75 (_ bv0 9))))
 (let (($x72 (= R ?x62)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x11 (bvule ?x6 (_ bv4194303 32))))
 (let (($x66 (and $x11 $x72)))
 (let (($x77 (= (_ bv4294967291 32) R)))
 (let (($x46 (bvugt ?x6 (_ bv4194303 32))))
 (let (($x67 (and $x46 $x77)))
 (let (($x74 (or $x67 $x66)))
 (and $x74 $x72))))))))))))
(check-sat)
