; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(assert
 (let (($x64 (bvsle rdi (_ bv4 32))))
 (let (($x65 (not $x64)))
 (let (($x63 (bvsle rdi (_ bv6 32))))
 (let (($x68 (not $x63)))
 (let (($x248 (and $x68 $x65)))
 (let (($x250 (or $x64 $x248)))
 (let (($x249 (or $x64 (and (= ((_ extract 31 31) rdi) (_ bv0 1)) $x63 $x65) $x248)))
 (and $x249 $x250)))))))))
(check-sat)
