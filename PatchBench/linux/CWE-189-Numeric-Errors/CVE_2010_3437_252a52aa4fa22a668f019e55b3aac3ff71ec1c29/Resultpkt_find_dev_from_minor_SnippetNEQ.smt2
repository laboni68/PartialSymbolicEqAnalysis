; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x81 (= (_ bv1 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x52 (bvule ?x6 (_ bv7 32))))
 (let (($x85 (and $x52 $x81)))
 (let (($x79 (= (_ bv0 32) R)))
 (let (($x68 (bvugt ?x6 (_ bv7 32))))
 (let (($x84 (and $x68 $x79)))
 (let (($x86 (or $x84 $x85)))
 (let (($x89 (not $x86)))
 (let (($x11 (bvsge (_ bv7 32) ?x6)))
 (let (($x82 (and $x11 $x81)))
 (let (($x41 (bvslt (_ bv7 32) ?x6)))
 (let (($x80 (and $x41 $x79)))
 (let (($x83 (or $x80 $x82)))
 (let (($x88 (not $x83)))
 (let (($x90 (and $x88 $x89)))
 (let (($x87 (and $x83 $x86)))
 (let (($x91 (or $x87 $x90)))
 (not $x91))))))))))))))))))))
(check-sat)
