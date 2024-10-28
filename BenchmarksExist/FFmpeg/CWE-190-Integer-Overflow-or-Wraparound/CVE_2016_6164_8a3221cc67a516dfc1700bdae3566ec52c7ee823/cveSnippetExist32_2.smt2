; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun R () (_ BitVec 32))
(assert
 (let (($x10 (= R (concat (_ bv0 32) ((_ extract 31 0) rdi)))))
 (let (($x52 (or (and (not (= ((_ extract 31 30) rdi) (_ bv0 2))) (= R (_ bv0 64))) (and (= ((_ extract 31 30) rdi) (_ bv0 2)) $x10))))
 (and $x52 $x10))))
(check-sat)

