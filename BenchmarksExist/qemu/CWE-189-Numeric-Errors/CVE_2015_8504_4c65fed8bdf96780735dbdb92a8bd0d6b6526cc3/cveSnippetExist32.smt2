; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x38 (= ?x6 (_ bv0 32))))
 (let (($x39 (not $x38)))
 (let (($x181 (or $x39 (and $x38 (= ?x6 (_ bv255 32))))))
 (and $x181))))))
(check-sat)
