; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rdx () (_ BitVec 64))
(assert
 (let (($x650 (= (_ bv4294967295 32) R)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x56 (bvugt ?x6 ?x8)))
 (let (($x2279 (and $x56 $x650)))
 (let (($x51 (bvule ?x6 ?x8)))
 (let ((?x89 ((_ sign_extend 32) ?x8)))
 (let ((?x50 ((_ zero_extend 32) ?x6)))
 (let ((?x74 (bvadd ?x50 rdx)))
 (let (($x653 (bvugt ?x74 ?x89)))
 (let (($x2303 (and $x653 $x51 $x650)))
 (let (($x644 (= (_ bv0 32) R)))
 (let (($x90 (bvule ?x74 ?x89)))
 (let (($x13 (= (_ bv28 32) ?x6)))
 (let (($x2276 (and $x13 $x90 $x51 $x644)))
 (let (($x39 (and (distinct (_ bv28 32) ?x6) true)))
 (let (($x448 (and $x39 $x90 $x51 $x650)))
 (let (($x2624 (or $x448 $x2276 $x2303 $x2279)))
 (let (($x647 (and $x13 $x644)))
 (let (($x641 (and $x39 $x650)))
 (let (($x638 (or $x641 $x647)))
 (and $x638 $x2624)))))))))))))))))))))))
(check-sat)
