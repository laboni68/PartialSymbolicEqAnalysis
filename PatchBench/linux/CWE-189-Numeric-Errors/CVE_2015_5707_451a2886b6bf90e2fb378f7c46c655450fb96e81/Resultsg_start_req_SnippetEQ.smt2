; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x165 (= (_ bv4294967274 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x64 (bvugt ?x6 (_ bv1024 32))))
 (let (($x163 (and $x64 $x165)))
 (let (($x135 (= (_ bv8 32) R)))
 (let (($x49 (bvule ?x6 (_ bv1024 32))))
 (let (($x10 (= (_ bv0 32) ?x6)))
 (let (($x155 (and $x10 $x49 $x135)))
 (let ((?x48 (bvmul (_ bv8 32) ?x6)))
 (let (($x147 (= R ?x48)))
 (let (($x36 (and (distinct (_ bv0 32) ?x6) true)))
 (let (($x154 (and $x36 $x49 $x147)))
 (let (($x132 (or $x154 $x155 $x163)))
 (let (($x136 (and $x10 $x135)))
 (let (($x139 (and $x36 $x147)))
 (let (($x137 (or $x139 $x136)))
 (and $x137 $x132))))))))))))))))))
(check-sat)
