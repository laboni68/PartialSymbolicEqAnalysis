; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdx () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x66 (= ?x9 (_ bv2 32))))
 (let (($x64 (= ((_ extract 31 16) rsi) (_ bv0 16))))
 (let (($x71 (not $x64)))
 (let (($x409 (and (or (and (= ((_ extract 31 0) rdx) (_ bv0 32)) $x64 $x66) (and $x71 $x66)) $x71 $x66)))
 (let (($x74 (not $x66)))
 (let (($x403 (or $x74 (and (not (= ((_ extract 31 0) rdx) (_ bv0 32))) $x64 $x66) $x409)))
 (and $x403)))))))))
(check-sat)

