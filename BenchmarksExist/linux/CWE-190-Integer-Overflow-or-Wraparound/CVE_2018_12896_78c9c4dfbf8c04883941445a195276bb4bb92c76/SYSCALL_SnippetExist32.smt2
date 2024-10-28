; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x14 (bvsle (_ bv2147483648 64) rdi)))
 (let (($x38 (not $x14)))
 (let (($x177 (or $x38 (and $x14 (= ((_ extract 31 0) rdi) (_ bv2147483647 32))))))
 (and $x177)))))
(check-sat)
