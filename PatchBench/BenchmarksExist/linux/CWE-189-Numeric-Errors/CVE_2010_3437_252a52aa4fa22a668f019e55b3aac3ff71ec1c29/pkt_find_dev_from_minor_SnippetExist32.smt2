; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x58 (= ((_ extract 31 3) rdi) (_ bv0 29))))
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x42 (bvsle ?x9 (_ bv7 32))))
 (let (($x249 (and $x42 $x58)))
 (let (($x60 (not $x58)))
 (let (($x43 (not $x42)))
 (let (($x248 (and $x43 $x60)))
 (let (($x250 (or $x248 $x249)))
 (and $x250))))))))))
(check-sat)
