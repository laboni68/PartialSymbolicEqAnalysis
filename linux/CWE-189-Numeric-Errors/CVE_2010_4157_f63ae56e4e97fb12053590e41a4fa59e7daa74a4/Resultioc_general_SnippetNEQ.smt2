; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(assert
 (let (($x1316 (= (_ bv4294967274 32) R)))
 (let (($x56 (bvuge rdi (_ bv2147483648 64))))
 (let (($x1319 (and $x56 $x1316)))
 (let (($x40 (bvult rdi (_ bv2147483648 64))))
 (let (($x69 (bvuge rsi (_ bv2147483648 64))))
 (let (($x1318 (and $x69 $x40 $x1316)))
 (let (($x61 (bvult rsi (_ bv2147483648 64))))
 (let ((?x73 (bvadd rdi rsi)))
 (let (($x77 (bvuge ?x73 (_ bv2147483648 64))))
 (let (($x1317 (and $x77 $x61 $x40 $x1316)))
 (let (($x1310 (= (_ bv0 32) R)))
 (let (($x74 (bvult ?x73 (_ bv2147483648 64))))
 (let ((?x7 (bvadd rsi rdi)))
 (let (($x9 (= (_ bv0 64) ?x7)))
 (let (($x1314 (and $x9 $x74 $x61 $x40 $x1310)))
 (let (($x1308 (= (_ bv1 32) R)))
 (let (($x34 (and (distinct (_ bv0 64) ?x7) true)))
 (let (($x1313 (and $x34 $x74 $x61 $x40 $x1308)))
 (let (($x1320 (or $x1313 $x1314 $x1317 $x1318 $x1319)))
 (let (($x1323 (not $x1320)))
 (let (($x1311 (and $x9 $x1310)))
 (let (($x1307 (and $x34 $x1308)))
 (let (($x1312 (or $x1307 $x1311)))
 (let (($x1322 (not $x1312)))
 (let (($x1324 (and $x1322 $x1323)))
 (let (($x1321 (and $x1312 $x1320)))
 (let (($x1325 (or $x1321 $x1324)))
 (not $x1325)))))))))))))))))))))))))))))
(check-sat)