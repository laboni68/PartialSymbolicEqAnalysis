; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x91 ((_ extract 8 0) rdi)))
 (let ((?x94 (bvmul (_ bv511 9) ?x91)))
 (let (($x95 (bvule ?x94 (_ bv256 9))))
 (let (($x84 (= ((_ extract 63 9) (bvadd (_ bv2147483648 64) (bvmul (_ bv18446744073709551615 64) rdi))) (_ bv0 55))))
 (let (($x96 (and $x84 $x95)))
 (let (($x97 (not $x96)))
 (let ((?x56 ((_ extract 31 31) rdi)))
 (let (($x65 (= ?x56 (_ bv0 1))))
 (let (($x446 (and $x65 $x97)))
 (let (($x70 (not $x65)))
 (let (($x462 (and $x70 (or $x70 (and $x84 $x95 $x65)))))
 (let (($x514 (or $x462 $x446)))
 (and $x514))))))))))))))
(check-sat)

