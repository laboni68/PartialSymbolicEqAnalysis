; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x41 (bvsle ?x6 (_ bv10 32))))
 (let (($x42 (not $x41)))
 (let (($x269 (or $x42 (and $x41 (= ?x6 (_ bv10 32))))))
 (let (($x278 (or $x42 (and $x41 (= ?x6 (_ bv11 32))))))
 (and $x278 $x269)))))))
(check-sat)
