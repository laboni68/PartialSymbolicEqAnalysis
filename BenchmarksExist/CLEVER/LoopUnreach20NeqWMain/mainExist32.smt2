; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x66 (bvsle ?x9 (_ bv17 32))))
 (let (($x67 (not $x66)))
 (let (($x65 (bvsle ?x9 (_ bv21 32))))
 (let (($x70 (not $x65)))
 (let (($x284 (and $x70 $x67)))
 (let (($x286 (or $x66 $x284)))
 (let (($x285 (or $x66 (and (= ((_ extract 31 31) rdi) (_ bv0 1)) $x65 $x67) $x284)))
 (and $x285 $x286))))))))))
(check-sat)

