; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x46 (= rdi (_ bv0 32))))
 (let (($x47 (not $x46)))
 (let ((?x56 ((_ extract 5 0) rdi)))
 (let (($x63 (bvule ?x56 (_ bv32 6))))
 (let (($x60 (= ((_ extract 31 6) rdi) (_ bv0 26))))
 (let (($x64 (and $x60 $x63)))
 (let (($x65 (not $x64)))
 (let (($x214 (and $x46 (or $x46 (and $x65 $x47)))))
 (let (($x210 (and $x47 $x60 $x63)))
 (let (($x211 (or $x210 $x214)))
 (and $x211))))))))))))
(check-sat)

