; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(assert
 (let (($x73 (bvule (_ bv2147483648 64) rdi)))
 (let (($x74 (not $x73)))
 (let (($x71 (bvule (_ bv2147483648 64) rsi)))
 (let (($x72 (not $x71)))
 (let ((?x17 (bvadd rdi rsi)))
 (let (($x69 (bvule (_ bv2147483648 64) ?x17)))
 (let (($x70 (not $x69)))
 (let (($x121 (= rsi (bvmul (_ bv18446744073709551615 64) rdi))))
 (let (($x910 (and $x121 $x70 $x72 $x74)))
 (let (($x911 (and (not $x121) $x70 $x72 $x74)))
 (let (($x979 (or $x911 $x910)))
 (and $x979)))))))))))))
(check-sat)

