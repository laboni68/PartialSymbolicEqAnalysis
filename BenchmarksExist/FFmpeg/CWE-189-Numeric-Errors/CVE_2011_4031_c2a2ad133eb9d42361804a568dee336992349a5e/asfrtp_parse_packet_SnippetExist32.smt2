; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdx () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x61 (bvsle ?x9 (_ bv0 32))))
 (let (($x62 (not $x61)))
 (let (($x59 (bvsle ?x9 (_ bv3 32))))
 (let (($x60 (not $x59)))
 (let ((?x22 (bvadd ?x9 (bvmul (_ bv4294967295 32) ((_ extract 31 0) rsi)))))
 (let ((?x24 ((_ extract 31 0) rdx)))
 (let (($x25 (bvsle ?x24 ?x22)))
 (let (($x90 (ite $x25 (= ((_ extract 31 31) rdx) (_ bv0 1)) (= ((_ extract 31 31) ?x22) (_ bv0 1)))))
 (let (($x888 (and (or $x61 (and $x60 $x62)) (or $x61 (and $x90 $x60 $x62)))))
 (let (($x878 (and $x59 $x62 (or (and $x59 $x62) (and (not $x90) $x60 $x62)))))
 (let (($x891 (or $x878 $x888)))
 (and $x891))))))))))))))
(check-sat)
