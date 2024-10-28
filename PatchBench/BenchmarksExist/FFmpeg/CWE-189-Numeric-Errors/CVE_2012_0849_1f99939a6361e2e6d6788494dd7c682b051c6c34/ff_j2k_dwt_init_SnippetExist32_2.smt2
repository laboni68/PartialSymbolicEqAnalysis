; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x58 (= ((_ extract 31 5) rdi) (_ bv0 27))))
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x42 (bvsle ?x9 (_ bv31 32))))
 (let (($x247 (and $x42 $x58)))
 (let (($x60 (not $x58)))
 (let (($x43 (not $x42)))
 (let (($x246 (and $x43 $x60)))
 (let (($x248 (or $x246 $x247)))
 (and $x248))))))))))
(check-sat)

