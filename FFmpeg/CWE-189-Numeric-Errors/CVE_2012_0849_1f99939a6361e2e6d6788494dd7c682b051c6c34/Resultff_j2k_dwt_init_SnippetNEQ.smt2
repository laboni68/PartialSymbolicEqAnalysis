; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x82 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x52 (bvule ?x6 (_ bv31 32))))
 (let (($x86 (and $x52 $x82)))
 (let (($x80 (= (_ bv3199971767 32) R)))
 (let (($x68 (bvugt ?x6 (_ bv31 32))))
 (let (($x85 (and $x68 $x80)))
 (let (($x87 (or $x85 $x86)))
 (let (($x90 (not $x87)))
 (let (($x11 (bvsge (_ bv31 32) ?x6)))
 (let (($x83 (and $x11 $x82)))
 (let (($x41 (bvslt (_ bv31 32) ?x6)))
 (let (($x81 (and $x41 $x80)))
 (let (($x84 (or $x81 $x83)))
 (let (($x89 (not $x84)))
 (let (($x91 (and $x89 $x90)))
 (let (($x88 (and $x84 $x87)))
 (let (($x92 (or $x88 $x91)))
 (not $x92))))))))))))))))))))
(check-sat)
