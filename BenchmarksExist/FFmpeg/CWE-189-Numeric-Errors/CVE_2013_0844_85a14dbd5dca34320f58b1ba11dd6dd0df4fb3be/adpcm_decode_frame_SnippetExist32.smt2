; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdx () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let ((?x15 (concat (_ bv0 59) (bvadd (_ bv1 5) (bvmul (_ bv31 5) ((_ extract 4 0) rdx))))))
 (let ((?x17 ((_ extract 31 0) rsi)))
 (let ((?x19 (bvadd (_ bv4294967295 32) ?x17)))
 (let ((?x20 ((_ extract 31 31) ?x19)))
 (let ((?x249 (concat ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x20 ?x19)))
 (let ((?x251 ((_ extract 31 0) (bvashr ?x249 ?x15))))
 (let (($x266 (bvsle ?x251 (_ bv0 32))))
 (let (($x267 (not $x266)))
 (let ((?x263 (bvadd (_ bv4294967295 32) ?x251)))
 (let (($x264 (bvsle ?x263 (_ bv0 32))))
 (let (($x265 (not $x264)))
 (let ((?x260 (bvadd (_ bv4294967294 32) ?x251)))
 (let (($x261 (bvsle ?x260 (_ bv0 32))))
 (let (($x262 (not $x261)))
 (let ((?x257 (bvadd (_ bv4294967293 32) ?x251)))
 (let (($x258 (bvsle ?x257 (_ bv0 32))))
 (let (($x259 (not $x258)))
 (let ((?x254 (bvadd (_ bv4294967292 32) ?x251)))
 (let (($x255 (bvsle ?x254 (_ bv0 32))))
 (let (($x256 (not $x255)))
 (let (($x253 (bvsle (bvadd (_ bv4294967291 32) ?x251) (_ bv0 32))))
 (let (($x2318 (or (and $x253 $x256 $x259 $x262 $x265 $x267) (and $x255 $x259 $x262 $x265 $x267) (and $x258 $x262 $x265 $x267) (and $x261 $x265 $x267) (and $x264 $x267))))
 (let ((?x84 ((_ extract 31 31) rsi)))
 (let ((?x191 (concat ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x84 ?x17)))
 (let ((?x193 ((_ extract 31 0) (bvashr ?x191 ?x15))))
 (let (($x208 (bvsle ?x193 (_ bv0 32))))
 (let (($x209 (not $x208)))
 (let ((?x205 (bvadd (_ bv4294967295 32) ?x193)))
 (let (($x206 (bvsle ?x205 (_ bv0 32))))
 (let (($x207 (not $x206)))
 (let ((?x202 (bvadd (_ bv4294967294 32) ?x193)))
 (let (($x203 (bvsle ?x202 (_ bv0 32))))
 (let (($x204 (not $x203)))
 (let ((?x199 (bvadd (_ bv4294967293 32) ?x193)))
 (let (($x200 (bvsle ?x199 (_ bv0 32))))
 (let (($x201 (not $x200)))
 (let ((?x196 (bvadd (_ bv4294967292 32) ?x193)))
 (let (($x197 (bvsle ?x196 (_ bv0 32))))
 (let (($x198 (not $x197)))
 (let (($x195 (bvsle (bvadd (_ bv4294967291 32) ?x193) (_ bv0 32))))
 (let (($x2312 (or (and $x195 $x198 $x201 $x204 $x207 $x209) (and $x197 $x201 $x204 $x207 $x209) (and $x200 $x204 $x207 $x209) (and $x203 $x207 $x209) (and $x206 $x209))))
 (let (($x2290 (or (and $x208 $x266) (and $x2312 $x2318))))
 (and $x2290))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
