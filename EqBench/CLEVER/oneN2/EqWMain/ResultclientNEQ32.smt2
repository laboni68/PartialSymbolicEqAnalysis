; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x982 (= R ?x6)))
 (let (($x159 (bvsge (_ bv11 32) ?x6)))
 (let ((?x40 (bvadd (_ bv4294967295 32) ?x6)))
 (let (($x392 (bvsgt ?x6 ?x40)))
 (let (($x399 (and $x392 $x159 $x982)))
 (let (($x164 (bvslt (_ bv11 32) ?x6)))
 (let (($x398 (and $x164 $x982)))
 (let (($x396 (= R ?x40)))
 (let (($x176 (bvsle ?x6 ?x40)))
 (let (($x397 (and $x176 $x159 $x396)))
 (let (($x400 (or $x397 $x398 $x399)))
 (let (($x403 (not $x400)))
 (let (($x41 (bvslt (_ bv10 32) ?x6)))
 (let (($x39 (and $x164 $x41 $x982)))
 (let (($x11 (bvsge (_ bv10 32) ?x6)))
 (let (($x52 (bvsle ?x6 ?x6)))
 (let (($x983 (and $x52 $x11 $x982)))
 (let (($x181 (= (_ bv11 32) R)))
 (let (($x178 (and $x159 $x41 $x181)))
 (let (($x186 (or $x178 $x983 $x39)))
 (let (($x402 (not $x186)))
 (let (($x404 (and $x402 $x403)))
 (let (($x401 (and $x186 $x400)))
 (let (($x405 (or $x401 $x404)))
 (not $x405)))))))))))))))))))))))))))
(check-sat)

