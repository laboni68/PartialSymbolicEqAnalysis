; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x49 (bvsle rdi (_ bv0 32))))
 (let (($x50 (not $x49)))
 (let (($x244 (or $x50 (and $x49 (= ((_ extract 31 31) rdi) (_ bv0 1))))))
 (and $x244)))))
(check-sat)

