; benchmark generated from python API
(set-info :status unknown)
(declare-fun rcx () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(declare-fun rdx () (_ BitVec 32))
(assert
 (let ((?x9 ((_ extract 31 0) rcx)))
 (let (($x267 (bvule (_ bv50 32) ?x9)))
 (let ((?x19 ((_ extract 31 0) rsi)))
 (let ((?x16 ((_ extract 31 0) rdi)))
 (let ((?x17 (bvnot ?x16)))
 (let (($x332 (bvule ?x17 ?x19)))
 (let (($x333 (not $x332)))
 (let ((?x248 ((_ extract 31 6) rdx)))
 (let (($x260 (= ?x248 (_ bv0 26))))
 (let (($x144 (bvule (_ bv50 32) ?x16)))
 (let (($x145 (not $x144)))
 (let ((?x139 (bvadd ((_ extract 5 0) rdi) ((_ extract 5 0) rsi))))
 (let (($x141 (bvule ?x139 (_ bv50 6))))
 (let (($x132 (= ((_ extract 31 6) (bvadd ?x16 ?x19)) (_ bv0 26))))
 (let (($x142 (and $x132 $x141)))
 (let (($x143 (not $x142)))
 (let ((?x46 ((_ extract 2 0) rdx)))
 (let (($x330 (= ?x46 (_ bv4 3))))
 (let (($x331 (not $x330)))
 (let (($x309 (bvule ?x46 (_ bv4 3))))
 (let (($x343 (not $x309)))
 (let ((?x146 (concat (_ bv0 32) ?x9)))
 (let ((?x151 (bvadd (_ bv18446744073709551566 64) ?x146)))
 (let ((?x152 (concat (_ bv0 32) ?x19)))
 (let ((?x153 (bvmul (_ bv4 64) ?x152)))
 (let (($x154 (bvule ?x153 ?x151)))
 (let (($x280 (not $x154)))
 (let (($x300 (= ?x46 (_ bv1 3))))
 (let (($x301 (not $x300)))
 (let (($x298 (= ?x46 (_ bv2 3))))
 (let (($x337 (not $x298)))
 (let (($x272 (bvule ?x152 ?x151)))
 (let (($x282 (not $x272)))
 (let (($x295 (not $x267)))
 (let (($x1657 (or $x295 (and $x282 $x298 $x301 $x309 $x331 $x132 $x141 $x145 $x260 $x333 $x267) (and $x337 $x301 $x309 $x331 $x132 $x141 $x145 $x260 $x333 $x267) (and $x280 $x330 $x132 $x141 $x145 $x260 $x333 $x267) (and $x343 $x331 $x132 $x141 $x145 $x260 $x333 $x267) (and $x143 $x145 $x260 $x333 $x267) (and $x144 $x260 $x333 $x267) (and (not $x260) $x333 $x267) (and $x332 $x267))))
 (let ((?x225 ((_ extract 0 0) rdx)))
 (let (($x239 (= ?x225 (_ bv0 1))))
 (let ((?x197 ((_ extract 1 1) rdx)))
 (let (($x216 (= ?x197 (_ bv0 1))))
 (let ((?x165 ((_ extract 2 2) rdx)))
 (let (($x187 (= ?x165 (_ bv0 1))))
 (let (($x1648 (or $x295 (and $x143 $x145 $x154 (not $x187) $x216 $x239 $x260 $x267) (and $x143 $x145 $x272 (not $x216) $x239 $x260 $x267) (and $x144 $x154 (not $x187) $x216 $x239 $x260 $x267) (and $x144 $x272 (not $x216) $x239 $x260 $x267) (and $x280 (not $x187) $x216 $x239 $x260 $x267) (and $x282 (not $x216) $x239 $x260 $x267) (and $x187 $x216 $x239 $x260 $x267) (and (not $x260) $x267))))
 (let (($x1660 (or (and $x272 $x298 $x301 $x309 $x331 $x132 $x141 $x145 $x260 $x333 $x267) (and $x300 $x309 $x331 $x132 $x141 $x145 $x260 $x333 $x267) (and $x154 $x330 $x132 $x141 $x145 $x260 $x333 $x267))))
 (let (($x1518 (or (and (not $x239) $x260 $x267) (and $x132 $x141 $x145 $x272 (not $x216) $x239 $x260 $x267) (and $x132 $x141 $x145 $x154 (not $x187) $x216 $x239 $x260 $x267))))
 (let (($x1620 (or (and $x1518 $x1660) (and $x1648 $x1657))))
 (and $x1620)))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)

