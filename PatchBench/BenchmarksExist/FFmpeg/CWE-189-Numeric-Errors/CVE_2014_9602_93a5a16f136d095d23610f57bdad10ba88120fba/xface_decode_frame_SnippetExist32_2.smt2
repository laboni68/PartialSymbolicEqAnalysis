; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let ((?x11 (bvadd (_ bv1 32) ((_ extract 31 0) rdi))))
 (let (($x67 (bvsle ?x11 (_ bv666 32))))
 (let ((?x19 ((_ extract 31 0) rsi)))
 (let (($x65 (bvsle ?x19 (_ bv545 32))))
 (let (($x66 (not $x65)))
 (let (($x70 (not $x67)))
 (let (($x57 (bvsle ?x11 (_ bv704 32))))
 (let (($x62 (not $x57)))
 (let (($x421 (and (or $x62 (and (not (bvsle ?x19 (_ bv575 32))) $x57)) (or $x70 (and $x66 $x67)))))
 (let (($x426 (or (and (bvsle ?x19 (_ bv575 32)) $x57 $x65 $x67) $x421)))
 (and $x426))))))))))))
(check-sat)

