; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x82 (bvsle ?x9 (_ bv0 32))))
 (let (($x83 (not $x82)))
 (let (($x70 (= ?x9 (_ bv0 32))))
 (let (($x71 (not $x70)))
 (let ((?x59 ((_ extract 31 31) rdi)))
 (let (($x68 (= ?x59 (_ bv0 1))))
 (let (($x288 (or (and (not $x68) $x71 $x82) (and $x68 $x71 $x83))))
 (and $x288))))))))))
(check-sat)

