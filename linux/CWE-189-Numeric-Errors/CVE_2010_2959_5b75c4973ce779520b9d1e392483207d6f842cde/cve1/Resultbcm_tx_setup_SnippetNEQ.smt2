; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x48 (= (_ bv4294967274 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x10 (= (_ bv0 32) ?x6)))
 (let (($x51 (and $x10 $x48)))
 (let (($x57 (= (_ bv0 32) R)))
 (let (($x36 (and (distinct (_ bv0 32) ?x6) true)))
 (let (($x52 (bvule ?x6 (_ bv256 32))))
 (let (($x148 (and $x52 $x36 $x57)))
 (let (($x147 (bvugt ?x6 (_ bv256 32))))
 (let (($x154 (and $x147 $x36 $x48)))
 (let (($x157 (or $x154 $x148 $x51)))
 (let (($x160 (not $x157)))
 (let (($x54 (and $x36 $x57)))
 (let (($x151 (or $x54 $x51)))
 (let (($x159 (not $x151)))
 (let (($x161 (and $x159 $x160)))
 (let (($x158 (and $x151 $x157)))
 (let (($x162 (or $x158 $x161)))
 (not $x162))))))))))))))))))))
(check-sat)