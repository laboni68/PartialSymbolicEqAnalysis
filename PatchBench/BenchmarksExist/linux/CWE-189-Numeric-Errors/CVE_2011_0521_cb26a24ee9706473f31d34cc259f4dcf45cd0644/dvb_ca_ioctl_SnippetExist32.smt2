; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x292 (= ?x9 (_ bv4294967274 32))))
 (let ((?x61 ((_ extract 31 31) rdi)))
 (let (($x70 (= ?x61 (_ bv0 1))))
 (let (($x48 (bvsle ?x9 (_ bv1 32))))
 (let (($x75 (not $x70)))
 (let (($x298 (and (or (not $x48) (and $x48 $x292)) (or $x75 (and (not $x48) $x70) (and $x48 $x70 $x292)))))
 (let (($x287 (or (and $x48 (= ?x9 (_ bv0 32)) $x70) (and $x48 (= ?x9 (_ bv1 32)) $x70) $x298)))
 (and $x287))))))))))
(check-sat)
