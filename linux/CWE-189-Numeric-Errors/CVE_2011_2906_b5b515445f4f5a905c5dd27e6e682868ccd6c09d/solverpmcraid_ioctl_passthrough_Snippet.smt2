; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x177 (= (_ bv4294967274 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x10 (bvsge (_ bv0 32) ?x6)))
 (let ((?x7 ((_ zero_extend 32) ?x6)))
 (let ((?x63 (bvlshr ?x7 (_ bv31 64))))
 (let ((?x57 ((_ extract 0 0) ?x63)))
 (let ((?x62 (bvand ?x57 (_ bv1 1))))
 (let (($x66 (and (distinct (_ bv0 1) ?x62) true)))
 (let (($x184 (and $x66 $x10 $x177)))
 (let (($x44 (= (_ bv0 32) R)))
 (let (($x174 (= (_ bv0 1) ?x62)))
 (let (($x175 (and $x174 $x10 $x44)))
 (let (($x55 (= (_ bv50 32) R)))
 (let (($x40 (bvslt (_ bv0 32) ?x6)))
 (let (($x50 (and $x40 $x55)))
 (let (($x185 (or $x50 $x175 $x184)))
 (let (($x181 (not $x185)))
 (let (($x182 (and $x10 $x44)))
 (let (($x183 (or $x50 $x182)))
 (let (($x187 (not $x183)))
 (let (($x180 (and $x187 $x181)))
 (let (($x186 (and $x183 $x185)))
 (let (($x178 (or $x186 $x180)))
 (not $x178)))))))))))))))))))))))))
(check-sat)
