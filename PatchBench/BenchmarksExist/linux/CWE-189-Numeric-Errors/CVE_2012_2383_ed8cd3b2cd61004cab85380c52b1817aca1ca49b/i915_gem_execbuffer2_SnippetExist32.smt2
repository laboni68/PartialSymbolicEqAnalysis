; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x63 (bvule ((_ extract 26 0) rdi) (_ bv76695844 27))))
 (let (($x60 (= ((_ extract 31 27) rdi) (_ bv0 5))))
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x44 (= ?x9 (_ bv0 32))))
 (let (($x45 (not $x44)))
 (let (($x276 (or (and $x44 (or $x44 (and (not (and $x60 $x63)) $x45))) (and $x45 $x60 $x63))))
 (and $x276))))))))
(check-sat)
