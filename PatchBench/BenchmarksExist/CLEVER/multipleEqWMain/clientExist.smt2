; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let ((?x11 (bvmul (_ bv30 32) ?x9)))
 (let ((?x12 ((_ extract 31 31) ?x11)))
 (let ((?x177 (concat ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x12 ?x11)))
 (let ((?x214 (bvashr ?x177 (_ bv31 64))))
 (let ((?x249 (bvmul (_ bv2147483647 31) ((_ extract 30 0) ?x214))))
 (let ((?x243 (bvmul (_ bv715827883 64) ?x177)))
 (let ((?x247 ((_ extract 62 32) ?x243)))
 (let ((?x322 (bvadd (concat (bvadd ((_ extract 61 32) ?x243) (bvmul (_ bv1073741823 30) ((_ extract 29 0) ?x214))) (_ bv0 1)) ?x247 ?x249)))
 (let (($x336 (= (concat ?x322 (_ bv0 1)) ?x11)))
 (let ((?x222 ((_ extract 31 0) ?x214)))
 (let ((?x233 (bvmul (_ bv4294967295 32) ?x222)))
 (let ((?x178 (bvmul (_ bv1717986919 64) ?x177)))
 (let ((?x179 ((_ extract 63 63) ?x178)))
 (let ((?x211 (concat ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ?x179 ((_ extract 63 32) ?x178))))
 (let ((?x212 (bvashr ?x211 (_ bv1 64))))
 (let ((?x220 ((_ extract 31 0) ?x212)))
 (let ((?x218 (concat (bvadd ((_ extract 29 0) ?x212) (bvmul (_ bv1073741823 30) ((_ extract 29 0) ?x214))) (_ bv0 2))))
 (let ((?x235 (bvadd ?x218 ?x220 ?x233)))
 (let (($x236 (= ?x11 ?x235)))
 (let (($x237 (not $x236)))
 (let (($x8051 (or (and $x236 $x336) (and $x237 (not $x336)))))
 (and $x8051))))))))))))))))))))))))
(check-sat)
