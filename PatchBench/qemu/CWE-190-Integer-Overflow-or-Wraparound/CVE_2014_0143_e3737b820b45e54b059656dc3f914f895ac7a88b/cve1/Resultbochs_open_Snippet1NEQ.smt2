; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x63 ((_ extract 29 0) rdi)))
 (let ((?x62 (concat ?x63 (_ bv0 2))))
 (let (($x68 (and (distinct R ?x62) true)))
 (let (($x65 (= R ?x62)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x11 (bvule ?x6 (_ bv1073741824 32))))
 (let (($x51 (and $x11 $x65)))
 (let (($x64 (= (_ bv4294967269 32) R)))
 (let (($x42 (bvugt ?x6 (_ bv1073741824 32))))
 (let (($x55 (and $x42 $x64)))
 (let (($x57 (or $x55 $x51)))
 (let (($x67 (not $x57)))
 (let (($x69 (and $x67 $x68)))
 (let (($x49 (and $x57 $x65)))
 (let (($x70 (or $x49 $x69)))
 (not $x70)))))))))))))))))
(check-sat)
