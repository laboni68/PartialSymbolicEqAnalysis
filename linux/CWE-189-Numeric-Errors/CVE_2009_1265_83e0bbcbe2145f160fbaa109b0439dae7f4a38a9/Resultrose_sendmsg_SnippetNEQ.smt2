; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x152 (= (_ bv0 32) R)))
 (let (($x15 (= (_ bv0 64) rdi)))
 (let (($x153 (and $x15 $x152)))
 (let ((?x36 ((_ extract 31 0) rdi)))
 (let ((?x42 (bvadd (_ bv20 32) ?x36)))
 (let (($x145 (= R ?x42)))
 (let (($x27 (and (distinct (_ bv0 64) rdi) true)))
 (let (($x47 (bvule rdi (_ bv65536 64))))
 (let (($x157 (and $x47 $x27 $x145)))
 (let (($x37 (= (_ bv4294967256 32) R)))
 (let (($x144 (bvugt rdi (_ bv65536 64))))
 (let (($x156 (and $x144 $x27 $x37)))
 (let (($x158 (or $x156 $x157 $x153)))
 (let (($x161 (not $x158)))
 (let (($x151 (and $x27 $x145)))
 (let (($x154 (or $x151 $x153)))
 (let (($x160 (not $x154)))
 (let (($x162 (and $x160 $x161)))
 (let (($x159 (and $x154 $x158)))
 (let (($x163 (or $x159 $x162)))
 (not $x163))))))))))))))))))))))
(check-sat)