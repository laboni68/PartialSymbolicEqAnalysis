; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(assert
 (let (($x24 (and (distinct (_ bv1 32) R) true)))
 (let (($x17 (and (distinct (_ bv0 32) R) true)))
 (let (($x9 (and $x17 $x24)))
 (not $x9)))))
(check-sat)

