; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x178 ((_ extract 28 0) rdi)))
 (let ((?x144 (concat ?x178 (_ bv0 3))))
 (let (($x174 (= R ?x144)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x11 (bvule ?x6 (_ bv268435454 32))))
 (let (($x182 (and $x11 $x174)))
 (let (($x160 (= (_ bv3199971767 32) R)))
 (let (($x43 (bvugt ?x6 (_ bv268435454 32))))
 (let (($x124 (and $x43 $x160)))
 (let (($x183 (or $x124 $x182)))
 (let (($x46 (bvsge (_ bv0 32) ?x6)))
 (let (($x164 (and $x46 $x11 $x160)))
 (let (($x163 (bvslt (_ bv0 32) ?x6)))
 (let (($x172 (and $x163 $x11 $x174)))
 (let (($x180 (or $x172 $x164 $x124)))
 (and $x180 $x183)))))))))))))))))
(check-sat)
