; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x491 (= (_ bv4294967295 32) R)))
 (let (($x15 (= (_ bv9223372036854775808 64) rdi)))
 (let (($x37 (= (_ bv9223372036854775808 64) rsi)))
 (let (($x492 (and $x37 $x15 $x491)))
 (let (($x495 (= (_ bv22 32) R)))
 (let (($x39 (and (distinct (_ bv9223372036854775808 64) rsi) true)))
 (let (($x59 (bvsgt (_ bv18446744073709548516 64) rsi)))
 (let (($x501 (and $x59 $x39 $x15 $x495)))
 (let (($x27 (and (distinct (_ bv9223372036854775808 64) rdi) true)))
 (let (($x134 (bvsgt (_ bv18446744073709548516 64) rdi)))
 (let (($x500 (and $x134 $x27 $x495)))
 (let (($x486 (= (_ bv0 32) R)))
 (let (($x60 (bvsle (_ bv18446744073709548516 64) rsi)))
 (let (($x315 (bvsge (_ bv2147479996900 64) rsi)))
 (let (($x499 (and $x315 $x60 $x39 $x15 $x486)))
 (let (($x341 (bvslt (_ bv2147479996900 64) rsi)))
 (let (($x498 (and $x341 $x60 $x39 $x15 $x495)))
 (let (($x135 (bvsle (_ bv18446744073709548516 64) rdi)))
 (let (($x407 (bvsge (_ bv2147479996900 64) rdi)))
 (let (($x497 (and $x407 $x135 $x27 $x486)))
 (let (($x484 (bvslt (_ bv2147479996900 64) rdi)))
 (let (($x496 (and $x484 $x135 $x27 $x495)))
 (let (($x502 (or $x496 $x497 $x498 $x499 $x500 $x501 $x492)))
 (let (($x505 (not $x502)))
 (let (($x489 (and $x39 $x15 $x486)))
 (let (($x488 (and $x27 $x486)))
 (let (($x493 (or $x488 $x489 $x492)))
 (let (($x504 (not $x493)))
 (let (($x506 (and $x504 $x505)))
 (let (($x503 (and $x493 $x502)))
 (let (($x507 (or $x503 $x506)))
 (not $x507)))))))))))))))))))))))))))))))))
(check-sat)
