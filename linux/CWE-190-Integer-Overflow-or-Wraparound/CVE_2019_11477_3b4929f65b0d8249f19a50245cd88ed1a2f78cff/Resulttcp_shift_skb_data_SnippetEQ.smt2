; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 64))
(declare-fun rcx () (_ BitVec 64))
(declare-fun r8 () (_ BitVec 64))
(declare-fun rdi () (_ BitVec 64))
(declare-fun rdx () (_ BitVec 64))
(assert
 (let (($x159 (= (_ bv1 32) R)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let ((?x12 ((_ extract 31 0) rcx)))
 (let ((?x100 (bvadd ?x12 ?x8)))
 (let (($x124 (bvslt (_ bv524279 32) ?x100)))
 (let (($x245 (and $x124 $x159)))
 (let (($x116 (bvsge (_ bv524279 32) ?x100)))
 (let ((?x14 ((_ extract 31 0) r8)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let ((?x149 (bvadd ?x6 ?x14)))
 (let (($x157 (bvslt (_ bv65535 32) ?x149)))
 (let (($x154 (and $x157 $x116 $x159)))
 (let (($x151 (bvsge (_ bv65535 32) ?x149)))
 (let ((?x31 (bvadd (bvadd (bvadd ?x14 ?x8) ((_ extract 31 0) rdx)) ?x12)))
 (let (($x35 (= (_ bv0 32) ?x31)))
 (let (($x153 (and $x35 $x151 $x116 $x159)))
 (let (($x163 (= R ?x6)))
 (let (($x79 (and (distinct (_ bv0 32) ?x31) true)))
 (let (($x156 (and $x79 $x151 $x116 $x163)))
 (let (($x244 (or $x156 $x153 $x154 $x245)))
 (let (($x155 (and $x35 $x159)))
 (let (($x165 (and $x79 $x163)))
 (let (($x160 (or $x165 $x155)))
 (and $x160 $x244)))))))))))))))))))))))))
(check-sat)
