; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 64))
(assert
 (let ((?x12 (bvadd (_ bv8156 64) rdi)))
 (let ((?x14 (concat (_ bv0 64) ?x12)))
 (let ((?x15 (bvmul (_ bv9262947618721873657 128) ?x14)))
 (let ((?x22 ((_ extract 127 76) ?x15)))
 (let ((?x23 (concat (_ bv0 12) ?x22)))
 (let ((?x24 (bvmul (_ bv8157 64) ?x23)))
 (let (($x138 (= R ?x24)))
 (let (($x119 (bvugt ?x23 (_ bv1 64))))
 (let (($x139 (and $x119 $x138)))
 (let (($x136 (= (_ bv16314 64) R)))
 (let (($x92 (bvule ?x23 (_ bv1 64))))
 (let (($x137 (and $x92 $x136)))
 (let (($x140 (or $x137 $x139)))
 (let (($x174 (not $x140)))
 (let ((?x80 (bvadd (_ bv8156 64) ?x24)))
 (let ((?x81 (concat (_ bv0 64) ?x80)))
 (let ((?x82 (bvmul (_ bv9262947618721873657 128) ?x81)))
 (let ((?x87 ((_ extract 127 76) ?x82)))
 (let ((?x88 (concat (_ bv0 12) ?x87)))
 (let (($x130 (= R ?x88)))
 (let (($x64 (bvugt ?x24 (_ bv16313 64))))
 (let (($x133 (and $x64 $x130)))
 (let (($x128 (= (_ bv2 64) R)))
 (let (($x26 (bvule ?x24 (_ bv16313 64))))
 (let (($x129 (and $x26 $x128)))
 (let (($x134 (or $x129 $x133)))
 (let (($x142 (not $x134)))
 (let (($x3810 (and $x142 $x174)))
 (let (($x141 (and $x134 $x140)))
 (let (($x4032 (or $x141 $x3810)))
 (not $x4032))))))))))))))))))))))))))))))))
(check-sat)