; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x14 (bvsle (_ bv2 32) ?x9)))
 (and $x14))))
(check-sat)
