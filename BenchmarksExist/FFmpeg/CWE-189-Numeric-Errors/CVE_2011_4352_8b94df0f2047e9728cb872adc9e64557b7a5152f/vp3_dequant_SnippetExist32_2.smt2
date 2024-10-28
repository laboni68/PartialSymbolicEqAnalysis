; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let ((?x48 ((_ extract 31 0) rdi)))
 (let (($x550 (= ?x48 (_ bv4294967295 32))))
 (let ((?x6 ((_ extract 31 0) rsi)))
 (let ((?x7 ((_ extract 31 31) rsi)))
 (let ((?x110 (concat ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x7 ?x6)))
 (let ((?x113 (concat (_ bv0 25) ((_ extract 6 0) (bvashr ?x110 (_ bv2 64))))))
 (let ((?x116 (bvadd ?x48 ?x113)))
 (let (($x117 (bvsle ?x116 (_ bv63 32))))
 (and $x117 $x550))))))))))
(check-sat)

