; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x83 (= (_ bv4294967295 32) R)))
 (let ((?x14 ((_ extract 7 0) rdi)))
 (let ((?x15 ((_ extract 7 0) rsi)))
 (let (($x25 (= ?x15 ?x14)))
 (let (($x91 (and $x25 $x83)))
 (let ((?x58 (concat (_ bv0 21) ?x15)))
 (let ((?x59 (bvmul (_ bv536870911 29) ?x58)))
 (let ((?x52 (concat (_ bv0 21) ?x14)))
 (let ((?x60 (bvadd ?x52 ?x59)))
 (let ((?x61 (concat ?x60 (_ bv0 3))))
 (let (($x81 (= R ?x61)))
 (let (($x64 (and (distinct ?x15 ?x14) true)))
 (let (($x82 (and $x64 $x81)))
 (let (($x84 (or $x82 $x91)))
 (and $x81 $x84))))))))))))))))
(check-sat)
