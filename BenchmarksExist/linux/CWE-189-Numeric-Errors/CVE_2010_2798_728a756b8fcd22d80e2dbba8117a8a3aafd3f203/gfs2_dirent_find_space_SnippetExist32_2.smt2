; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let ((?x16 (concat ((_ extract 31 3) (bvadd (_ bv47 32) ((_ extract 31 0) rsi))) (_ bv0 3))))
 (let (($x17 (bvule ?x16 ?x9)))
 (let ((?x54 (bvadd (_ bv4294967256 32) ?x9)))
 (let (($x55 (bvule ?x16 ?x54)))
 (let (($x543 (or (and (not $x55) (not $x17)) (and $x55 $x17))))
 (and $x543))))))))
(check-sat)

