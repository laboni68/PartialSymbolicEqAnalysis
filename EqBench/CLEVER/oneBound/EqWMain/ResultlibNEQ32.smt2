; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x76 (bvadd (_ bv4294967295 32) ?x6)))
 (let (($x72 (= R ?x76)))
 (let (($x45 (bvsge (_ bv11 32) ?x6)))
 (let (($x65 (and $x45 $x72)))
 (let (($x75 (= (_ bv11 32) R)))
 (let (($x56 (bvslt (_ bv11 32) ?x6)))
 (let (($x82 (and $x56 $x75)))
 (let (($x83 (or $x82 $x65)))
 (let (($x86 (not $x83)))
 (let (($x79 (= R ?x6)))
 (let (($x11 (bvsge (_ bv10 32) ?x6)))
 (let (($x80 (and $x11 $x79)))
 (let (($x41 (bvslt (_ bv10 32) ?x6)))
 (let (($x78 (and $x41 $x75)))
 (let (($x81 (or $x78 $x80)))
 (let (($x85 (not $x81)))
 (let (($x87 (and $x85 $x86)))
 (let (($x84 (and $x81 $x83)))
 (let (($x88 (or $x84 $x87)))
 (not $x88))))))))))))))))))))))
(check-sat)

