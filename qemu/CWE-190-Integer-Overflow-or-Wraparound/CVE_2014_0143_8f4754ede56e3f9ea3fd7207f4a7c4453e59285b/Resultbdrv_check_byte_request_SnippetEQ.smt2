; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x29 ((_ extract 22 0) rdi)))
 (let ((?x75 (concat ?x29 (_ bv0 9))))
 (let (($x76 (= R ?x75)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x27 (bvule ?x6 (_ bv4194303 32))))
 (let (($x78 (and $x27 $x76)))
 (let (($x71 (= (_ bv4294967291 32) R)))
 (let (($x60 (bvugt ?x6 (_ bv4194303 32))))
 (let (($x73 (and $x60 $x71)))
 (let (($x74 (or $x73 $x78)))
 (and $x76 $x74))))))))))))
(check-sat)
