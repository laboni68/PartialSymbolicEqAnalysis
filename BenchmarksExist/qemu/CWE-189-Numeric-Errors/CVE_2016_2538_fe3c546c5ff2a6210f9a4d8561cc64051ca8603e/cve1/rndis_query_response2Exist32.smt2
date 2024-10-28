; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x21 (bvule (_ bv9 32) ?x9)))
 (let (($x48 (bvule ?x9 (_ bv4294967288 32))))
 (let (($x49 (not $x48)))
 (let (($x47 (bvule (_ bv1 32) ?x9)))
 (let (($x268 (or (and (or (not $x21) (and $x48 $x21)) (not $x47)) (and $x47 $x49 $x21))))
 (and $x268))))))))
(check-sat)
