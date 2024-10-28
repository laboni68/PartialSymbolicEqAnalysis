; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x50 (bvsle ?x6 (_ bv11 32))))
 (let (($x51 (not $x50)))
 (let (($x345 (or $x51 (and $x50 (= ?x6 (_ bv12 32))))))
 (let (($x44 (bvsle ?x6 (_ bv10 32))))
 (let (($x45 (not $x44)))
 (let (($x341 (or $x45 (and $x44 (= ?x6 (_ bv11 32))))))
 (and $x341 $x345)))))))))
(check-sat)
