; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(assert
 (let ((?x52 ((_ extract 0 0) rdi)))
 (let (($x477 (= ?x52 (_ bv1 1))))
 (let (($x478 (not $x477)))
 (let (($x410 (= ?x52 (_ bv0 1))))
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let ((?x75 (bvadd ?x9 (concat (_ bv0 31) ((_ extract 31 31) rdi)))))
 (let ((?x76 ((_ extract 31 31) ?x75)))
 (let ((?x253 (concat ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x76 ?x75)))
 (let ((?x254 (bvashr ?x253 (_ bv1 64))))
 (let ((?x385 ((_ extract 0 0) ?x254)))
 (let (($x394 (= ?x385 (_ bv0 1))))
 (let (($x419 (not $x394)))
 (let ((?x258 (bvadd ((_ extract 31 0) ?x254) (concat (_ bv0 31) ((_ extract 31 31) ?x254)))))
 (let ((?x259 ((_ extract 31 31) ?x258)))
 (let ((?x290 (concat ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x259 ?x258)))
 (let ((?x291 (bvashr ?x290 (_ bv1 64))))
 (let ((?x367 ((_ extract 0 0) ?x291)))
 (let (($x376 (= ?x367 (_ bv0 1))))
 (let (($x415 (not $x376)))
 (let ((?x295 (bvadd ((_ extract 31 0) ?x291) (concat (_ bv0 31) ((_ extract 31 31) ?x291)))))
 (let ((?x296 ((_ extract 31 31) ?x295)))
 (let ((?x327 (concat ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x296 ?x295)))
 (let ((?x328 (bvashr ?x327 (_ bv1 64))))
 (let ((?x339 ((_ extract 0 0) ?x328)))
 (let (($x356 (= ?x339 (_ bv0 1))))
 (let (($x357 (not $x356)))
 (let (($x917 (and (or (and $x357 $x376 $x394 $x410) (and $x415 $x394 $x410) (and $x419 $x410)) $x478)))
 (let (($x886 (or (and (not $x410) $x477) $x917)))
 (and $x886))))))))))))))))))))))))))))))
(check-sat)
