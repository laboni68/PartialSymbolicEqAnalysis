; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x44 (= ?x9 (_ bv0 32))))
 (let (($x45 (not $x44)))
 (let (($x63 (bvule ((_ extract 8 0) rdi) (_ bv256 9))))
 (let (($x60 (= ((_ extract 31 9) rdi) (_ bv0 23))))
 (let (($x64 (and $x60 $x63)))
 (let (($x65 (not $x64)))
 (let (($x250 (and $x44 (or $x44 (and $x65 $x45)))))
 (let (($x247 (and $x45 $x60 $x63)))
 (let (($x246 (or $x247 $x250)))
 (and $x246))))))))))))
(check-sat)

