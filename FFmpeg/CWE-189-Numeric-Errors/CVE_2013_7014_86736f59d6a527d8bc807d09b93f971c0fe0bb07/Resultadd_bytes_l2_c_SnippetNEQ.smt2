; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdi () (_ BitVec 64))
(assert
 (let (($x514 (= (_ bv1 64) R)))
 (let ((?x11 ((_ extract 31 0) rsi)))
 (let ((?x232 (bvsub ?x11 (_ bv8 32))))
 (let ((?x149 ((_ sign_extend 32) ?x232)))
 (let (($x164 (bvsgt (_ bv0 64) ?x149)))
 (let (($x515 (and $x164 $x514)))
 (let ((?x12 ((_ extract 7 0) rdi)))
 (let ((?x44 (concat (_ bv0 56) ?x12)))
 (let (($x506 (= R ?x44)))
 (let (($x17 (bvsle (_ bv0 64) ?x149)))
 (let (($x267 (bvsgt (_ bv8 64) ?x149)))
 (let (($x512 (and $x267 $x17 $x506)))
 (let ((?x40 (bvadd (_ bv8 64) ?x44)))
 (let (($x491 (= R ?x40)))
 (let (($x172 (bvsle (_ bv8 64) ?x149)))
 (let (($x494 (bvsgt (_ bv16 64) ?x149)))
 (let (($x511 (and $x494 $x172 $x17 $x491)))
 (let ((?x54 (bvadd (_ bv16 64) ?x44)))
 (let (($x493 (= R ?x54)))
 (let (($x486 (bvsle (_ bv16 64) ?x149)))
 (let (($x505 (bvsgt (_ bv24 64) ?x149)))
 (let (($x510 (and $x505 $x486 $x172 $x17 $x493)))
 (let (($x516 (or $x510 $x511 $x512 $x515)))
 (let (($x519 (not $x516)))
 (let ((?x13 ((_ sign_extend 32) ?x11)))
 (let ((?x15 (bvadd ?x13 (_ bv18446744073709551608 64))))
 (let (($x43 (bvuge ?x15 (_ bv0 64))))
 (let (($x46 (bvult ?x15 (_ bv8 64))))
 (let (($x508 (and $x46 $x43 $x506)))
 (let (($x123 (bvuge ?x15 (_ bv8 64))))
 (let (($x7 (bvult ?x15 (_ bv16 64))))
 (let (($x507 (and $x7 $x123 $x43 $x491)))
 (let (($x216 (bvuge ?x15 (_ bv16 64))))
 (let (($x60 (bvult ?x15 (_ bv24 64))))
 (let (($x492 (and $x60 $x216 $x123 $x43 $x493)))
 (let (($x509 (or $x492 $x507 $x508)))
 (let (($x518 (not $x509)))
 (let (($x520 (and $x518 $x519)))
 (let (($x517 (and $x509 $x516)))
 (let (($x521 (or $x517 $x520)))
 (not $x521))))))))))))))))))))))))))))))))))))))))))
(check-sat)
