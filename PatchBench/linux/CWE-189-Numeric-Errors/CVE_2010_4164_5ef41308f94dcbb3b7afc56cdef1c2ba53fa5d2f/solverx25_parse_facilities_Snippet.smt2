; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x265 (= (_ bv0 32) R)))
 (let ((?x12 ((_ extract 7 0) rsi)))
 (let ((?x39 (bvand ?x12 (_ bv192 8))))
 (let (($x20 (= (_ bv128 8) ?x39)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x190 (bvule ?x6 (_ bv3 32))))
 (let (($x270 (and $x190 $x20 $x265)))
 (let (($x259 (= R ?x6)))
 (let (($x74 (and (distinct (_ bv128 8) ?x39) true)))
 (let ((?x92 (concat (concat (_ bv0 24) ((_ extract 7 6) rsi)) (_ bv0 6))))
 (let (($x171 (bvslt (_ bv128 32) ?x92)))
 (let (($x243 (and $x171 $x74 $x259)))
 (let ((?x91 (bvadd (_ bv4294967292 32) ?x6)))
 (let (($x244 (= R ?x91)))
 (let (($x210 (bvugt ?x6 (_ bv3 32))))
 (let (($x269 (and $x210 $x20 $x244)))
 (let (($x95 (bvsge (_ bv128 32) ?x92)))
 (let (($x14 (= (_ bv0 32) ?x92)))
 (let (($x193 (bvule ?x6 (_ bv1 32))))
 (let (($x268 (and $x193 $x14 $x95 $x74 $x265)))
 (let ((?x76 (bvadd (_ bv4294967294 32) ?x6)))
 (let (($x257 (= R ?x76)))
 (let (($x228 (bvugt ?x6 (_ bv1 32))))
 (let (($x267 (and $x228 $x14 $x95 $x74 $x257)))
 (let (($x16 (and (distinct (_ bv0 32) ?x92) true)))
 (let (($x79 (= (_ bv64 32) ?x92)))
 (let (($x253 (bvule ?x6 (_ bv2 32))))
 (let (($x266 (and $x253 $x79 $x16 $x95 $x74 $x265)))
 (let ((?x197 (bvadd (_ bv4294967293 32) ?x6)))
 (let (($x254 (= R ?x197)))
 (let (($x260 (bvugt ?x6 (_ bv2 32))))
 (let (($x264 (and $x260 $x79 $x16 $x95 $x74 $x254)))
 (let (($x271 (or $x264 $x266 $x267 $x268 $x269 $x243 $x270)))
 (let (($x274 (not $x271)))
 (let (($x242 (and $x20 $x244)))
 (let (($x258 (and $x14 $x95 $x74 $x257)))
 (let (($x255 (and $x79 $x16 $x95 $x74 $x254)))
 (let (($x245 (or $x255 $x258 $x243 $x242)))
 (let (($x273 (not $x245)))
 (let (($x275 (and $x273 $x274)))
 (let (($x272 (and $x245 $x271)))
 (let (($x276 (or $x272 $x275)))
 (not $x276))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
