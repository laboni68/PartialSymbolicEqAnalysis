; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 15 0) rdi)))
 (let ((?x11 (concat (_ bv0 16) ?x9)))
 (let (($x125 (bvsle ?x11 (_ bv0 32))))
 (let (($x126 (not $x125)))
 (let ((?x17 ((_ extract 15 0) rsi)))
 (let ((?x18 (concat (_ bv0 16) ?x17)))
 (let (($x123 (bvsle ?x18 (_ bv0 32))))
 (let (($x124 (not $x123)))
 (let ((?x110 (concat (_ bv0 12) ?x17)))
 (let ((?x111 (bvadd (_ bv128 28) ?x110)))
 (let ((?x104 (concat (_ bv0 12) ?x9)))
 (let ((?x105 (bvadd (_ bv128 28) ?x104)))
 (let (($x177 (bvule (bvmul ?x105 ?x111) (_ bv268435454 28))))
 (let ((?x83 (bvadd (_ bv128 32) ?x18)))
 (let ((?x84 (concat (_ bv0 32) ?x83)))
 (let ((?x80 (bvadd (_ bv128 32) ?x11)))
 (let ((?x81 (concat (_ bv0 32) ?x80)))
 (let ((?x85 (bvmul ?x81 ?x84)))
 (let (($x91 (= ((_ extract 63 28) ?x85) (_ bv0 36))))
 (let (($x68 (= ?x9 (_ bv0 16))))
 (let (($x69 (not $x68)))
 (let (($x65 (= ?x17 (_ bv0 16))))
 (let (($x66 (not $x65)))
 (let (($x4901 (or $x68 (and $x65 $x69))))
 (let (($x4912 (and $x4901 (or $x125 (and (not (and $x91 $x177)) $x124 $x126) (and $x123 $x126)))))
 (let (($x4910 (or $x4912 (and $x66 $x69 $x91 $x177 $x124 $x126))))
 (and $x4910))))))))))))))))))))))))))))
(check-sat)
