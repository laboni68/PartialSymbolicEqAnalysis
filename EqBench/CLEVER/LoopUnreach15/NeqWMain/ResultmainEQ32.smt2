; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x186 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x11 (bvsge (_ bv12 32) ?x6)))
 (let (($x182 (and $x11 $x186)))
 (let (($x41 (bvslt (_ bv12 32) ?x6)))
 (let (($x160 (bvslt (_ bv15 32) ?x6)))
 (let (($x183 (and $x160 $x41 $x186)))
 (let (($x171 (= (_ bv1 32) R)))
 (let (($x45 (bvsge (_ bv15 32) ?x6)))
 (let ((?x7 ((_ zero_extend 32) ?x6)))
 (let ((?x46 (bvlshr ?x7 (_ bv31 64))))
 (let ((?x49 ((_ extract 0 0) ?x46)))
 (let ((?x43 (bvand ?x49 (_ bv1 1))))
 (let (($x176 (= (_ bv0 1) ?x43)))
 (let (($x167 (and $x176 $x45 $x41 $x171)))
 (let (($x173 (or $x167 $x183 $x182)))
 (let (($x168 (and $x176 $x45 $x41 $x186)))
 (let (($x178 (or $x168 $x183 $x182)))
 (and $x178 $x173))))))))))))))))))))
(check-sat)

