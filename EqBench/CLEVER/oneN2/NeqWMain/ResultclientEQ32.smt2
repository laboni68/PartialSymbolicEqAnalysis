; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun R () (_ BitVec 32))
(assert
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x181 (= R ?x6)))
 (let (($x41 (bvslt (_ bv10 32) ?x6)))
 (let (($x164 (bvslt (_ bv11 32) ?x6)))
 (let (($x39 (and $x164 $x41 $x181)))
 (let ((?x175 (bvadd (_ bv1 32) ?x6)))
 (let (($x392 (= R ?x175)))
 (let (($x11 (bvsge (_ bv10 32) ?x6)))
 (let (($x169 (bvsle ?x6 ?x175)))
 (let (($x393 (and $x169 $x11 $x392)))
 (let (($x171 (= (_ bv11 32) R)))
 (let (($x159 (bvsge (_ bv11 32) ?x6)))
 (let (($x176 (and $x159 $x41 $x171)))
 (let (($x394 (or $x176 $x393 $x39)))
 (let (($x52 (bvsle ?x6 ?x6)))
 (let (($x178 (and $x52 $x11 $x181)))
 (let (($x391 (or $x176 $x178 $x39)))
 (and $x391 $x394)))))))))))))))))))
(check-sat)

