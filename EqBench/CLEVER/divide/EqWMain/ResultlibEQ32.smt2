; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x109 (= (_ bv0 32) R)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let (($x47 (= (_ bv0 32) ?x8)))
 (let (($x110 (and $x47 $x109)))
 (let ((?x18 ((_ extract 31 31) rsi)))
 (let ((?x77 (concat (concat (concat (concat (concat ?x18 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x82 (concat (concat (concat (concat (concat ?x77 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x87 (concat (concat (concat (concat (concat ?x82 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x92 (concat (concat (concat (concat (concat ?x87 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x97 (concat (concat (concat (concat (concat ?x92 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x102 (concat (concat (concat (concat (concat ?x97 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x104 (concat (concat ?x102 ?x18) ?x8)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x10 (bvashr ?x6 (_ bv31 32))))
 (let ((?x11 (concat ?x10 ?x6)))
 (let ((?x105 (bvsdiv ?x11 ?x104)))
 (let ((?x106 ((_ extract 31 0) ?x105)))
 (let (($x107 (= R ?x106)))
 (let (($x25 (and (distinct (_ bv0 32) ?x8) true)))
 (let (($x108 (and $x25 $x107)))
 (let (($x111 (or $x108 $x110)))
 (and $x25 $x107 $x111)))))))))))))))))))))))
(check-sat)

