; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let ((?x38 (concat (_ bv0 32) ?x9)))
 (let (($x39 (bvsle (_ bv2147483648 64) ?x38)))
 (let (($x41 (not $x39)))
 (let (($x180 (or $x39 (and $x41 (= ?x9 (_ bv4294967274 32))))))
 (and $x180)))))))
(check-sat)
