; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x84 (bvsle rdi (_ bv12 32))))
 (let (($x85 (not $x84)))
 (let (($x83 (bvsle rdi (_ bv15 32))))
 (let (($x89 (not $x83)))
 (let (($x912 (and $x89 $x85)))
 (let (($x914 (or $x84 $x912)))
 (let (($x913 (or $x84 (and $x83 $x85 (= rdi (_ bv0 32))) $x912)))
 (and $x913 $x914)))))))))
(check-sat)

