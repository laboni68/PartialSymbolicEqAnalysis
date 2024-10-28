; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x300 (= (_ bv0 32) R)))
 (let ((?x12 ((_ extract 15 0) rdi)))
 (let (($x17 (= (_ bv0 16) ?x12)))
 (let (($x302 (and $x17 $x300)))
 (let (($x43 (and (distinct (_ bv0 16) ?x12) true)))
 (let ((?x76 (concat (_ bv0 16) ?x12)))
 (let ((?x11 ((_ extract 31 0) rsi)))
 (let (($x78 (bvslt ?x11 ?x76)))
 (let (($x305 (and $x78 $x43 $x300)))
 (let ((?x15 (concat (_ bv0 48) ?x12)))
 (let ((?x54 (bvashr ?x11 (_ bv31 32))))
 (let ((?x55 (concat ?x54 ?x11)))
 (let ((?x62 (bvsdiv ?x55 ?x15)))
 (let ((?x64 ((_ extract 31 0) ?x62)))
 (let (($x299 (= R ?x64)))
 (let (($x295 (bvsge ?x11 ?x76)))
 (let (($x304 (and $x295 $x43 $x299)))
 (let (($x306 (or $x304 $x305 $x302)))
 (let (($x301 (and $x43 $x299)))
 (let (($x303 (or $x301 $x302)))
 (and $x303 $x306))))))))))))))))))))))
(check-sat)