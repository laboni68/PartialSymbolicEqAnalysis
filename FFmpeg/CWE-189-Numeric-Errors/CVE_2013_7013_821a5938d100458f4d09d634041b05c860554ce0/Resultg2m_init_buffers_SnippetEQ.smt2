; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x24 (bvadd (_ bv15 32) ?x6)))
 (let ((?x42 ((_ extract 31 4) ?x24)))
 (let ((?x60 (concat ?x42 (_ bv0 4))))
 (let ((?x56 ((_ extract 30 4) ?x24)))
 (let ((?x55 (concat ?x56 (_ bv0 5))))
 (let ((?x62 (bvadd ?x55 ?x60)))
 (let (($x53 (= R ?x62)))
 (let ((?x29 (bvadd (bvadd (_ bv15 32) (concat ((_ extract 30 0) rdi) (_ bv0 1))) ?x6)))
 (let ((?x27 ((_ extract 31 4) ?x29)))
 (let ((?x32 (concat ?x27 (_ bv0 4))))
 (let (($x44 (= R ?x32)))
 (and $x44 $x53))))))))))))))
(check-sat)
