; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x21 (bvmul (_ bv4294967295 32) ?x6)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let ((?x22 (bvadd ?x8 ?x21)))
 (let (($x35 (= R ?x22)))
 (let ((?x16 (bvmul (_ bv4294967295 32) ?x8)))
 (let ((?x17 (bvadd ?x6 ?x16)))
 (let (($x26 (= R ?x17)))
 (and $x26 $x35))))))))))
(check-sat)
