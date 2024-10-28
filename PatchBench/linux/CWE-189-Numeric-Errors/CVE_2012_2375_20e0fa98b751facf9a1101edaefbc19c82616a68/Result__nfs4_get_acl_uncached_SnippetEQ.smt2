; benchmark generated from python API
(set-info :status unknown)
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x11 ((_ extract 31 0) rsi)))
 (let ((?x16 (bvmul (_ bv4294967295 32) ?x11)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x17 (bvadd ?x6 ?x16)))
 (let (($x30 (= R ?x17)))
 (let (($x21 (= R ?x6)))
 (and $x21 $x30))))))))
(check-sat)
