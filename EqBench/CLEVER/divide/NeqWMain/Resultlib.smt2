; benchmark generated from python API
(set-info :status unknown)
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdi () (_ BitVec 64))
(declare-fun return () (_ BitVec 32))
(assert
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x65 (bvmul ?x6 ?x8)))
 (let (($x107 (and (distinct return ?x65) true)))
 (let ((?x18 ((_ extract 31 31) rsi)))
 (let ((?x72 (concat (concat (concat (concat (concat ?x18 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x77 (concat (concat (concat (concat (concat ?x72 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x82 (concat (concat (concat (concat (concat ?x77 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x87 (concat (concat (concat (concat (concat ?x82 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x92 (concat (concat (concat (concat (concat ?x87 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x97 (concat (concat (concat (concat (concat ?x92 ?x18) ?x18) ?x18) ?x18) ?x18)))
 (let ((?x99 (concat (concat ?x97 ?x18) ?x8)))
 (let ((?x10 (bvashr ?x6 (_ bv31 32))))
 (let ((?x11 (concat ?x10 ?x6)))
 (let ((?x100 (bvsdiv ?x11 ?x99)))
 (let ((?x101 ((_ extract 31 0) ?x100)))
 (let (($x102 (= return ?x101)))
 (let (($x25 (and (distinct (_ bv0 32) ?x8) true)))
 (let (($x105 (and $x25 $x102)))
 (let (($x106 (not $x105)))
 (let (($x108 (and $x106 $x107)))
 (let (($x103 (= return ?x65)))
 (let (($x104 (and $x25 $x102 $x103)))
 (let (($x109 (or $x104 $x108)))
 (not $x109))))))))))))))))))))))))))
(check-sat)
