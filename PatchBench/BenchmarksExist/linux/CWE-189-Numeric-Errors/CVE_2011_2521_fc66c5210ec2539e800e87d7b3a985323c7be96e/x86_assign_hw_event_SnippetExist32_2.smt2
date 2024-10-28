; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x50 (= ?x9 (_ bv48 32))))
 (let (($x51 (not $x50)))
 (let (($x47 (bvsle ?x9 (_ bv31 32))))
 (let (($x48 (not $x47)))
 (let (($x247 (and (or $x50 (and $x47 $x51)) (or $x50 (and $x48 $x51 (= ?x9 (_ bv4294966551 32))) (and $x47 $x51)))))
 (let (($x339 (or $x247 (and $x48 $x51 (= ?x9 (_ bv32 32))))))
 (and $x339)))))))))
(check-sat)

