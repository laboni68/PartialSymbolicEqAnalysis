; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let ((?x16 (bvmul (_ bv16 32) (concat (_ bv0 4) ((_ extract 31 4) (bvadd (_ bv15 32) ((_ extract 31 0) rdi)))))))
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x60 (bvule ?x9 ?x16)))
 (let ((?x21 ((_ extract 31 0) rsi)))
 (let ((?x22 (bvadd ?x21 ?x16)))
 (let (($x94 (bvule ?x16 ?x22)))
 (let (($x97 (not $x94)))
 (let (($x63 (not $x60)))
 (let (($x835 (or (and $x94 $x60) (and $x97 (or $x63 (and $x97 $x60))))))
 (and $x835)))))))))))
(check-sat)

