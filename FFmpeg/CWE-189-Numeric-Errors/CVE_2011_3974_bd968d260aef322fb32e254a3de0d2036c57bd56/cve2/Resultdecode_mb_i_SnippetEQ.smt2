; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x72 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x52 (bvule ?x6 (_ bv6 32))))
 (let (($x76 (and $x52 $x72)))
 (let (($x70 (= (_ bv4294967295 32) R)))
 (let (($x65 (bvugt ?x6 (_ bv6 32))))
 (let (($x75 (and $x65 $x70)))
 (let (($x77 (or $x75 $x76)))
 (let (($x11 (bvsge (_ bv6 32) ?x6)))
 (let (($x73 (and $x11 $x72)))
 (let (($x41 (bvslt (_ bv6 32) ?x6)))
 (let (($x71 (and $x41 $x70)))
 (let (($x74 (or $x71 $x73)))
 (and $x74 $x77)))))))))))))))
(check-sat)