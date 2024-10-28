; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x42 (bvsle rdi (_ bv0 32))))
 (let (($x232 (or (and (not $x42) (bvsle rdi (_ bv76695843 32))) (and $x42 (or $x42 (and (not (bvsle rdi (_ bv76695843 32))) (not $x42)))))))
 (and $x232))))
(check-sat)
