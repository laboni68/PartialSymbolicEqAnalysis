; benchmark generated from python API
(set-info :status unknown)
(declare-fun return () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x145 (= (_ bv4294967295 32) return)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x41 (bvsge (_ bv0 32) ?x6)))
 (let (($x151 (and $x41 $x145)))
 (let (($x132 (= (_ bv1 32) return)))
 (let (($x44 (bvslt (_ bv0 32) ?x6)))
 (let (($x150 (and $x44 $x132)))
 (let (($x152 (or $x150 $x151)))
 (let (($x155 (not $x152)))
 (let (($x147 (= (_ bv0 32) return)))
 (let (($x10 (= (_ bv0 32) ?x6)))
 (let (($x148 (and $x10 $x147)))
 (let (($x36 (and (distinct (_ bv0 32) ?x6) true)))
 (let ((?x7 ((_ zero_extend 32) ?x6)))
 (let ((?x47 (bvlshr ?x7 (_ bv31 64))))
 (let ((?x48 ((_ extract 0 0) ?x47)))
 (let ((?x49 (bvand ?x48 (_ bv1 1))))
 (let (($x50 (and (distinct (_ bv0 1) ?x49) true)))
 (let (($x146 (and $x50 $x36 $x145)))
 (let (($x125 (= (_ bv0 1) ?x49)))
 (let (($x140 (and $x125 $x36 $x132)))
 (let (($x149 (or $x140 $x146 $x148)))
 (let (($x154 (not $x149)))
 (let (($x156 (and $x154 $x155)))
 (let (($x153 (and $x149 $x152)))
 (let (($x157 (or $x153 $x156)))
 (not $x157))))))))))))))))))))))))))))
(check-sat)
