; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x37 (bvsle rdi (_ bv25 32))))
 (let (($x179 (or $x37 (and (not $x37) (= rdi (_ bv4294967161 32))))))
 (and $x179))))
(check-sat)
