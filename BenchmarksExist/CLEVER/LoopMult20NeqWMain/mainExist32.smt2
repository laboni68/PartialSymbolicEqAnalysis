; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x100 (bvsle ?x9 (_ bv17 32))))
 (let (($x101 (not $x100)))
 (let (($x99 (bvsle ?x9 (_ bv21 32))))
 (let (($x103 (not $x99)))
 (let (($x660 (and $x103 $x101)))
 (let (($x662 (or $x100 $x660)))
 (let (($x661 (or $x100 (and $x99 $x101 (= (bvmul (_ bv20 32) ?x9) (_ bv0 32))) $x660)))
 (and $x661 $x662))))))))))
(check-sat)

