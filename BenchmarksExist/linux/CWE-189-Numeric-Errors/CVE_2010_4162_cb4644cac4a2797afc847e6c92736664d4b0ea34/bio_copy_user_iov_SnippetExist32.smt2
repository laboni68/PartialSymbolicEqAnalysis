; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x10 (bvadd (_ bv35184372072562 64) rdi)))
 (let ((?x11 ((_ extract 63 13) ?x10)))
 (let (($x44 (bvule (_ bv4294967293 51) ?x11)))
 (let (($x54 (not $x44)))
 (let (($x440 (or $x44 (and $x54 (= ((_ extract 44 13) ?x10) (_ bv4294967271 32))))))
 (and $x440)))))))
(check-sat)
