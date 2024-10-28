; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x61 (bvule ((_ extract 2 0) rdi) (_ bv6 3))))
 (let (($x58 (= ((_ extract 31 3) rdi) (_ bv0 29))))
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x42 (bvsle ?x9 (_ bv6 32))))
 (let (($x264 (or (and (not $x42) (not (and $x58 $x61))) (and $x42 $x58 $x61))))
 (and $x264)))))))
(check-sat)

