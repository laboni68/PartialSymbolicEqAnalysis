; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x327 (bvadd (_ bv1 32) ?x6)))
 (let ((?x323 ((_ extract 31 31) ?x327)))
 (let ((?x721 (concat (concat (concat (concat (concat ?x323 ?x323) ?x323) ?x323) ?x323) ?x323)))
 (let ((?x494 (concat (concat (concat (concat (concat ?x721 ?x323) ?x323) ?x323) ?x323) ?x323)))
 (let ((?x81 (concat (concat (concat (concat (concat ?x494 ?x323) ?x323) ?x323) ?x323) ?x323)))
 (let ((?x625 (concat (concat (concat (concat (concat ?x81 ?x323) ?x323) ?x323) ?x323) ?x323)))
 (let ((?x667 (concat (concat (concat (concat (concat ?x625 ?x323) ?x323) ?x323) ?x323) ?x323)))
 (let ((?x663 (concat (concat (concat (concat (concat ?x667 ?x323) ?x323) ?x323) ?x323) ?x323)))
 (let ((?x549 (concat (concat ?x663 ?x323) ?x327)))
 (let ((?x592 (bvashr ?x549 (_ bv31 64))))
 (let ((?x686 ((_ extract 31 31) ?x592)))
 (let ((?x563 (concat (_ bv0 31) ?x686)))
 (let ((?x619 (bvmul (_ bv4294967295 32) ?x563)))
 (let ((?x691 (bvadd (bvadd (_ bv1 1) ((_ extract 0 0) rdi)) ?x686)))
 (let ((?x506 (concat (_ bv0 31) ?x691)))
 (let ((?x704 (bvadd ?x506 ?x619)))
 (let (($x478 (and (distinct R ?x704) true)))
 (let (($x712 (= (_ bv0 32) R)))
 (let ((?x27 ((_ extract 7 0) rdi)))
 (let ((?x22 (bvand ?x27 (_ bv1 8))))
 (let (($x66 (and (distinct (_ bv0 8) ?x22) true)))
 (let (($x83 (and $x66 $x712)))
 (let (($x654 (= (_ bv1 32) R)))
 (let (($x20 (= (_ bv0 8) ?x22)))
 (let ((?x89 ((_ extract 31 31) rdi)))
 (let ((?x100 (concat (_ bv0 31) ?x89)))
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
 (let (($x718 (and $x231 $x20 $x654)))
 (let (($x666 (= (_ bv2 32) R)))
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
 (let (($x64 (and $x469 $x154 $x20 $x666)))
 (let (($x80 (= (_ bv3 32) R)))
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
 (let (($x492 (and $x541 $x356 $x154 $x20 $x80)))
 (let (($x85 (or $x492 $x64 $x718 $x83)))
 (let (($x601 (not $x85)))
 (let (($x634 (and $x601 $x478)))
 (let (($x637 (= R ?x704)))
 (let (($x477 (and $x85 $x637)))
 (let (($x717 (or $x477 $x634)))
 (not $x717)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)

