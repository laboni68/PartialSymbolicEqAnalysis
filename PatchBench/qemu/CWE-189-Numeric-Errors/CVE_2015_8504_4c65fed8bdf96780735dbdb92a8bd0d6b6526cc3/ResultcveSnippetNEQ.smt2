; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x55 (and (distinct R ?x6) true)))
 (let (($x50 (= (_ bv255 32) R)))
 (let (($x10 (= (_ bv0 32) ?x6)))
 (let (($x51 (and $x10 $x50)))
 (let (($x47 (= R ?x6)))
 (let (($x36 (and (distinct (_ bv0 32) ?x6) true)))
 (let (($x48 (and $x36 $x47)))
 (let (($x52 (or $x48 $x51)))
 (let (($x54 (not $x52)))
 (let (($x56 (and $x54 $x55)))
 (let (($x53 (and $x52 $x47)))
 (let (($x57 (or $x53 $x56)))
 (not $x57)))))))))))))))
(check-sat)
