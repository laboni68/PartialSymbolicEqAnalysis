; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x29 ((_ extract 29 0) rdi)))
 (let ((?x68 (concat ?x29 (_ bv0 2))))
 (let (($x73 (= R ?x68)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x33 (bvule ?x6 (_ bv536870911 32))))
 (let (($x77 (and $x33 $x73)))
 (let (($x74 (= (_ bv4294967269 32) R)))
 (let (($x59 (bvugt ?x6 (_ bv536870911 32))))
 (let (($x75 (and $x59 $x74)))
 (let (($x70 (or $x75 $x77)))
 (and $x73 $x70))))))))))))
(check-sat)
