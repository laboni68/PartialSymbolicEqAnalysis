; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x56 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x10 (= (_ bv0 32) ?x6)))
 (let (($x60 (and $x10 $x56)))
 (let ((?x49 (bvmul (_ bv8 32) ?x6)))
 (let (($x58 (= R ?x49)))
 (let (($x36 (and (distinct (_ bv0 32) ?x6) true)))
 (let ((?x69 (bvashr ?x49 (_ bv32 32))))
 (let (($x141 (= (_ bv0 32) ?x69)))
 (let (($x61 (and $x141 $x36 $x58)))
 (let (($x66 (= (_ bv4294967274 32) R)))
 (let (($x70 (and (distinct (_ bv0 32) ?x69) true)))
 (let (($x67 (and $x70 $x36 $x66)))
 (let (($x62 (or $x67 $x61 $x60)))
 (let (($x150 (not $x62)))
 (let (($x51 (and $x36 $x58)))
 (let (($x47 (or $x51 $x60)))
 (let (($x149 (not $x47)))
 (let (($x151 (and $x149 $x150)))
 (let (($x54 (and $x47 $x62)))
 (let (($x152 (or $x54 $x151)))
 (not $x152)))))))))))))))))))))))
(check-sat)