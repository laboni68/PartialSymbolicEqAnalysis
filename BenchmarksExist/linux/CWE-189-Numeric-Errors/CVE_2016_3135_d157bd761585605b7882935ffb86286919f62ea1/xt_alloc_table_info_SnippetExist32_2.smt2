; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x83 (bvule ?x9 (_ bv4294967231 32))))
 (let ((?x72 (bvadd (_ bv64 16) ((_ extract 15 0) rdi))))
 (let (($x74 (bvule ?x72 (_ bv32768 16))))
 (let ((?x11 (bvadd (_ bv64 32) ?x9)))
 (let ((?x55 ((_ extract 31 16) ?x11)))
 (let (($x65 (= ?x55 (_ bv0 16))))
 (let (($x354 (and $x65 $x74 $x83)))
 (let (($x75 (and $x65 $x74)))
 (let (($x76 (not $x75)))
 (let (($x357 (and $x76 (or (not $x83) (and $x76 $x83)))))
 (let (($x361 (or $x357 $x354)))
 (and $x361))))))))))))))
(check-sat)

