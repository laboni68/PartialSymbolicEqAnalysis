; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x212 (= (_ bv3199971767 32) R)))
 (let ((?x14 ((_ extract 15 0) rdi)))
 (let ((?x75 (concat (_ bv0 16) ?x14)))
 (let (($x77 (bvsge (_ bv0 32) ?x75)))
 (let (($x164 (and $x77 $x212)))
 (let (($x81 (bvslt (_ bv0 32) ?x75)))
 (let ((?x15 ((_ extract 15 0) rsi)))
 (let ((?x73 (concat (_ bv0 16) ?x15)))
 (let (($x86 (bvsge (_ bv0 32) ?x73)))
 (let (($x176 (and $x86 $x81 $x212)))
 (let (($x91 (bvslt (_ bv0 32) ?x73)))
 (let ((?x100 (bvsub ?x73 (_ bv4294967168 32))))
 (let ((?x131 ((_ zero_extend 32) ?x100)))
 (let ((?x97 (bvsub ?x75 (_ bv4294967168 32))))
 (let ((?x98 ((_ zero_extend 32) ?x97)))
 (let ((?x130 (bvmul ?x98 ?x131)))
 (let (($x169 (bvugt ?x130 (_ bv268435454 64))))
 (let (($x168 (and $x169 $x91 $x81 $x212)))
 (let (($x95 (= (_ bv0 32) R)))
 (let (($x125 (bvule ?x130 (_ bv268435454 64))))
 (let (($x154 (and $x125 $x91 $x81 $x95)))
 (let (($x217 (or $x154 $x168 $x176 $x164)))
 (let (($x20 (= (_ bv0 16) ?x14)))
 (let (($x155 (and $x20 $x212)))
 (let (($x46 (and (distinct (_ bv0 16) ?x14) true)))
 (let (($x58 (= (_ bv0 16) ?x15)))
 (let (($x175 (and $x58 $x46 $x212)))
 (let (($x62 (and (distinct (_ bv0 16) ?x15) true)))
 (let (($x159 (and $x62 $x46 $x95)))
 (let (($x156 (or $x159 $x175 $x155)))
 (and $x156 $x217))))))))))))))))))))))))))))))))
(check-sat)