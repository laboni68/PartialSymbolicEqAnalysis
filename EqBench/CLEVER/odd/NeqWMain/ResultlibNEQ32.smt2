; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x582 (= (_ bv1 32) R)))
 (let ((?x27 ((_ extract 7 0) rdi)))
 (let ((?x22 (bvand ?x27 (_ bv1 8))))
 (let (($x66 (and (distinct (_ bv0 8) ?x22) true)))
 (let (($x511 (and $x66 $x582)))
 (let (($x697 (= (_ bv2 32) R)))
 (let (($x20 (= (_ bv0 8) ?x22)))
 (let ((?x89 ((_ extract 31 31) rdi)))
 (let ((?x100 (concat (_ bv0 31) ?x89)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x101 (bvadd ?x6 ?x100)))
 (let ((?x102 ((_ extract 31 31) ?x101)))
 (let ((?x90 (concat (concat (concat (concat (concat ?x102 ?x102) ?x102) ?x102) ?x102) ?x102)))
 (let ((?x107 (concat (concat (concat (concat (concat ?x90 ?x102) ?x102) ?x102) ?x102) ?x102)))
 (let ((?x112 (concat (concat (concat (concat (concat ?x107 ?x102) ?x102) ?x102) ?x102) ?x102)))
 (let ((?x117 (concat (concat (concat (concat (concat ?x112 ?x102) ?x102) ?x102) ?x102) ?x102)))
 (let ((?x122 (concat (concat (concat (concat (concat ?x117 ?x102) ?x102) ?x102) ?x102) ?x102)))
 (let ((?x127 (concat (concat (concat (concat (concat ?x122 ?x102) ?x102) ?x102) ?x102) ?x102)))
 (let ((?x129 (concat (concat ?x127 ?x102) ?x101)))
 (let ((?x130 (bvashr ?x129 (_ bv1 64))))
 (let ((?x171 ((_ extract 7 0) ?x130)))
 (let ((?x148 (bvand ?x171 (_ bv1 8))))
 (let (($x231 (and (distinct (_ bv0 8) ?x148) true)))
 (let (($x681 (and $x231 $x20 $x697)))
 (let (($x544 (= (_ bv3 32) R)))
 (let (($x154 (= (_ bv0 8) ?x148)))
 (let ((?x315 ((_ extract 31 31) ?x130)))
 (let ((?x300 (concat (_ bv0 31) ?x315)))
 (let ((?x131 ((_ extract 31 0) ?x130)))
 (let ((?x321 (bvadd ?x131 ?x300)))
 (let ((?x320 ((_ extract 31 31) ?x321)))
 (let ((?x322 (concat (concat (concat (concat (concat ?x320 ?x320) ?x320) ?x320) ?x320) ?x320)))
 (let ((?x297 (concat (concat (concat (concat (concat ?x322 ?x320) ?x320) ?x320) ?x320) ?x320)))
 (let ((?x264 (concat (concat (concat (concat (concat ?x297 ?x320) ?x320) ?x320) ?x320) ?x320)))
 (let ((?x310 (concat (concat (concat (concat (concat ?x264 ?x320) ?x320) ?x320) ?x320) ?x320)))
 (let ((?x291 (concat (concat (concat (concat (concat ?x310 ?x320) ?x320) ?x320) ?x320) ?x320)))
 (let ((?x282 (concat (concat (concat (concat (concat ?x291 ?x320) ?x320) ?x320) ?x320) ?x320)))
 (let ((?x318 (concat (concat ?x282 ?x320) ?x321)))
 (let ((?x279 (bvashr ?x318 (_ bv1 64))))
 (let ((?x412 ((_ extract 7 0) ?x279)))
 (let ((?x398 (bvand ?x412 (_ bv1 8))))
 (let (($x469 (and (distinct (_ bv0 8) ?x398) true)))
 (let (($x537 (and $x469 $x154 $x20 $x544)))
 (let (($x568 (= (_ bv4 32) R)))
 (let (($x356 (= (_ bv0 8) ?x398)))
 (let ((?x452 ((_ extract 31 31) ?x279)))
 (let ((?x531 (concat (_ bv0 31) ?x452)))
 (let ((?x317 ((_ extract 31 0) ?x279)))
 (let ((?x475 (bvadd ?x317 ?x531)))
 (let ((?x443 ((_ extract 31 31) ?x475)))
 (let ((?x483 (concat (concat (concat (concat (concat ?x443 ?x443) ?x443) ?x443) ?x443) ?x443)))
 (let ((?x512 (concat (concat (concat (concat (concat ?x483 ?x443) ?x443) ?x443) ?x443) ?x443)))
 (let ((?x444 (concat (concat (concat (concat (concat ?x512 ?x443) ?x443) ?x443) ?x443) ?x443)))
 (let ((?x439 (concat (concat (concat (concat (concat ?x444 ?x443) ?x443) ?x443) ?x443) ?x443)))
 (let ((?x518 (concat (concat (concat (concat (concat ?x439 ?x443) ?x443) ?x443) ?x443) ?x443)))
 (let ((?x464 (concat (concat (concat (concat (concat ?x518 ?x443) ?x443) ?x443) ?x443) ?x443)))
 (let ((?x498 (concat (concat ?x464 ?x443) ?x475)))
 (let ((?x514 (bvashr ?x498 (_ bv1 64))))
 (let ((?x504 ((_ extract 7 0) ?x514)))
 (let ((?x456 (bvand ?x504 (_ bv1 8))))
 (let (($x541 (and (distinct (_ bv0 8) ?x456) true)))
 (let (($x560 (and $x541 $x356 $x154 $x20 $x568)))
 (let (($x645 (or $x560 $x537 $x681 $x511)))
 (let (($x706 (not $x645)))
 (let (($x566 (= (_ bv0 32) R)))
 (let (($x543 (and $x66 $x566)))
 (let (($x70 (and $x231 $x20 $x582)))
 (let (($x651 (and $x469 $x154 $x20 $x697)))
 (let (($x447 (and $x541 $x356 $x154 $x20 $x544)))
 (let (($x601 (or $x447 $x651 $x70 $x543)))
 (let (($x664 (not $x601)))
 (let (($x225 (and $x664 $x706)))
 (let (($x677 (and $x601 $x645)))
 (let (($x689 (or $x677 $x225)))
 (not $x689))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)

