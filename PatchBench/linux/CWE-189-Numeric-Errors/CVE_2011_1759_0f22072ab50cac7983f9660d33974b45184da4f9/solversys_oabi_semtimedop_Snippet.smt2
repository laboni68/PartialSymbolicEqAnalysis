; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x48 (= (_ bv4294967274 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x10 (= (_ bv0 32) ?x6)))
 (let (($x51 (and $x10 $x48)))
 (let (($x57 (= (_ bv1 32) R)))
 (let (($x36 (and (distinct (_ bv0 32) ?x6) true)))
 (let (($x52 (bvule ?x6 (_ bv32 32))))
 (let (($x145 (and $x52 $x36 $x57)))
 (let (($x144 (bvugt ?x6 (_ bv32 32))))
 (let (($x151 (and $x144 $x36 $x48)))
 (let (($x154 (or $x151 $x145 $x51)))
 (let (($x157 (not $x154)))
 (let (($x54 (and $x36 $x57)))
 (let (($x148 (or $x54 $x51)))
 (let (($x156 (not $x148)))
 (let (($x158 (and $x156 $x157)))
 (let (($x155 (and $x148 $x154)))
 (let (($x159 (or $x155 $x158)))
 (not $x159))))))))))))))))))))
(check-sat)
