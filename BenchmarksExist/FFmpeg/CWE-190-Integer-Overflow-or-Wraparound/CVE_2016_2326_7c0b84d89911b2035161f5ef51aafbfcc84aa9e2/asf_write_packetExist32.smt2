; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x62 (= rdi (_ bv9223372036854775808 64))))
 (let (($x67 (= rsi (_ bv9223372036854775808 64))))
 (let (($x68 (not $x67)))
 (let (($x27 (bvsle (_ bv18446744073709548516 64) rsi)))
 (let (($x78 (bvsle rsi (_ bv2147479996900 64))))
 (let (($x551 (or (and (bvsle rdi (_ bv2147479996900 64)) (bvsle (_ bv18446744073709548516 64) rdi) (not $x62)) (and $x78 $x27 $x68 $x62))))
 (let (($x544 (or (and $x67 $x62) (and (or (not $x62) (and $x68 $x62)) $x551))))
 (and $x544)))))))))
(check-sat)
