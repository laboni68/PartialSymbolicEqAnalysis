; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdx () (_ BitVec 32))
(assert
 (let ((?x13 ((_ extract 31 0) rdi)))
 (let ((?x11 (concat (_ bv0 24) ((_ extract 7 0) rsi))))
 (let (($x58 (bvule ?x11 ?x13)))
 (let (($x59 (not $x58)))
 (let ((?x21 (concat (_ bv0 24) ((_ extract 7 0) rdx))))
 (let (($x51 (bvule ?x21 ?x13)))
 (let (($x442 (or (and (not $x51) $x59) (and $x51 $x59))))
 (and $x442)))))))))
(check-sat)

