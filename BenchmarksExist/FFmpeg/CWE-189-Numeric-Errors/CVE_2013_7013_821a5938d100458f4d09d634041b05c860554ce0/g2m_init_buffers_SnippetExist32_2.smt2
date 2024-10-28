; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x52 (concat ((_ extract 31 4) (bvadd (_ bv15 32) (concat ((_ extract 30 0) rdi) (_ bv0 1)) ((_ extract 31 0) rdi))) (_ bv0 4))))
 (let ((?x11 (concat ((_ extract 31 4) (bvadd (_ bv15 32) ((_ extract 31 0) rdi))) (_ bv0 4))))
 (let ((?x14 (concat ((_ extract 30 4) (bvadd (_ bv15 32) ((_ extract 31 0) rdi))) (_ bv0 5))))
 (let ((?x15 (bvadd ?x14 ?x11)))
 (let (($x667 (= ?x15 ?x52)))
 (and $x667)))))))
(check-sat)

