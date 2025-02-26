; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdx () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x995 (= (_ bv5 32) R)))
 (let ((?x55 ((_ extract 4 0) rdx)))
 (let ((?x45 (bvmul (_ bv31 5) ?x55)))
 (let ((?x74 (bvadd (_ bv1 5) ?x45)))
 (let ((?x97 (concat (_ bv0 59) ?x74)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let ((?x2042 (bvadd (_ bv4294967295 32) ?x8)))
 (let ((?x2069 ((_ extract 31 31) ?x2042)))
 (let ((?x2055 (concat (concat (concat (concat (concat ?x2069 ?x2069) ?x2069) ?x2069) ?x2069) ?x2069)))
 (let ((?x1710 (concat (concat (concat (concat (concat ?x2055 ?x2069) ?x2069) ?x2069) ?x2069) ?x2069)))
 (let ((?x2183 (concat (concat (concat (concat (concat ?x1710 ?x2069) ?x2069) ?x2069) ?x2069) ?x2069)))
 (let ((?x2054 (concat (concat (concat (concat (concat ?x2183 ?x2069) ?x2069) ?x2069) ?x2069) ?x2069)))
 (let ((?x2189 (concat (concat (concat (concat (concat ?x2054 ?x2069) ?x2069) ?x2069) ?x2069) ?x2069)))
 (let ((?x2076 (concat (concat (concat (concat (concat ?x2189 ?x2069) ?x2069) ?x2069) ?x2069) ?x2069)))
 (let ((?x1701 (concat (concat ?x2076 ?x2069) ?x2042)))
 (let ((?x1706 (bvashr ?x1701 ?x97)))
 (let ((?x1674 ((_ extract 31 0) ?x1706)))
 (let (($x1992 (bvsge (_ bv0 32) ?x1674)))
 (let (($x981 (and $x1992 $x995)))
 (let (($x1614 (= (_ bv0 32) R)))
 (let (($x2222 (bvslt (_ bv0 32) ?x1674)))
 (let ((?x2219 (bvadd (_ bv4294967295 32) ?x1674)))
 (let (($x2214 (bvsge (_ bv0 32) ?x2219)))
 (let (($x1475 (and $x2214 $x2222 $x1614)))
 (let (($x2346 (bvslt (_ bv0 32) ?x2219)))
 (let ((?x2218 (bvadd (_ bv4294967294 32) ?x1674)))
 (let (($x3248 (bvsge (_ bv0 32) ?x2218)))
 (let (($x1615 (and $x3248 $x2346 $x2222 $x1614)))
 (let (($x3350 (bvslt (_ bv0 32) ?x2218)))
 (let ((?x3347 (bvadd (_ bv4294967293 32) ?x1674)))
 (let (($x3474 (bvsge (_ bv0 32) ?x3347)))
 (let (($x1011 (and $x3474 $x3350 $x2346 $x2222 $x1614)))
 (let (($x3497 (bvslt (_ bv0 32) ?x3347)))
 (let ((?x1345 (bvadd (_ bv4294967292 32) ?x1674)))
 (let (($x3510 (bvsge (_ bv0 32) ?x1345)))
 (let (($x984 (and $x3510 $x3497 $x3350 $x2346 $x2222 $x1614)))
 (let (($x927 (bvslt (_ bv0 32) ?x1345)))
 (let ((?x874 (bvadd (_ bv4294967291 32) ?x1674)))
 (let (($x1831 (bvsge (_ bv0 32) ?x874)))
 (let (($x1479 (and $x1831 $x927 $x3497 $x3350 $x2346 $x2222 $x1614)))
 (let (($x244 (or $x1479 $x984 $x1011 $x1615 $x1475 $x981)))
 (let (($x469 (not $x244)))
 (let ((?x91 ((_ extract 31 31) rsi)))
 (let ((?x72 (concat (concat (concat (concat (concat ?x91 ?x91) ?x91) ?x91) ?x91) ?x91)))
 (let ((?x123 (concat (concat (concat (concat (concat ?x72 ?x91) ?x91) ?x91) ?x91) ?x91)))
 (let ((?x112 (concat (concat (concat (concat (concat ?x123 ?x91) ?x91) ?x91) ?x91) ?x91)))
 (let ((?x100 (concat (concat (concat (concat (concat ?x112 ?x91) ?x91) ?x91) ?x91) ?x91)))
 (let ((?x82 (concat (concat (concat (concat (concat ?x100 ?x91) ?x91) ?x91) ?x91) ?x91)))
 (let ((?x101 (concat (concat (concat (concat (concat ?x82 ?x91) ?x91) ?x91) ?x91) ?x91)))
 (let ((?x93 (concat (concat ?x101 ?x91) ?x8)))
 (let ((?x120 (bvashr ?x93 ?x97)))
 (let ((?x77 ((_ extract 31 0) ?x120)))
 (let (($x107 (bvsge (_ bv0 32) ?x77)))
 (let (($x1608 (and $x107 $x995)))
 (let (($x150 (bvslt (_ bv0 32) ?x77)))
 (let ((?x19 (bvadd (_ bv4294967295 32) ?x77)))
 (let (($x31 (bvsge (_ bv0 32) ?x19)))
 (let (($x1472 (and $x31 $x150 $x1614)))
 (let (($x620 (bvslt (_ bv0 32) ?x19)))
 (let ((?x147 (bvadd (_ bv4294967294 32) ?x77)))
 (let (($x665 (bvsge (_ bv0 32) ?x147)))
 (let (($x450 (and $x665 $x620 $x150 $x1614)))
 (let (($x696 (bvslt (_ bv0 32) ?x147)))
 (let ((?x712 (bvadd (_ bv4294967293 32) ?x77)))
 (let (($x1250 (bvsge (_ bv0 32) ?x712)))
 (let (($x1495 (and $x1250 $x696 $x620 $x150 $x1614)))
 (let (($x1419 (bvslt (_ bv0 32) ?x712)))
 (let ((?x1412 (bvadd (_ bv4294967292 32) ?x77)))
 (let (($x1454 (bvsge (_ bv0 32) ?x1412)))
 (let (($x1467 (and $x1454 $x1419 $x696 $x620 $x150 $x1614)))
 (let (($x1772 (bvslt (_ bv0 32) ?x1412)))
 (let ((?x1764 (bvadd (_ bv4294967291 32) ?x77)))
 (let (($x1622 (bvsge (_ bv0 32) ?x1764)))
 (let (($x1473 (and $x1622 $x1772 $x1419 $x696 $x620 $x150 $x1614)))
 (let (($x1623 (or $x1473 $x1467 $x1495 $x450 $x1472 $x1608)))
 (let (($x982 (not $x1623)))
 (let (($x979 (and $x982 $x469)))
 (let (($x2174 (and $x1623 $x244)))
 (let (($x277 (or $x2174 $x979)))
 (not $x277)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
