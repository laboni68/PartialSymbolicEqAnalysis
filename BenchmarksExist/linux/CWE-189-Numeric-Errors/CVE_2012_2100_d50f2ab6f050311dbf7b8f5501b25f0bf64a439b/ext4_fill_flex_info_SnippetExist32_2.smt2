; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x59 (bvsle ?x9 (_ bv0 32))))
 (let (($x60 (not $x59)))
 (let (($x57 (bvsle ?x9 (_ bv31 32))))
 (let ((?x18 ((_ extract 31 0) (bvshl (_ bv1 64) (concat (_ bv0 59) ((_ extract 4 0) rdi))))))
 (let (($x51 (bvsle ?x18 (_ bv1 32))))
 (let (($x52 (not $x51)))
 (let (($x370 (and (or $x51 (and $x52 (= ?x18 (_ bv1 32)))) (or $x59 (and (not $x57) $x60) (and $x57 $x60 (= ?x18 (_ bv1 32)))))))
 (let (($x570 (or $x370 (and $x52 (= ?x18 (_ bv536870912 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv268435456 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv16777216 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv65536 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv131072 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv33554432 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv524288 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv134217728 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv8388608 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv2097152 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv1048576 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv256 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv2 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv512 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv16 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv4096 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv64 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv16384 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv32 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv128 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv8192 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv32768 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv4 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv8 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv2048 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv1024 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv262144 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv67108864 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv4194304 32)) $x57 $x60) (and $x52 (= ?x18 (_ bv1073741824 32)) $x57 $x60))))
 (and $x570)))))))))))
(check-sat)

