; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdx () (_ BitVec 64))
(assert
 (let (($x641 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x14 (bvsge (_ bv0 32) ?x6)))
 (let (($x653 (and $x14 $x641)))
 (let (($x647 (= (_ bv4294967295 32) R)))
 (let (($x44 (bvslt (_ bv0 32) ?x6)))
 (let (($x48 (bvsge (_ bv3 32) ?x6)))
 (let (($x650 (and $x48 $x44 $x647)))
 (let (($x160 (bvslt (_ bv3 32) ?x6)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let ((?x167 (bvmul (_ bv4294967295 32) ?x8)))
 (let ((?x168 (bvadd ?x6 ?x167)))
 (let ((?x10 ((_ extract 31 0) rdx)))
 (let (($x170 (bvsle ?x10 ?x168)))
 (let ((?x164 (ite $x170 ?x10 ?x168)))
 (let ((?x169 ((_ zero_extend 32) ?x164)))
 (let ((?x180 (bvlshr ?x169 (_ bv31 64))))
 (let ((?x177 ((_ extract 0 0) ?x180)))
 (let ((?x176 (bvand ?x177 (_ bv1 1))))
 (let (($x181 (and (distinct (_ bv0 1) ?x176) true)))
 (let (($x656 (and $x181 $x160 $x44 $x647)))
 (let (($x640 (= (_ bv0 1) ?x176)))
 (let (($x655 (and $x640 $x160 $x44 $x641)))
 (let (($x657 (or $x655 $x656 $x650 $x653)))
 (let (($x646 (and $x160 $x44 $x641)))
 (let (($x654 (or $x646 $x650 $x653)))
 (and $x654 $x657))))))))))))))))))))))))))))
(check-sat)