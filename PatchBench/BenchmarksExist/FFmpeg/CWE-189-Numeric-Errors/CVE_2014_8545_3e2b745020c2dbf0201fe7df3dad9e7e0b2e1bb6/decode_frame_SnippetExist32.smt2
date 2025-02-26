; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 64))
(declare-fun rsi () (_ BitVec 64))
(declare-fun rdx () (_ BitVec 64))
(assert
 (let ((?x9 ((_ extract 31 0) rdi)))
 (let (($x240 (= ?x9 (_ bv2 32))))
 (let ((?x13 ((_ extract 31 0) rsi)))
 (let (($x195 (= ?x13 (_ bv2 32))))
 (let (($x196 (not $x195)))
 (let (($x192 (= ?x13 (_ bv6 32))))
 (let (($x193 (not $x192)))
 (let (($x198 (= ?x13 (_ bv0 32))))
 (let (($x200 (= ?x9 (_ bv16 32))))
 (let (($x199 (not $x198)))
 (let ((?x44 ((_ extract 31 0) rdx)))
 (let (($x189 (= ?x44 (_ bv1 32))))
 (let (($x179 (= ?x13 (_ bv3 32))))
 (let (($x180 (not $x179)))
 (let (($x176 (= ?x9 (_ bv1 32))))
 (let (($x177 (not $x176)))
 (let (($x174 (= ?x13 (_ bv4 32))))
 (let (($x190 (not $x189)))
 (let (($x186 (= ?x44 (_ bv2 32))))
 (let (($x187 (not $x186)))
 (let (($x183 (= ?x44 (_ bv4 32))))
 (let (($x184 (not $x183)))
 (let (($x181 (= ?x44 (_ bv8 32))))
 (let (($x204 (not $x181)))
 (let (($x241 (not $x240)))
 (let (($x237 (= ?x9 (_ bv4 32))))
 (let (($x238 (not $x237)))
 (let (($x213 (= ?x9 (_ bv8 32))))
 (let (($x235 (not $x213)))
 (let (($x212 (not $x200)))
 (let (($x1487 (and $x176 $x180 $x186 $x190 $x212 $x235 $x238 $x241)))
 (let (($x1486 (and $x176 $x180 $x183 $x187 $x190 $x212 $x235 $x238 $x241)))
 (let (($x1485 (and $x176 $x204 $x184 $x187 $x190 $x212 $x235 $x238 $x241)))
 (let (($x1484 (and $x176 $x180 $x181 $x184 $x187 $x190 $x212 $x235 $x238 $x241)))
 (let (($x1756 (and (or $x1484 $x1485 $x1486 $x1487 (and $x176 $x180 $x189 $x212 $x235 $x238 $x241)) $x176 $x180 $x189 $x212 $x235 $x238 $x241)))
 (let (($x1482 (and $x235 $x177 $x180 $x189 $x212 $x199 $x193 $x196 $x240)))
 (let (($x1481 (and $x235 $x177 $x180 $x186 $x190 $x212 $x199 $x193 $x196 $x240)))
 (let (($x1480 (and $x235 $x177 $x180 $x183 $x187 $x190 $x212 $x199 $x193 $x196 $x240)))
 (let (($x1479 (and $x235 $x177 $x204 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x240)))
 (let (($x1478 (and $x235 $x177 $x180 $x181 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x240)))
 (let (($x1477 (and $x235 $x177 $x180 $x189 $x212 $x199 $x193 $x196 $x237)))
 (let (($x1476 (and $x177 $x180 $x189 $x212 $x235 $x238 $x241)))
 (let (($x1475 (and $x235 $x177 $x180 $x186 $x190 $x212 $x199 $x193 $x196 $x237)))
 (let (($x1474 (and $x177 $x180 $x186 $x190 $x212 $x235 $x238 $x241)))
 (let (($x1473 (and $x235 $x177 $x180 $x183 $x187 $x190 $x212 $x199 $x193 $x196 $x237)))
 (let (($x1472 (and $x235 $x177 $x204 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x237)))
 (let (($x1471 (and $x177 $x180 $x183 $x187 $x190 $x212 $x235 $x238 $x241)))
 (let (($x1470 (and $x177 $x204 $x184 $x187 $x190 $x212 $x235 $x238 $x241)))
 (let (($x1469 (and $x235 $x177 $x180 $x181 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x237)))
 (let (($x1468 (and $x177 $x180 $x181 $x184 $x187 $x190 $x212 $x235 $x238 $x241)))
 (let (($x207 (not $x174)))
 (let (($x1467 (and $x207 $x177 $x180 $x189 $x212 $x199 $x193 $x196 $x213)))
 (let (($x1466 (and $x207 $x177 $x180 $x189 $x193 $x196 $x199 $x200)))
 (let (($x1465 (and $x207 $x177 $x180 $x186 $x190 $x212 $x199 $x193 $x196 $x213)))
 (let (($x1464 (and $x207 $x177 $x180 $x186 $x190 $x193 $x196 $x199 $x200)))
 (let (($x1463 (and $x207 $x177 $x180 $x183 $x187 $x190 $x212 $x199 $x193 $x196 $x213)))
 (let (($x1462 (and $x207 $x177 $x204 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x213)))
 (let (($x1461 (and $x207 $x177 $x180 $x183 $x187 $x190 $x193 $x196 $x199 $x200)))
 (let (($x1460 (and $x207 $x177 $x204 $x184 $x187 $x190 $x193 $x196 $x199 $x200)))
 (let (($x1459 (and $x207 $x177 $x180 $x181 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x213)))
 (let (($x1458 (and $x207 $x177 $x180 $x181 $x184 $x187 $x190 $x193 $x196 $x199 $x200)))
 (let (($x1488 (or $x1458 $x1459 $x1460 $x1461 $x1462 $x1463 $x1464 $x1465 $x1466 $x1467 $x1468 $x1469 $x1470 $x1471 $x1472 $x1473 $x1474 $x1475 $x1476 $x1477 $x1478 $x1479 $x1480 $x1481 $x1482 $x1484 $x1485 $x1486 $x1487)))
 (let (($x1483 (or $x1458 $x1459 $x1460 $x1461 $x1462 $x1463 $x1464 $x1465 $x1466 $x1467 $x1468 $x1469 $x1470 $x1471 $x1472 $x1473 $x1474 $x1475 $x1476 $x1477 $x1478 $x1479 $x1480 $x1481 $x1482)))
 (let (($x2327 (or (and $x1483 $x1488) (and $x174 $x177 $x180 $x181 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x213) (and $x174 $x177 $x204 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x213) (and $x174 $x177 $x180 $x183 $x187 $x190 $x212 $x199 $x193 $x196 $x213) (and $x174 $x177 $x180 $x186 $x190 $x212 $x199 $x193 $x196 $x213) (and $x174 $x177 $x180 $x189 $x212 $x199 $x193 $x196 $x213) (and $x179 $x181 $x184 $x187 $x190 $x193 $x196 $x199 $x200) (and $x179 $x181 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x213) (and $x179 $x183 $x187 $x190 $x193 $x196 $x199 $x200) (and $x179 $x183 $x187 $x190 $x212 $x199 $x193 $x196 $x213) (and $x179 $x186 $x190 $x193 $x196 $x199 $x200) (and $x179 $x186 $x190 $x212 $x199 $x193 $x196 $x213) (and $x179 $x181 $x184 $x187 $x190 $x212 $x235 $x238 $x241) (and $x179 $x189 $x193 $x196 $x199 $x200) (and $x179 $x189 $x212 $x199 $x193 $x196 $x213) (and $x179 $x181 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x237) (and $x179 $x183 $x187 $x190 $x212 $x235 $x238 $x241) (and $x179 $x183 $x187 $x190 $x212 $x199 $x193 $x196 $x237) (and $x179 $x186 $x190 $x212 $x235 $x238 $x241) (and $x179 $x186 $x190 $x212 $x199 $x193 $x196 $x237) (and $x179 $x189 $x212 $x235 $x238 $x241) (and $x179 $x189 $x212 $x199 $x193 $x196 $x237) (and $x179 $x181 $x184 $x187 $x190 $x212 $x199 $x193 $x196 $x240) (and $x179 $x183 $x187 $x190 $x212 $x199 $x193 $x196 $x240) (and $x179 $x186 $x190 $x212 $x199 $x193 $x196 $x240) (and $x179 $x189 $x212 $x199 $x193 $x196 $x240) $x1756 (and $x174 $x177 $x180 $x181 $x184 $x187 $x190 $x193 $x196 $x199 $x200) (and $x174 $x177 $x204 $x184 $x187 $x190 $x193 $x196 $x199 $x200) (and $x174 $x177 $x180 $x183 $x187 $x190 $x193 $x196 $x199 $x200) (and $x174 $x177 $x180 $x186 $x190 $x193 $x196 $x199 $x200) (and $x174 $x177 $x180 $x189 $x193 $x196 $x199 $x200) (and $x195 $x213) (and $x195 $x237) (and $x195 $x240) (and $x195 $x199 $x200) (and $x192 $x196 $x199 $x200) (and $x192 $x196 $x213) (and $x192 $x196 $x237) (and $x192 $x196 $x240) (and $x198 $x193 $x196 $x213) (and $x198 $x193 $x196 $x237) (and $x198 $x193 $x196 $x240) (and $x198 $x200))))
 (and $x2327))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
