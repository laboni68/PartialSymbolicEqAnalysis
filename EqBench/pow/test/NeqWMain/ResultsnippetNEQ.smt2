; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x281 (= (_ bv10 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x12 (bvsge (_ bv0 32) ?x6)))
 (let (($x280 (and $x12 $x281)))
 (let (($x234 (= (_ bv14 32) R)))
 (let (($x42 (bvslt (_ bv0 32) ?x6)))
 (let ((?x52 (bvmul ?x6 ?x6)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let (($x57 (= ?x8 ?x52)))
 (let (($x4866 (bvsge (_ bv8 32) ?x8)))
 (let (($x294 (and $x4866 $x57 $x42 $x234)))
 (let (($x41 (= (_ bv13 32) R)))
 (let (($x4908 (bvslt (_ bv8 32) ?x8)))
 (let (($x278 (and $x4908 $x57 $x42 $x41)))
 (let (($x275 (= (_ bv24 32) R)))
 (let (($x3147 (and (distinct ?x8 ?x52) true)))
 (let (($x276 (and $x4866 $x3147 $x42 $x275)))
 (let (($x257 (= (_ bv28 32) R)))
 (let (($x250 (and $x4908 $x3147 $x42 $x257)))
 (let (($x302 (or $x250 $x276 $x278 $x294 $x280)))
 (let (($x284 (not $x302)))
 (let (($x266 (= (_ bv0 32) R)))
 (let (($x264 (and $x12 $x266)))
 (let (($x256 (= (_ bv4 32) R)))
 (let (($x245 (and $x4866 $x57 $x42 $x256)))
 (let (($x4985 (= (_ bv3 32) R)))
 (let (($x4983 (and $x4908 $x57 $x42 $x4985)))
 (let (($x253 (and $x4866 $x3147 $x42 $x234)))
 (let (($x32 (and $x4908 $x3147 $x42 $x41)))
 (let (($x247 (or $x32 $x253 $x4983 $x245 $x264)))
 (let (($x267 (not $x247)))
 (let (($x286 (and $x267 $x284)))
 (let (($x272 (and $x247 $x302)))
 (let (($x274 (or $x272 $x286)))
 (not $x274))))))))))))))))))))))))))))))))))))
(check-sat)