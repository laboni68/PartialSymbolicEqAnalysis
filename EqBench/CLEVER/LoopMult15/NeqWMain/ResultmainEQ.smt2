; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x263 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x11 (bvsge (_ bv12 32) ?x6)))
 (let (($x265 (and $x11 $x263)))
 (let (($x41 (bvslt (_ bv12 32) ?x6)))
 (let (($x160 (bvslt (_ bv15 32) ?x6)))
 (let (($x264 (and $x160 $x41 $x263)))
 (let (($x274 (= (_ bv4294967101 32) R)))
 (let (($x45 (bvsge (_ bv15 32) ?x6)))
 (let (($x31 (bvsle (_ bv1 32) ?x6)))
 (let (($x199 (bvsle (_ bv2 32) ?x6)))
 (let (($x195 (bvsle (_ bv3 32) ?x6)))
 (let (($x197 (bvsle (_ bv4 32) ?x6)))
 (let (($x196 (bvsle (_ bv5 32) ?x6)))
 (let (($x206 (bvsle (_ bv6 32) ?x6)))
 (let (($x210 (bvsle (_ bv7 32) ?x6)))
 (let (($x214 (bvsle (_ bv8 32) ?x6)))
 (let (($x212 (bvsle (_ bv9 32) ?x6)))
 (let (($x222 (bvsle (_ bv10 32) ?x6)))
 (let (($x227 (bvsle (_ bv11 32) ?x6)))
 (let (($x233 (bvsle (_ bv12 32) ?x6)))
 (let (($x236 (bvsle (_ bv13 32) ?x6)))
 (let (($x247 (bvsgt (_ bv14 32) ?x6)))
 (let (($x275 (and $x247 $x236 $x233 $x227 $x222 $x212 $x214 $x210 $x206 $x196 $x197 $x195 $x199 $x31 $x45 $x41 $x274)))
 (let (($x271 (= (_ bv4294967086 32) R)))
 (let (($x242 (bvsle (_ bv14 32) ?x6)))
 (let (($x254 (bvsgt (_ bv15 32) ?x6)))
 (let (($x272 (and $x254 $x242 $x236 $x233 $x227 $x222 $x212 $x214 $x210 $x206 $x196 $x197 $x195 $x199 $x31 $x45 $x41 $x271)))
 (let (($x268 (= (_ bv4294967071 32) R)))
 (let (($x249 (bvsle (_ bv15 32) ?x6)))
 (let (($x259 (bvsgt (_ bv16 32) ?x6)))
 (let (($x269 (and $x259 $x249 $x242 $x236 $x233 $x227 $x222 $x212 $x214 $x210 $x206 $x196 $x197 $x195 $x199 $x31 $x45 $x41 $x268)))
 (let (($x276 (or $x269 $x272 $x275 $x264 $x265)))
 (let ((?x186 (bvmul (_ bv15 32) ?x6)))
 (let (($x261 (= R ?x186)))
 (let (($x262 (and $x45 $x41 $x261)))
 (let (($x266 (or $x262 $x264 $x265)))
 (and $x266 $x276)))))))))))))))))))))))))))))))))))))))
(check-sat)
