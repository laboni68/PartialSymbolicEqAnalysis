; benchmark generated from python API
(set-info :status unknown)
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rsi)))
 (let ((?x12 ((_ extract 31 31) rsi)))
 (let ((?x109 (concat ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x9)))
 (let ((?x46 ((_ extract 31 0) rdi)))
 (let ((?x49 (concat (bvashr ?x46 (_ bv31 32)) ?x46)))
 (let ((?x111 ((_ extract 31 0) (bvsdiv_i ?x49 ?x109))))
 (let (($x77 (= ?x9 (_ bv0 32))))
 (let (($x78 (not $x77)))
 (let (($x32291 (or $x78 (and $x77 (= ?x111 (_ bv0 32))))))
 (and $x78 $x32291)))))))))))
(check-sat)

