; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let ((?x54 ((_ extract 31 31) rdi)))
 (let (($x63 (= ?x54 (_ bv0 1))))
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let ((?x23 ((_ extract 31 0) rsi)))
 (let (($x46 (bvsle ?x23 ?x9)))
 (let (($x66 (not $x46)))
 (let (($x447 (or (and (not $x63) (= ?x9 (_ bv4294967290 32))) (and $x46 $x63 (= ?x9 (_ bv4294967290 32))) (and $x66 $x63))))
 (and $x447)))))))))
(check-sat)

