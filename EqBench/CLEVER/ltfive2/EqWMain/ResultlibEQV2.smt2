; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x96 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x7 ((_ zero_extend 32) ?x6)))
 (let ((?x45 (bvlshr ?x7 (_ bv31 64))))
 (let ((?x50 ((_ extract 0 0) ?x45)))
 (let ((?x54 (bvand ?x50 (_ bv1 1))))
 (let (($x55 (and (distinct (_ bv0 1) ?x54) true)))
 (let (($x97 (and $x55 $x96)))
 (let (($x89 (= R ?x6)))
 (let (($x76 (= (_ bv0 1) ?x54)))
 (let (($x95 (and $x76 $x89)))
 (let (($x98 (or $x95 $x97)))
 (let (($x92 (= (_ bv5 32) R)))
 (let (($x11 (bvsge (_ bv4 32) ?x6)))
 (let (($x93 (and $x11 $x92)))
 (let (($x41 (bvslt (_ bv4 32) ?x6)))
 (let (($x90 (and $x41 $x89)))
 (let (($x94 (or $x90 $x93)))
 (let (($x100 (not $x94)))
 (let (($x118 (and $x100 $x98)))
 (let (($x101 (not $x98)))
 (let (($x121 (and $x94 $x101)))
 (let (($x122 (or $x121 $x118)))
 (not $x122)))))))))))))))))))))))))
(check-sat)
