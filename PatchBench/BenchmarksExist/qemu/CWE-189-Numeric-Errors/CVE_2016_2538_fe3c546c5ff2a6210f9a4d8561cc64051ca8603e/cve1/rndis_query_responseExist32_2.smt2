; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rdx () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let ((?x14 ((_ extract 31 0) rdi)))
 (let ((?x11 ((_ extract 31 0) rdx)))
 (let (($x24 (bvule ?x11 ?x14)))
 (let ((?x9 ((_ extract 31 0) rsi)))
 (let (($x52 (bvule ?x14 ?x9)))
 (let (($x53 (not $x52)))
 (let ((?x12 (bvadd ?x11 ?x9)))
 (let (($x96 (bvule ?x12 ?x14)))
 (let (($x99 (not $x96)))
 (let (($x1022 (or (and (or (not $x24) (and $x99 $x53 $x24) (and $x52 $x24)) $x99) (and $x96 $x53 $x24))))
 (and $x1022))))))))))))
(check-sat)

