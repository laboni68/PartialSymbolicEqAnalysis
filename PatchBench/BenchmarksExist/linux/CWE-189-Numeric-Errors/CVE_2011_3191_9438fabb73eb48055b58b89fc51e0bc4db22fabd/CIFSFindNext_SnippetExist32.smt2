; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x58 (= ((_ extract 31 12) rdi) (_ bv0 20))))
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x42 (bvsle ?x9 (_ bv4095 32))))
 (let (($x240 (and $x42 $x58)))
 (let (($x60 (not $x58)))
 (let (($x43 (not $x42)))
 (let (($x239 (and $x43 $x60)))
 (let (($x241 (or $x239 $x240)))
 (and $x241))))))))))
(check-sat)
