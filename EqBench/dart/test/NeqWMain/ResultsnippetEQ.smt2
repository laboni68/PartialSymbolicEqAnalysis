; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 128))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x36 (= (_ bv0 128) R)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x10 (bvmul (bvmul ?x6 ?x6) ?x6)))
 (let ((?x6888 ((_ zero_extend 32) ?x10)))
 (let ((?x44 (bvlshr ?x6888 (_ bv31 64))))
 (let ((?x8112 ((_ extract 0 0) ?x44)))
 (let ((?x5414 (bvand ?x8112 (_ bv1 1))))
 (let (($x6183 (and (distinct (_ bv0 1) ?x5414) true)))
 (let (($x46 (bvsge (_ bv0 32) ?x6)))
 (let (($x9717 (and $x46 $x6183 $x36)))
 (let (($x2865 (= (_ bv0 1) ?x5414)))
 (let (($x40 (and $x46 $x2865 $x36)))
 (let (($x5299 (= (_ bv4652007308841189376 128) R)))
 (let (($x9245 (bvslt (_ bv0 32) ?x6)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let (($x2708 (= (_ bv10 32) ?x8)))
 (let (($x132 (and $x2708 $x9245 $x6183 $x5299)))
 (let (($x1639 (and (distinct (_ bv10 32) ?x8) true)))
 (let (($x9619 (and $x1639 $x9245 $x6183 $x36)))
 (let (($x9168 (= (_ bv13875379345695965184 128) R)))
 (let (($x1575 (= (_ bv20 32) ?x8)))
 (let (($x4607 (and $x1575 $x9245 $x2865 $x9168)))
 (let (($x5910 (and (distinct (_ bv20 32) ?x8) true)))
 (let (($x34 (and $x5910 $x9245 $x2865 $x36)))
 (let (($x11721 (or $x34 $x4607 $x9619 $x132 $x40 $x9717)))
 (let (($x15 (bvsge (_ bv0 32) ?x10)))
 (let (($x8737 (and $x46 $x15 $x36)))
 (let (($x39 (bvslt (_ bv0 32) ?x10)))
 (let (($x2465 (and $x46 $x39 $x36)))
 (let (($x2464 (and $x1575 $x9245 $x15 $x9168)))
 (let (($x3631 (and $x5910 $x9245 $x15 $x36)))
 (let (($x5646 (and $x2708 $x9245 $x39 $x5299)))
 (let (($x1338 (and $x1639 $x9245 $x39 $x36)))
 (let (($x2233 (or $x1338 $x5646 $x3631 $x2464 $x2465 $x8737)))
 (and $x2233 $x11721))))))))))))))))))))))))))))))))))))
(check-sat)