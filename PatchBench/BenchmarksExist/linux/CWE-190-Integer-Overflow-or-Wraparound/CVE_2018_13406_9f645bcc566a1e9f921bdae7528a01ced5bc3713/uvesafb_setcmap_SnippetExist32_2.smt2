; benchmark generated from python API
(set-info :status unknown)
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x53 (= rdi (_ bv0 64))))
 (let (($x54 (not $x53)))
 (let (($x2050 (and (not (= (bvashr (bvmul rdi rsi) (_ bv64 64)) (_ bv0 64))) $x54 (= (bvmul ((_ extract 31 0) rdi) ((_ extract 31 0) rsi)) (_ bv0 32)))))
 (let (($x1438 (or $x53 (and (= (bvashr (bvmul rdi rsi) (_ bv64 64)) (_ bv0 64)) $x54) $x2050)))
 (and $x1438))))))
(check-sat)

