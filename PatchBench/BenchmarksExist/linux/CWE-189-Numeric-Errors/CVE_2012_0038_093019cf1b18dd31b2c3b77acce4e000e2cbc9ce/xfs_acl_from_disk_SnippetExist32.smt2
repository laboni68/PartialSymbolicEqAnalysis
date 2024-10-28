; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x62 (bvsle ?x9 (_ bv25 32))))
 (let (($x54 (bvule ((_ extract 4 0) rdi) (_ bv25 5))))
 (let (($x51 (= ((_ extract 31 5) rdi) (_ bv0 27))))
 (let (($x261 (or (and (not (and $x51 $x54)) (not $x62)) (and $x51 $x54 $x62))))
 (and $x261)))))))
(check-sat)
