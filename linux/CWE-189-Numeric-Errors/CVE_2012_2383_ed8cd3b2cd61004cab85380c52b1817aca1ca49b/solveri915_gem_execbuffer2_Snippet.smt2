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
 (let (($x52 (bvule ?x6 (_ bv76695844 32))))
 (let (($x182 (and $x52 $x36 $x57)))
 (let (($x181 (bvugt ?x6 (_ bv76695844 32))))
 (let (($x188 (and $x181 $x36 $x48)))
 (let (($x191 (or $x188 $x182 $x51)))
 (let (($x194 (not $x191)))
 (let (($x54 (and $x36 $x57)))
 (let (($x185 (or $x54 $x51)))
 (let (($x193 (not $x185)))
 (let (($x195 (and $x193 $x194)))
 (let (($x192 (and $x185 $x191)))
 (let (($x196 (or $x192 $x195)))
 (not $x196))))))))))))))))))))
(check-sat)