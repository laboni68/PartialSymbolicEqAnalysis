; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun r8 () (_ BitVec 64))
(declare-fun r9 () (_ BitVec 64))
(declare-fun rcx () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x26276 (= (_ bv0 32) R)))
 (let ((?x17 ((_ extract 31 0) r8)))
 (let (($x59 (bvsge (_ bv0 32) ?x17)))
 (let (($x26299 (and $x59 $x26276)))
 (let (($x26 (bvslt (_ bv0 32) ?x17)))
 (let (($x183 (and (distinct (_ bv0 32) ?x17) true)))
 (let ((?x19 ((_ extract 31 0) r9)))
 (let ((?x74 ((_ extract 31 31) r8)))
 (let ((?x89 (concat (concat (concat (concat (concat ?x74 ?x74) ?x74) ?x74) ?x74) ?x74)))
 (let ((?x94 (concat (concat (concat (concat (concat ?x89 ?x74) ?x74) ?x74) ?x74) ?x74)))
 (let ((?x99 (concat (concat (concat (concat (concat ?x94 ?x74) ?x74) ?x74) ?x74) ?x74)))
 (let ((?x104 (concat (concat (concat (concat (concat ?x99 ?x74) ?x74) ?x74) ?x74) ?x74)))
 (let ((?x109 (concat (concat (concat (concat (concat ?x104 ?x74) ?x74) ?x74) ?x74) ?x74)))
 (let ((?x114 (concat (concat (concat (concat (concat ?x109 ?x74) ?x74) ?x74) ?x74) ?x74)))
 (let ((?x116 (concat (concat ?x114 ?x74) ?x17)))
 (let ((?x117 (bvsdiv (_ bv0 64) ?x116)))
 (let ((?x118 ((_ extract 31 0) ?x117)))
 (let ((?x119 (bvnot ?x118)))
 (let ((?x120 (bvor ?x119 ?x19)))
 (let ((?x121 (bvnot ?x120)))
 (let ((?x153 (bvmul (_ bv4294967295 32) ?x121)))
 (let ((?x15 ((_ extract 31 0) rcx)))
 (let ((?x123 (bvashr ?x15 (_ bv31 32))))
 (let ((?x124 (concat ?x123 ?x15)))
 (let ((?x268 (bvsdiv ?x124 ?x116)))
 (let ((?x269 ((_ extract 31 0) ?x268)))
 (let ((?x270 (bvnot ?x269)))
 (let ((?x271 (bvor ?x270 ?x19)))
 (let ((?x272 (bvnot ?x271)))
 (let ((?x179 (bvadd ?x272 ?x153)))
 (let (($x329 (= (_ bv0 32) ?x179)))
 (let (($x261 (bvsge (_ bv1 32) ?x17)))
 (let (($x26705 (and $x261 $x329 $x183 $x26 $x26276)))
 (let ((?x192 ((_ extract 7 0) r9)))
 (let ((?x331 ((_ extract 7 0) ?x117)))
 (let ((?x332 (bvnot ?x331)))
 (let ((?x300 (bvor ?x332 ?x192)))
 (let ((?x325 (bvnot ?x300)))
 (let ((?x182 ((_ extract 7 0) rsi)))
 (let ((?x326 (bvmul ?x182 ?x325)))
 (let ((?x20 ((_ extract 7 0) rdi)))
 (let ((?x327 (bvadd ?x20 ?x326)))
 (let ((?x26251 (concat (_ bv0 24) ?x327)))
 (let (($x26296 (= R ?x26251)))
 (let (($x63940 (and (distinct (_ bv0 32) ?x179) true)))
 (let (($x26325 (and $x261 $x63940 $x183 $x26 $x26296)))
 (let (($x54 (bvslt (_ bv1 32) ?x17)))
 (let ((?x840 (bvmul (_ bv4294967295 32) ?x272)))
 (let ((?x274 (bvmul (_ bv2 32) ?x15)))
 (let ((?x275 (bvashr ?x274 (_ bv31 32))))
 (let ((?x276 (concat ?x275 ?x274)))
 (let ((?x311 (bvsdiv ?x276 ?x116)))
 (let ((?x301 ((_ extract 31 0) ?x311)))
 (let ((?x284 (bvnot ?x301)))
 (let ((?x287 (bvor ?x284 ?x19)))
 (let ((?x330 (bvnot ?x287)))
 (let ((?x830 (bvadd ?x330 ?x840)))
 (let (($x907 (= (_ bv0 32) ?x830)))
 (let (($x298 (bvsge (_ bv2 32) ?x17)))
 (let (($x26281 (and $x298 $x907 $x54 $x329 $x183 $x26 $x26276)))
 (let ((?x389 ((_ extract 7 0) ?x268)))
 (let ((?x390 (bvnot ?x389)))
 (let ((?x350 (bvor ?x390 ?x192)))
 (let ((?x366 (bvnot ?x350)))
 (let ((?x378 (bvmul ?x182 ?x366)))
 (let ((?x345 (bvadd ?x20 ?x378)))
 (let ((?x25995 (concat (_ bv0 24) ?x345)))
 (let (($x25631 (= R ?x25995)))
 (let (($x13570 (and (distinct (_ bv0 32) ?x830) true)))
 (let (($x26198 (and $x298 $x13570 $x54 $x329 $x183 $x26 $x25631)))
 (let (($x26254 (and $x298 $x907 $x54 $x63940 $x183 $x26 $x26296)))
 (let (($x25400 (and $x298 $x13570 $x54 $x63940 $x183 $x26 $x25631)))
 (let (($x333 (bvslt (_ bv2 32) ?x17)))
 (let ((?x13063 (bvmul (_ bv4294967295 32) ?x330)))
 (let ((?x310 (bvmul (_ bv3 32) ?x15)))
 (let ((?x297 (bvashr ?x310 (_ bv31 32))))
 (let ((?x336 (concat ?x297 ?x310)))
 (let ((?x346 (bvsdiv ?x336 ?x116)))
 (let ((?x395 ((_ extract 31 0) ?x346)))
 (let ((?x386 (bvnot ?x395)))
 (let ((?x283 (bvor ?x386 ?x19)))
 (let ((?x385 (bvnot ?x283)))
 (let ((?x12814 (bvadd ?x385 ?x13063)))
 (let (($x13293 (= (_ bv0 32) ?x12814)))
 (let (($x373 (bvsge (_ bv3 32) ?x17)))
 (let (($x26234 (and $x373 $x13293 $x333 $x907 $x54 $x329 $x183 $x26 $x26276)))
 (let ((?x449 ((_ extract 7 0) ?x311)))
 (let ((?x450 (bvnot ?x449)))
 (let ((?x451 (bvor ?x450 ?x192)))
 (let ((?x408 (bvnot ?x451)))
 (let ((?x436 (bvmul ?x182 ?x408)))
 (let ((?x429 (bvadd ?x20 ?x436)))
 (let ((?x25669 (concat (_ bv0 24) ?x429)))
 (let (($x26250 (= R ?x25669)))
 (let (($x25610 (and (distinct (_ bv0 32) ?x12814) true)))
 (let (($x25435 (and $x373 $x25610 $x333 $x907 $x54 $x329 $x183 $x26 $x26250)))
 (let (($x26316 (and $x373 $x13293 $x333 $x13570 $x54 $x329 $x183 $x26 $x25631)))
 (let (($x26327 (and $x373 $x25610 $x333 $x13570 $x54 $x329 $x183 $x26 $x26250)))
 (let (($x26170 (and $x373 $x13293 $x333 $x907 $x54 $x63940 $x183 $x26 $x26296)))
 (let (($x26098 (and $x373 $x25610 $x333 $x907 $x54 $x63940 $x183 $x26 $x26250)))
 (let (($x26290 (and $x373 $x13293 $x333 $x13570 $x54 $x63940 $x183 $x26 $x25631)))
 (let (($x26304 (and $x373 $x25610 $x333 $x13570 $x54 $x63940 $x183 $x26 $x26250)))
 (let (($x26016 (or $x26304 $x26290 $x26098 $x26170 $x26327 $x26316 $x25435 $x26234 $x25400 $x26254 $x26198 $x26281 $x26325 $x26705 $x26299)))
 (let (($x25930 (and $x261 $x183 $x26 $x26296)))
 (let (($x26344 (and $x298 $x54 $x183 $x26 $x25631)))
 (let (($x13247 (and $x373 $x333 $x54 $x183 $x26 $x26250)))
 (let (($x26212 (or $x13247 $x26344 $x25930 $x26299)))
 (and $x26212 $x26016)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)