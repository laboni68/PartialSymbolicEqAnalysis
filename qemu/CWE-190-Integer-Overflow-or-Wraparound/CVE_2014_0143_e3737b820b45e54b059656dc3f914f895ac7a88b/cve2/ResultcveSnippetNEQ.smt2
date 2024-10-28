; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdx () (_ BitVec 64))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x69 (= (_ bv4294967274 32) R)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let (($x23 (and (distinct (_ bv0 32) ?x8) true)))
 (let ((?x12 ((_ zero_extend 32) ?x8)))
 (let ((?x18 ((_ sign_extend 64) ?x12)))
 (let ((?x16 (bvashr rdx (_ bv63 64))))
 (let ((?x17 (concat ?x16 rdx)))
 (let ((?x19 (bvsdiv ?x17 ?x18)))
 (let ((?x20 ((_ extract 63 0) ?x19)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x9 ((_ zero_extend 32) ?x6)))
 (let (($x21 (bvslt ?x9 ?x20)))
 (let (($x70 (and $x21 $x23 $x69)))
 (let (($x63 (= (_ bv0 32) R)))
 (let (($x64 (bvsge ?x9 ?x20)))
 (let (($x106248 (and $x64 $x23 $x63)))
 (let (($x142860 (or $x106248 $x70)))
 (let (($x142863 (not $x142860)))
 (let (($x142862 (and (distinct (_ bv0 32) R) true)))
 (let (($x142864 (and $x142862 $x142863)))
 (let (($x142861 (and $x63 $x142860)))
 (let (($x142865 (or $x142861 $x142864)))
 (not $x142865))))))))))))))))))))))))
(check-sat)