; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x155 (= (_ bv4294967274 32) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x147 (bvsge (_ bv0 32) ?x6)))
 (let (($x268 (and $x147 $x155)))
 (let (($x169 (bvslt (_ bv0 32) ?x6)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let (($x173 (bvsge (_ bv0 32) ?x8)))
 (let (($x308 (and $x173 $x169 $x155)))
 (let ((?x38 (bvadd (_ bv30 32) ?x8)))
 (let ((?x47 (bvadd (_ bv15 32) ?x8)))
 (let ((?x32 ((_ extract 31 31) ?x47)))
 (let (($x77 (= (_ bv0 1) ?x32)))
 (let ((?x60 (ite $x77 ?x47 ?x38)))
 (let ((?x79 ((_ extract 31 31) ?x38)))
 (let ((?x48 (ite $x77 ?x32 ?x79)))
 (let ((?x74 (concat (concat (concat (concat (concat ?x48 ?x48) ?x48) ?x48) ?x48) ?x48)))
 (let ((?x72 (concat (concat (concat (concat (concat ?x74 ?x48) ?x48) ?x48) ?x48) ?x48)))
 (let ((?x66 (concat (concat (concat (concat (concat ?x72 ?x48) ?x48) ?x48) ?x48) ?x48)))
 (let ((?x85 (concat (concat (concat (concat (concat ?x66 ?x48) ?x48) ?x48) ?x48) ?x48)))
 (let ((?x90 (concat (concat (concat (concat (concat ?x85 ?x48) ?x48) ?x48) ?x48) ?x48)))
 (let ((?x95 (concat (concat (concat (concat (concat ?x90 ?x48) ?x48) ?x48) ?x48) ?x48)))
 (let ((?x97 (concat (concat ?x95 ?x48) ?x60)))
 (let ((?x98 (bvashr ?x97 (_ bv4 64))))
 (let ((?x99 ((_ extract 31 0) ?x98)))
 (let ((?x51 (bvadd (_ bv30 32) ?x6)))
 (let ((?x27 (bvadd (_ bv15 32) ?x6)))
 (let ((?x33 ((_ extract 31 31) ?x27)))
 (let (($x116 (= (_ bv0 1) ?x33)))
 (let ((?x102 (ite $x116 ?x27 ?x51)))
 (let ((?x55 ((_ extract 31 31) ?x51)))
 (let ((?x101 (ite $x116 ?x33 ?x55)))
 (let ((?x124 (concat (concat (concat (concat (concat ?x101 ?x101) ?x101) ?x101) ?x101) ?x101)))
 (let ((?x128 (concat (concat (concat (concat (concat ?x124 ?x101) ?x101) ?x101) ?x101) ?x101)))
 (let ((?x108 (concat (concat (concat (concat (concat ?x128 ?x101) ?x101) ?x101) ?x101) ?x101)))
 (let ((?x118 (concat (concat (concat (concat (concat ?x108 ?x101) ?x101) ?x101) ?x101) ?x101)))
 (let ((?x120 (concat (concat (concat (concat (concat ?x118 ?x101) ?x101) ?x101) ?x101) ?x101)))
 (let ((?x134 (concat (concat (concat (concat (concat ?x120 ?x101) ?x101) ?x101) ?x101) ?x101)))
 (let ((?x136 (concat (concat ?x134 ?x101) ?x102)))
 (let ((?x137 (bvashr ?x136 (_ bv4 64))))
 (let ((?x138 ((_ extract 31 0) ?x137)))
 (let ((?x279 (bvmul ?x138 ?x99)))
 (let (($x276 (= R ?x279)))
 (let (($x152 (bvslt (_ bv0 32) ?x8)))
 (let ((?x143 (bvsub ?x8 (_ bv4294967168 32))))
 (let ((?x207 ((_ zero_extend 32) ?x143)))
 (let ((?x183 (bvsub ?x6 (_ bv4294967168 32))))
 (let ((?x182 ((_ zero_extend 32) ?x183)))
 (let ((?x208 (bvmul ?x182 ?x207)))
 (let (($x213 (bvule ?x208 (_ bv268435454 64))))
 (let (($x206 (and $x213 $x152 $x169 $x276)))
 (let (($x254 (bvugt ?x208 (_ bv268435454 64))))
 (let (($x297 (and $x254 $x152 $x169 $x155)))
 (let (($x296 (or $x297 $x206 $x308 $x268)))
 (let (($x277 (not $x296)))
 (let (($x299 (and (distinct R ?x279) true)))
 (let (($x288 (and $x299 $x277)))
 (let (($x190 (and $x276 $x296)))
 (let (($x284 (or $x190 $x288)))
 (not $x284))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)