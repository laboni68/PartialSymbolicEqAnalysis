; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x63 (= (_ bv4294967290 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x9 ((_ zero_extend 32) ?x6)))
 (let ((?x13 (bvlshr ?x9 (_ bv31 64))))
 (let ((?x22 ((_ extract 0 0) ?x13)))
 (let ((?x29 (bvand ?x22 (_ bv1 1))))
 (let (($x28 (and (distinct (_ bv0 1) ?x29) true)))
 (let (($x368 (and $x28 $x63)))
 (let (($x66 (= R ?x6)))
 (let (($x55 (= (_ bv0 1) ?x29)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let (($x69 (bvslt ?x6 ?x8)))
 (let (($x367 (and $x69 $x55 $x66)))
 (let (($x363 (bvsge ?x6 ?x8)))
 (let (($x366 (and $x363 $x55 $x63)))
 (let (($x369 (or $x366 $x367 $x368)))
 (and $x66 $x369))))))))))))))))))
(check-sat)
