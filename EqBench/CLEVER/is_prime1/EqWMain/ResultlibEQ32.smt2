; benchmark generated from python API
(set-info :status unknown)
(declare-fun R () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x16657 (= (_ bv0 32) R)))
 (let ((?x8 ((_ extract 31 0) rsi)))
 (let (($x12 (= (_ bv0 32) ?x8)))
 (let (($x16663 (and $x12 $x16657)))
 (let ((?x6 ((_ extract 31 0) rdi)))
 (let (($x10699 (= (_ bv2 32) ?x6)))
 (let ((?x89 (ite $x10699 (_ bv1 1) (_ bv0 1))))
 (let ((?x16674 (concat (_ bv0 31) ?x89)))
 (let (($x16675 (= R ?x16674)))
 (let (($x38 (and (distinct (_ bv0 32) ?x8) true)))
 (let ((?x57 ((_ extract 0 0) rdi)))
 (let (($x56 (= (_ bv0 1) ?x57)))
 (let (($x16676 (and $x56 $x38 $x16675)))
 (let (($x16645 (= (_ bv3 32) ?x6)))
 (let ((?x16642 (ite $x16645 (_ bv1 1) (_ bv0 1))))
 (let ((?x16671 (concat (_ bv0 31) ?x16642)))
 (let (($x16672 (= R ?x16671)))
 (let (($x63 (and (distinct (_ bv0 1) ?x57) true)))
 (let ((?x47 (concat (_ bv0 32) ?x6)))
 (let ((?x77 (bvurem ?x47 (_ bv3 64))))
 (let ((?x78 ((_ extract 31 0) ?x77)))
 (let (($x83 (= (_ bv0 32) ?x78)))
 (let (($x16673 (and $x83 $x63 $x38 $x16672)))
 (let (($x15205 (= (_ bv5 32) ?x6)))
 (let ((?x75 (ite $x15205 (_ bv1 1) (_ bv0 1))))
 (let ((?x16668 (concat (_ bv0 31) ?x75)))
 (let (($x16669 (= R ?x16668)))
 (let (($x7695 (and (distinct (_ bv0 32) ?x78) true)))
 (let ((?x76 (bvurem ?x47 (_ bv5 64))))
 (let ((?x73 ((_ extract 31 0) ?x76)))
 (let (($x10635 (= (_ bv0 32) ?x73)))
 (let (($x16670 (and $x10635 $x7695 $x63 $x38 $x16669)))
 (let (($x4802 (= (_ bv7 32) ?x6)))
 (let ((?x4796 (ite $x4802 (_ bv1 1) (_ bv0 1))))
 (let ((?x16665 (concat (_ bv0 31) ?x4796)))
 (let (($x16666 (= R ?x16665)))
 (let (($x13670 (and (distinct (_ bv0 32) ?x73) true)))
 (let ((?x79 (bvurem ?x47 (_ bv7 64))))
 (let ((?x50 ((_ extract 31 0) ?x79)))
 (let (($x7699 (= (_ bv0 32) ?x50)))
 (let (($x16667 (and $x7699 $x13670 $x7695 $x63 $x38 $x16666)))
 (let (($x16677 (or $x16667 $x16670 $x16673 $x16676 $x16663)))
 (let (($x16662 (and $x56 $x38 $x16657)))
 (let (($x16661 (and $x83 $x63 $x38 $x16657)))
 (let (($x16660 (and $x10635 $x7695 $x63 $x38 $x16657)))
 (let (($x16659 (and $x7699 $x13670 $x7695 $x63 $x38 $x16657)))
 (let (($x16664 (or $x16659 $x16660 $x16661 $x16662 $x16663)))
 (and $x16664 $x16677)))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)

