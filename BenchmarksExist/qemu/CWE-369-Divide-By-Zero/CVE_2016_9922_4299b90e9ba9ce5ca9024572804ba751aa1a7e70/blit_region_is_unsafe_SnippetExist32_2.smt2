; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x169 (= ?x9 (_ bv0 32))))
 (let (($x170 (not $x169)))
 (let ((?x24 ((_ extract 31 31) rdi)))
 (let (($x153 (= ?x24 (_ bv0 1))))
 (let (($x154 (not $x153)))
 (let ((?x131 (concat ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x24 ?x9)))
 (let ((?x132 (bvmul (_ bv7 64) ?x131)))
 (let ((?x135 ((_ extract 63 63) (bvadd (_ bv50 64) ?x132))))
 (let (($x137 (= ?x135 (_ bv0 1))))
 (let (($x165 (not $x137)))
 (let (($x1170 (or $x169 (and (not (bvsle (bvadd (_ bv58 64) ?x132) (_ bv4294967295 64))) $x153 $x170) (and $x165 $x154 $x170))))
 (let (($x1173 (and (or (and (not (bvsle (bvadd (_ bv58 64) ?x132) (_ bv4294967295 64))) $x153) (and $x165 $x154)) $x1170)))
 (let (($x1194 (or (and $x137 $x154 $x170) (and (bvsle (bvadd (_ bv58 64) ?x132) (_ bv4294967295 64)) $x153 $x170))))
 (let (($x1197 (and (or (and $x137 $x154) (and (bvsle (bvadd (_ bv58 64) ?x132) (_ bv4294967295 64)) $x153)) $x1194)))
 (let (($x1134 (or $x1197 $x1173)))
 (and $x1134))))))))))))))))))
(check-sat)

