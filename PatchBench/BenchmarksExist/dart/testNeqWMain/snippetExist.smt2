; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let ((?x79 (bvmul rdi rdi rdi)))
 (let ((?x99 ((_ extract 31 31) ?x79)))
 (let (($x108 (= ?x99 (_ bv0 1))))
 (let (($x78 (bvsle ?x79 (_ bv0 32))))
 (let (($x76 (bvsle rdi (_ bv0 32))))
 (let (($x77 (not $x76)))
 (let (($x87 (= rsi (_ bv20 32))))
 (let (($x7915 (or (and (not $x87) $x77 $x108) (and (not (= rsi (_ bv10 32))) $x77 (not $x108)) (and $x76 $x108) (and $x76 (not $x108)))))
 (let (($x7910 (or (and (not (= rsi (_ bv10 32))) $x77 (not $x78)) (and (not $x87) $x77 $x78) (and $x76 (not $x78)) (and $x76 $x78))))
 (let (($x7905 (or (and $x7910 $x7915) (and $x87 $x77 $x78 $x108))))
 (and $x7905))))))))))))
(check-sat)