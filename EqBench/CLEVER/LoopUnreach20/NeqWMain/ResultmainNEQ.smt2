; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x188 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x11 (bvsge (_ bv17 32) ?x6)))
 (let (($x186 (and $x11 $x188)))
 (let (($x41 (bvslt (_ bv17 32) ?x6)))
 (let (($x162 (bvslt (_ bv21 32) ?x6)))
 (let (($x180 (and $x162 $x41 $x188)))
 (let (($x170 (= (_ bv1 32) R)))
 (let (($x45 (bvsge (_ bv21 32) ?x6)))
 (let ((?x7 ((_ zero_extend 32) ?x6)))
 (let ((?x49 (bvlshr ?x7 (_ bv31 64))))
 (let ((?x48 ((_ extract 0 0) ?x49)))
 (let ((?x43 (bvand ?x48 (_ bv1 1))))
 (let (($x176 (= (_ bv0 1) ?x43)))
 (let (($x172 (and $x176 $x45 $x41 $x170)))
 (let (($x175 (or $x172 $x180 $x186)))
 (let (($x168 (not $x175)))
 (let (($x169 (and $x176 $x45 $x41 $x188)))
 (let (($x184 (or $x169 $x180 $x186)))
 (let (($x187 (not $x184)))
 (let (($x185 (and $x187 $x168)))
 (let (($x178 (and $x184 $x175)))
 (let (($x174 (or $x178 $x185)))
 (not $x174)))))))))))))))))))))))))
(check-sat)
