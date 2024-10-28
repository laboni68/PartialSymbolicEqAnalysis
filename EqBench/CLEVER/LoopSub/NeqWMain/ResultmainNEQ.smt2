; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(assert
 (let (($x22 (and (distinct (_ bv4294965501 32) R) true)))
 (let (($x15 (and (distinct (_ bv4294964601 32) R) true)))
 (let (($x7 (and $x15 $x22)))
 (not $x7)))))
(check-sat)
