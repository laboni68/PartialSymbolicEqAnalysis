; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x188 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x11 (bvsge (_ bv4 32) ?x6)))
 (let (($x185 (and $x11 $x188)))
 (let (($x41 (bvslt (_ bv4 32) ?x6)))
 (let (($x161 (bvslt (_ bv6 32) ?x6)))
 (let (($x184 (and $x161 $x41 $x188)))
 (let (($x173 (= (_ bv1 32) R)))
 (let (($x45 (bvsge (_ bv6 32) ?x6)))
 (let ((?x7 ((_ zero_extend 32) ?x6)))
 (let ((?x48 (bvlshr ?x7 (_ bv31 64))))
 (let ((?x43 ((_ extract 0 0) ?x48)))
 (let ((?x44 (bvand ?x43 (_ bv1 1))))
 (let (($x177 (= (_ bv0 1) ?x44)))
 (let (($x169 (and $x177 $x45 $x41 $x173)))
 (let (($x175 (or $x169 $x184 $x185)))
 (let (($x172 (and $x177 $x45 $x41 $x188)))
 (let (($x180 (or $x172 $x184 $x185)))
 (and $x180 $x175))))))))))))))))))))
(check-sat)

