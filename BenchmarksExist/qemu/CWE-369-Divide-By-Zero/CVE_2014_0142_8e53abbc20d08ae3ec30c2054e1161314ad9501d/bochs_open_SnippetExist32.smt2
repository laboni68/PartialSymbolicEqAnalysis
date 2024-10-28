; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x85 (bvule ((_ extract 23 0) rdi) (_ bv8388608 24))))
 (let (($x82 (= ((_ extract 31 24) rdi) (_ bv0 8))))
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x67 (= ?x9 (_ bv0 32))))
 (let (($x68 (not $x67)))
 (let ((?x63 ((_ extract 63 0) (bvsdiv_i (_ bv9223372036854775807 128) (concat (_ bv0 96) ?x9)))))
 (let (($x64 (bvsle ?x63 (_ bv4294967295 64))))
 (let (($x65 (not $x64)))
 (and $x65 $x68 $x82 $x85))))))))))
(check-sat)
