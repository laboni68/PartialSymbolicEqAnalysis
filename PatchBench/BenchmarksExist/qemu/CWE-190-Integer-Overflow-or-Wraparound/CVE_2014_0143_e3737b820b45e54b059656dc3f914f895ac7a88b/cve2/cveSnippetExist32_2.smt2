; benchmark generated from python API
(set-info :status unknown)
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(declare-fun rdx () (_ BitVec 32))
(assert
 (let (($x65 (not (= ((_ extract 31 0) rsi) (_ bv0 32)))))
 (let ((?x22 ((_ extract 31 0) rdi)))
 (let ((?x50 (concat (_ bv0 32) ?x22)))
 (let ((?x9 ((_ extract 31 0) rsi)))
 (let ((?x58 (concat (_ bv0 96) ?x9)))
 (let ((?x18 (concat (bvashr rdx (_ bv63 64)) rdx)))
 (let ((?x60 ((_ extract 63 0) (bvsdiv_i ?x18 ?x58))))
 (let (($x61 (bvsle ?x60 ?x50)))
 (and $x61 $x65))))))))))
(check-sat)

