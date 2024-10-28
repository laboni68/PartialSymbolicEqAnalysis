; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 7 0) rdi)))
 (let ((?x11 ((_ extract 7 0) rsi)))
 (let (($x12 (= ?x11 ?x9)))
 (let (($x49 (not $x12)))
 (and $x49))))))
(check-sat)
