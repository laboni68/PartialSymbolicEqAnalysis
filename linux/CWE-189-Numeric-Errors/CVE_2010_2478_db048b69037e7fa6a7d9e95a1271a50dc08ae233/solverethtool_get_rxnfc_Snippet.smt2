; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x65 (= (_ bv4294967295 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x10 (= (_ bv0 32) ?x6)))
 (let (($x169 (and $x10 $x65)))
 (let ((?x64 ((_ extract 29 0) rdi)))
 (let ((?x45 (concat ?x64 (_ bv0 2))))
 (let (($x60 (= R ?x45)))
 (let (($x36 (and (distinct (_ bv0 32) ?x6) true)))
 (let (($x48 (bvule ?x6 (_ bv2097152 32))))
 (let (($x180 (and $x48 $x36 $x60)))
 (let (($x167 (bvugt ?x6 (_ bv2097152 32))))
 (let (($x174 (and $x167 $x36 $x65)))
 (let (($x178 (or $x174 $x180 $x169)))
 (let (($x62 (not $x178)))
 (let (($x66 (and $x36 $x60)))
 (let (($x61 (or $x66 $x169)))
 (let (($x181 (not $x61)))
 (let (($x51 (and $x181 $x62)))
 (let (($x179 (and $x61 $x178)))
 (let (($x182 (or $x179 $x51)))
 (not $x182))))))))))))))))))))))
(check-sat)