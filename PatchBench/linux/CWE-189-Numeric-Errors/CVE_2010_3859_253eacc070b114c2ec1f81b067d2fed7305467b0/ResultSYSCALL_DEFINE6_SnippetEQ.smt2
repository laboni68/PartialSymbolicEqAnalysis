; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x43 ((_ extract 31 0) rdi)))
 (let (($x44 (= R ?x43)))
 (let (($x15 (bvult rdi (_ bv2147483648 64))))
 (let (($x48 (and $x15 $x44)))
 (let (($x46 (= (_ bv2147483647 32) R)))
 (let (($x37 (bvuge rdi (_ bv2147483648 64))))
 (let (($x47 (and $x37 $x46)))
 (let (($x49 (or $x47 $x48)))
 (and $x44 $x49))))))))))
(check-sat)
