; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x98 (= (_ bv1 32) R)))
 (let ((?x63 ((_ extract 4 0) rdi)))
 (let ((?x92 (concat (_ bv0 59) ?x63)))
 (let ((?x93 (bvshl (_ bv1 64) ?x92)))
 (let ((?x76 ((_ extract 31 0) ?x93)))
 (let (($x122 (bvsge (_ bv1 32) ?x76)))
 (let (($x240 (and $x122 $x98)))
 (let (($x7 (= R ?x76)))
 (let (($x71 (bvslt (_ bv1 32) ?x76)))
 (let (($x225 (and $x71 $x7)))
 (let (($x232 (or $x225 $x240)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x10 (= (_ bv0 32) ?x6)))
 (let (($x230 (and $x10 $x98)))
 (let (($x36 (and (distinct (_ bv0 32) ?x6) true)))
 (let (($x72 (and $x36 $x7)))
 (let (($x236 (or $x72 $x230)))
 (and $x236 $x232)))))))))))))))))))
(check-sat)
