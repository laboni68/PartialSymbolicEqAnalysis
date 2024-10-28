; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x49 (bvule ((_ extract 30 0) rdi) (_ bv2147483590 31))))
 (let (($x46 (= ((_ extract 31 31) rdi) (_ bv0 1))))
 (let (($x50 (and $x46 $x49)))
 (let (($x51 (not $x50)))
 (let (($x295 (or $x50 (and $x51 (= ((_ extract 31 0) rdi) (_ bv3199971726 32))))))
 (and $x295)))))))
(check-sat)
