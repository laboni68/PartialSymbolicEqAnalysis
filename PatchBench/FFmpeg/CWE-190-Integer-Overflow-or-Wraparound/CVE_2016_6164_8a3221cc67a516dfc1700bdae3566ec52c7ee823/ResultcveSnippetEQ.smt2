; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 64))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x9 (concat (_ bv0 32) ?x6)))
 (let (($x57 (= R ?x9)))
 (let (($x11 (bvule ?x6 (_ bv1073741823 32))))
 (let (($x60 (and $x11 $x57)))
 (let (($x58 (= (_ bv0 64) R)))
 (let (($x46 (bvugt ?x6 (_ bv1073741823 32))))
 (let (($x59 (and $x46 $x58)))
 (let (($x61 (or $x59 $x60)))
 (and $x57 $x61)))))))))))
(check-sat)