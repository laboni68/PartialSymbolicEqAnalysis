; benchmark generated from python API
(set-info :status unknown)
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rsi)))
 (let ((?x12 ((_ extract 31 31) rsi)))
 (let ((?x107 (concat ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x6)))
 (let ((?x8 ((_ extract 31 0) rdi)))
 (let ((?x47 (concat (bvashr ?x8 (_ bv31 32)) ?x8)))
 (let ((?x109 ((_ extract 31 0) (bvsdiv_i ?x47 ?x107))))
 (let ((?x9 (bvmul ?x8 ?x6)))
 (let (($x34041 (= ?x9 ?x109)))
 (let (($x76 (not (= ?x6 (_ bv0 32)))))
 (and $x76 $x34041)))))))))))
(check-sat)

