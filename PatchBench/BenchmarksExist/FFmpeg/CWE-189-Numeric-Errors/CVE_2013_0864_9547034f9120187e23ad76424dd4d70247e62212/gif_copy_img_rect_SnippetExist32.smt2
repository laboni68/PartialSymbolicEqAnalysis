; benchmark generated from python API
(set-info :status unknown)
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x6 ((_ extract 31 0) rsi)))
 (let ((?x10 ((_ extract 31 0) rdi)))
 (let (($x951 (= ?x10 ?x6)))
 (and $x951)))))
(check-sat)
