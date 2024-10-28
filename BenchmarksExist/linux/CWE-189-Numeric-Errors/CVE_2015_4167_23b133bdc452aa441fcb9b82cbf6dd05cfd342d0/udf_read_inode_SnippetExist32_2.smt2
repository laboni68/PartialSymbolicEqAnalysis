; benchmark generated from python API
(set-info :status unknown)
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(declare-fun rdx () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rsi)))
 (let ((?x11 ((_ extract 31 0) rdi)))
 (let (($x14 (bvule ?x11 ?x9)))
 (let ((?x65 ((_ extract 31 31) rsi)))
 (let ((?x66 (concat ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x65 ?x9)))
 (let (($x111 (bvule (bvadd (concat (_ bv0 32) ?x11) rdx) ?x66)))
 (let (($x54 (= ?x11 (_ bv28 32))))
 (let (($x55 (not $x54)))
 (let (($x763 (and $x55 (or (not $x14) (and $x55 $x111 $x14) (and (not $x111) $x14)))))
 (let (($x775 (or $x763 (and $x54 $x111 $x14))))
 (and $x775))))))))))))
(check-sat)

