; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x582 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let (($x14 (bvult ?x8 ?x6)))
 (let (($x583 (and $x14 $x582)))
 (let (($x39 (bvuge ?x8 ?x6)))
 (let ((?x581 (bvadd ?x6 (_ bv49 32))))
 (let (($x851 (bvugt ?x8 ?x581)))
 (let (($x586 (and $x851 $x39 $x582)))
 (let ((?x67 (bvmul (_ bv4294967295 32) ?x8)))
 (let ((?x71 (bvadd (_ bv50 32) ?x6)))
 (let ((?x59 (bvadd ?x71 ?x67)))
 (let (($x587 (= R ?x59)))
 (let (($x594 (bvule ?x8 ?x581)))
 (let (($x585 (and $x594 $x39 $x587)))
 (let (($x580 (or $x585 $x586 $x583)))
 (let ((?x60 (bvadd ?x6 (_ bv50 32))))
 (let (($x390 (bvuge ?x8 ?x60)))
 (let (($x417 (and $x390 $x39 $x582)))
 (let (($x73 (bvult ?x8 ?x60)))
 (let (($x588 (and $x73 $x39 $x587)))
 (let (($x584 (or $x588 $x417 $x583)))
 (and $x584 $x580))))))))))))))))))))))))
(check-sat)
