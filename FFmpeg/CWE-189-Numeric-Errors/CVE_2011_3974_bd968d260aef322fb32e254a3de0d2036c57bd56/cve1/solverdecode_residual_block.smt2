; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x245 (= (_ bv4294967295 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x13 (bvsge (_ bv58 32) ?x6)))
 (let ((?x22 ((_ zero_extend 32) ?x6)))
 (let ((?x49 (bvlshr ?x22 (_ bv31 64))))
 (let ((?x51 ((_ extract 0 0) ?x49)))
 (let ((?x44 (bvand ?x51 (_ bv1 1))))
 (let (($x59 (and (distinct (_ bv0 1) ?x44) true)))
 (let (($x249 (and $x59 $x13 $x245)))
 (let ((?x84 (bvadd (_ bv4294967237 32) ?x6)))
 (let ((?x85 ((_ extract 31 31) ?x84)))
 (let ((?x95 (concat (concat (concat (concat (concat ?x85 ?x85) ?x85) ?x85) ?x85) ?x85)))
 (let ((?x100 (concat (concat (concat (concat (concat ?x95 ?x85) ?x85) ?x85) ?x85) ?x85)))
 (let ((?x105 (concat (concat (concat (concat (concat ?x100 ?x85) ?x85) ?x85) ?x85) ?x85)))
 (let ((?x110 (concat (concat (concat (concat (concat ?x105 ?x85) ?x85) ?x85) ?x85) ?x85)))
 (let ((?x115 (concat (concat (concat (concat (concat ?x110 ?x85) ?x85) ?x85) ?x85) ?x85)))
 (let ((?x120 (concat (concat (concat (concat (concat ?x115 ?x85) ?x85) ?x85) ?x85) ?x85)))
 (let ((?x122 (concat (concat ?x120 ?x85) ?x84)))
 (let ((?x123 (bvashr ?x122 (_ bv1 64))))
 (let ((?x124 ((_ extract 31 0) ?x123)))
 (let ((?x125 (bvadd (_ bv1 32) ?x124)))
 (let (($x248 (= R ?x125)))
 (let (($x43 (bvslt (_ bv58 32) ?x6)))
 (let (($x257 (and $x43 $x248)))
 (let (($x216 (= (_ bv0 1) ?x44)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let (($x52 (= (_ bv0 32) ?x8)))
 (let (($x261 (and $x52 $x216 $x13 $x245)))
 (let (($x266 (= (_ bv90 32) R)))
 (let (($x63 (and (distinct (_ bv0 32) ?x8) true)))
 (let (($x268 (and $x63 $x216 $x13 $x266)))
 (let (($x251 (or $x268 $x261 $x257 $x249)))
 (let (($x262 (not $x251)))
 (let (($x254 (and $x52 $x13 $x245)))
 (let (($x246 (and $x63 $x13 $x266)))
 (let (($x253 (or $x246 $x257 $x254)))
 (let (($x256 (not $x253)))
 (let (($x247 (and $x256 $x262)))
 (let (($x244 (and $x253 $x251)))
 (let (($x267 (or $x244 $x247)))
 (not $x267))))))))))))))))))))))))))))))))))))))))))
(check-sat)
