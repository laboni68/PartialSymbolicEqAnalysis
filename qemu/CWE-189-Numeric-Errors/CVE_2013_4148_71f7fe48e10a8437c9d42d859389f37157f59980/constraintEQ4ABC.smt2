(set-logic QF_LIA)  ; Set the logic to Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int)
(declare-fun R () Int)




(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x71 (= R ?x6)))
 (let (($x46 (bvsge (_ bv64 32) ?x6)))
 (let (($x75 (and $x46 $x71)))
 (let (($x62 (= (_ bv0 32) R)))
 (let (($x58 (bvslt (_ bv64 32) ?x6)))
 (let (($x74 (and $x58 $x62)))
 (let (($x76 (or $x74 $x75)))
 (let (($x11 (bvule ?x6 (_ bv64 32))))
 (let (($x72 (and $x11 $x71)))
 (let (($x43 (bvugt ?x6 (_ bv64 32))))
 (let (($x67 (and $x43 $x62)))
 (let (($x73 (or $x67 $x72)))
 (and $x73 $x76)))))))))))))))


(check-sat)
(get-model)
