; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x238 (= (_ bv0 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x11 (bvsge (_ bv8 32) ?x6)))
 (let (($x240 (and $x11 $x238)))
 (let (($x41 (bvslt (_ bv8 32) ?x6)))
 (let (($x161 (bvslt (_ bv11 32) ?x6)))
 (let (($x239 (and $x161 $x41 $x238)))
 (let (($x249 (= (_ bv4294967206 32) R)))
 (let (($x45 (bvsge (_ bv11 32) ?x6)))
 (let (($x184 (bvsle (_ bv1 32) ?x6)))
 (let (($x189 (bvsle (_ bv2 32) ?x6)))
 (let (($x183 (bvsle (_ bv3 32) ?x6)))
 (let (($x37 (bvsle (_ bv4 32) ?x6)))
 (let (($x32 (bvsle (_ bv5 32) ?x6)))
 (let (($x197 (bvsle (_ bv6 32) ?x6)))
 (let (($x200 (bvsle (_ bv7 32) ?x6)))
 (let (($x203 (bvsle (_ bv8 32) ?x6)))
 (let (($x210 (bvsle (_ bv9 32) ?x6)))
 (let (($x217 (bvsgt (_ bv10 32) ?x6)))
 (let (($x250 (and $x217 $x210 $x203 $x200 $x197 $x32 $x37 $x183 $x189 $x184 $x45 $x41 $x249)))
 (let (($x246 (= (_ bv4294967196 32) R)))
 (let (($x215 (bvsle (_ bv10 32) ?x6)))
 (let (($x228 (bvsgt (_ bv11 32) ?x6)))
 (let (($x247 (and $x228 $x215 $x210 $x203 $x200 $x197 $x32 $x37 $x183 $x189 $x184 $x45 $x41 $x246)))
 (let (($x243 (= (_ bv4294967186 32) R)))
 (let (($x221 (bvsle (_ bv11 32) ?x6)))
 (let (($x236 (bvsgt (_ bv12 32) ?x6)))
 (let (($x244 (and $x236 $x221 $x215 $x210 $x203 $x200 $x197 $x32 $x37 $x183 $x189 $x184 $x45 $x41 $x243)))
 (let (($x251 (or $x244 $x247 $x250 $x239 $x240)))
 (let ((?x176 (bvmul (_ bv10 32) ?x6)))
 (let (($x235 (= R ?x176)))
 (let (($x231 (and $x45 $x41 $x235)))
 (let (($x241 (or $x231 $x239 $x240)))
 (and $x241 $x251)))))))))))))))))))))))))))))))))))
(check-sat)
