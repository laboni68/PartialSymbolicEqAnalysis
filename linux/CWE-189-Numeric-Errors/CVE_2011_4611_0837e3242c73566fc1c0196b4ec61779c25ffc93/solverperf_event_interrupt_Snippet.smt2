; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x458 (= (_ bv1 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x7 ((_ zero_extend 32) ?x6)))
 (let ((?x11 (bvlshr ?x7 (_ bv31 64))))
 (let ((?x20 ((_ extract 0 0) ?x11)))
 (let ((?x27 (bvand ?x20 (_ bv1 1))))
 (let (($x26 (and (distinct (_ bv0 1) ?x27) true)))
 (let (($x457 (and $x26 $x458)))
 (let (($x53 (= (_ bv0 1) ?x27)))
 (let ((?x73 (bvsub (_ bv2147483648 64) rdi)))
 (let (($x80 (bvule ?x73 (_ bv256 64))))
 (let (($x454 (and $x80 $x53 $x458)))
 (let (($x75 (= (_ bv0 32) R)))
 (let (($x394 (bvugt ?x73 (_ bv256 64))))
 (let (($x455 (and $x394 $x53 $x75)))
 (let (($x453 (or $x455 $x454 $x457)))
 (let (($x450 (not $x453)))
 (let (($x71 (and $x53 $x75)))
 (let (($x456 (or $x71 $x457)))
 (let (($x451 (not $x456)))
 (let (($x449 (and $x451 $x450)))
 (let (($x452 (and $x456 $x453)))
 (let (($x448 (or $x452 $x449)))
 (not $x448)))))))))))))))))))))))))
(check-sat)