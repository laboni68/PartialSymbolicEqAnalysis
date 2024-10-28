; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x62 (bvsle rdi (_ bv4 32))))
 (let (($x63 (not $x62)))
 (let (($x61 (bvsle rdi (_ bv6 32))))
 (let (($x67 (not $x61)))
 (let (($x517 (and $x67 $x63)))
 (let (($x519 (or $x62 $x517)))
 (let (($x518 (or $x62 (and $x61 $x63 (= rdi (_ bv0 32))) $x517)))
 (and $x518 $x519)))))))))
(check-sat)
