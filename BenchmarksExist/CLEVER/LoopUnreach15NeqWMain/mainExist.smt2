; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x66 (bvsle ?x9 (_ bv12 32))))
 (let (($x67 (not $x66)))
 (let (($x65 (bvsle ?x9 (_ bv15 32))))
 (let (($x70 (not $x65)))
 (let (($x282 (and $x70 $x67)))
 (let (($x284 (or $x66 $x282)))
 (let (($x283 (or $x66 (and (= ((_ extract 31 31) rdi) (_ bv0 1)) $x65 $x67) $x282)))
 (and $x283 $x284))))))))))
(check-sat)