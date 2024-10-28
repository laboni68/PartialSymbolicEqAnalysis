; benchmark generated from python API
(set-info :status unknown)
(declare-fun xmm0lq () (_ BitVec 64))
(declare-fun xmm1hq () (_ BitVec 64))
(declare-fun R () (_ BitVec 128))
(assert
 (let ((?x36 (concat xmm1hq xmm0lq)))
 (let (($x38 (and (distinct R ?x36) true)))
 (let (($x37 (= R ?x36)))
 (let (($x39 (or $x37 $x38)))
 (not $x39))))))
(check-sat)
