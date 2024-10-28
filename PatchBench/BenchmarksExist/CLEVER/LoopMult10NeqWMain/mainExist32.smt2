; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x76 (bvsle rdi (_ bv8 32))))
 (let (($x77 (not $x76)))
 (let (($x75 (bvsle rdi (_ bv11 32))))
 (let (($x81 (not $x75)))
 (let (($x544 (and $x81 $x77)))
 (let (($x546 (or $x76 $x544)))
 (let (($x545 (or $x76 (and $x75 $x77 (= (bvmul (_ bv10 32) rdi) (_ bv0 32))) $x544)))
 (and $x545 $x546)))))))))
(check-sat)

