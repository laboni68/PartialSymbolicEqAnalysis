; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x71 (= ?x9 (_ bv0 32))))
 (let (($x72 (not $x71)))
 (let (($x67 (bvule ((_ extract 21 0) rdi) (_ bv4186127 22))))
 (let (($x64 (= ((_ extract 31 22) rdi) (_ bv0 10))))
 (let (($x48 (bvsle ?x9 (_ bv4186127 32))))
 (let (($x286 (or (and (not $x48) (not (and $x64 $x67)) $x72) (and $x48 $x64 $x67 $x72))))
 (and $x286)))))))))
(check-sat)

