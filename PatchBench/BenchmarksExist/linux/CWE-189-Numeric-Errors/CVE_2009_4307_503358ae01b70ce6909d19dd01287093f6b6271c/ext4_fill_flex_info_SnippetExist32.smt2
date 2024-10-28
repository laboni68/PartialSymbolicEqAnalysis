; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x14 ((_ extract 31 0) (bvshl (_ bv1 64) (concat (_ bv0 59) ((_ extract 4 0) rdi))))))
 (let (($x55 (bvsle ?x14 (_ bv1 32))))
 (let (($x56 (not $x55)))
 (let ((?x21 ((_ extract 31 0) rdi)))
 (let (($x49 (= ?x21 (_ bv0 32))))
 (let (($x50 (not $x49)))
 (let (($x291 (and (or $x49 (and $x50 (= ?x14 (_ bv1 32)))) (or $x55 (and $x56 (= ?x14 (_ bv1 32)))))))
 (let (($x495 (or $x291 (and $x50 (= ?x14 (_ bv32 32)) $x56) (and $x50 (= ?x14 (_ bv2 32)) $x56) (and $x50 (= ?x14 (_ bv268435456 32)) $x56) (and $x50 (= ?x14 (_ bv33554432 32)) $x56) (and $x50 (= ?x14 (_ bv8192 32)) $x56) (and $x50 (= ?x14 (_ bv65536 32)) $x56) (and $x50 (= ?x14 (_ bv4 32)) $x56) (and $x50 (= ?x14 (_ bv131072 32)) $x56) (and $x50 (= ?x14 (_ bv8 32)) $x56) (and $x50 (= ?x14 (_ bv262144 32)) $x56) (and $x50 (= ?x14 (_ bv16 32)) $x56) (and $x50 (= ?x14 (_ bv524288 32)) $x56) (and $x50 (= ?x14 (_ bv64 32)) $x56) (and $x50 (= ?x14 (_ bv2097152 32)) $x56) (and $x50 (= ?x14 (_ bv128 32)) $x56) (and $x50 (= ?x14 (_ bv1048576 32)) $x56) (and $x50 (= ?x14 (_ bv256 32)) $x56) (and $x50 (= ?x14 (_ bv4194304 32)) $x56) (and $x50 (= ?x14 (_ bv512 32)) $x56) (and $x50 (= ?x14 (_ bv16777216 32)) $x56) (and $x50 (= ?x14 (_ bv1024 32)) $x56) (and $x50 (= ?x14 (_ bv8388608 32)) $x56) (and $x50 (= ?x14 (_ bv2048 32)) $x56) (and $x50 (= ?x14 (_ bv67108864 32)) $x56) (and $x50 (= ?x14 (_ bv4096 32)) $x56) (and $x50 (= ?x14 (_ bv134217728 32)) $x56) (and $x50 (= ?x14 (_ bv16384 32)) $x56) (and $x50 (= ?x14 (_ bv536870912 32)) $x56) (and $x50 (= ?x14 (_ bv32768 32)) $x56) (and $x50 (= ?x14 (_ bv1073741824 32)) $x56))))
 (and $x495))))))))))
(check-sat)
