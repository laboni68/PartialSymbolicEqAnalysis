; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x355 ((_ extract 0 0) rdi)))
 (let (($x364 (= ?x355 (_ bv0 1))))
 (let ((?x19 (concat (_ bv0 31) ((_ extract 31 31) rdi))))
 (let ((?x20 ((_ extract 31 0) rdi)))
 (let ((?x21 (bvadd ?x20 ?x19)))
 (let ((?x22 ((_ extract 31 31) ?x21)))
 (let ((?x447 (concat ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x22 ?x21)))
 (let ((?x448 (bvashr ?x447 (_ bv1 64))))
 (let (($x581 (= ((_ extract 0 0) ?x448) (_ bv0 1))))
 (let ((?x452 (bvadd ((_ extract 31 0) ?x448) (concat (_ bv0 31) ((_ extract 31 31) ?x448)))))
 (let ((?x453 ((_ extract 31 31) ?x452)))
 (let ((?x485 (concat ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x453 ?x452)))
 (let ((?x486 (bvashr ?x485 (_ bv1 64))))
 (let (($x563 (= ((_ extract 0 0) ?x486) (_ bv0 1))))
 (let ((?x490 (bvadd ((_ extract 31 0) ?x486) (concat (_ bv0 31) ((_ extract 31 31) ?x486)))))
 (let ((?x491 ((_ extract 31 31) ?x490)))
 (let ((?x523 (concat ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x491 ?x490)))
 (let (($x962 (and (not (= ((_ extract 0 0) (bvashr ?x523 (_ bv1 64))) (_ bv0 1))) $x563 $x581 $x364)))
 (let (($x965 (and (not $x563) $x581 $x364)))
 (let (($x968 (and (not $x581) $x364)))
 (let (($x377 (not $x364)))
 (let (($x945 (or $x377 $x968 $x965 $x962)))
 (let (($x971 (or $x962 $x965 $x968)))
 (and $x971 $x945)))))))))))))))))))))))))
(check-sat)