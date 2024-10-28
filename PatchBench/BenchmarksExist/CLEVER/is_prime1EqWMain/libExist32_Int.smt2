; benchmark generated from python API
(set-info :status unknown)
(declare-fun rdi () (_ BitVec 32))
(declare-fun rsi () (_ BitVec 32))
(declare-fun x9 () Int)            ; Extracted lower bits from rsi
(declare-fun x106 () Bool)         ; x106 is true if x9 is 0
(declare-fun x107 () Bool)         ; x107 is true if x9 is not 0
(declare-fun x24 () Int)           ; Extracted bit 0 from rdi
(declare-fun x103 () Bool)         ; x103 is true if x24 is 0
(declare-fun x104 () Bool)         ; x104 is true if x24 is not 0
(declare-fun x97 () Int)           ; Remainder of rdi divided by 3
(declare-fun x100 () Bool)         ; x100 is true if x97 is 0
(declare-fun x101 () Bool)         ; x101 is true if x97 is not 0
(declare-fun x91 () Int)           ; Remainder of rdi divided by 5
(declare-fun x94 () Bool)          ; x94 is true if x91 is 0
(declare-fun x95 () Bool)          ; x95 is true if x91 is not 0
(declare-fun x89 () Bool)          ; x89 is true if rdi % 7 is 0
(declare-fun x22660 () Bool)       ; A complex boolean expression
(declare-fun x22629 () Bool)       ; Another complex boolean expression

; Extract the lower bits of rsi and rdi
(assert (= x9 (mod rsi 4294967296)))          ; x9 is the lower 32 bits of rsi
(assert (= x24 (mod rdi 2)))                   ; Extracting the lowest bit from rdi
(assert (= x106 (= x9 0)))                     ; x106 is true if x9 is 0
(assert (= x107 (not x106)))                   ; x107 is true if x9 is not 0
(assert (= x103 (= x24 0)))                    ; x103 is true if x24 is 0
(assert (= x104 (not x103)))                   ; x104 is true if x24 is not 0

; Calculate the remainders using the unsigned division operation
(assert (= x97 (mod rdi  3)))  ; x97 is rdi mod 3
(assert (= x100 (= x97 0)))                    ; x100 is true if x97 is 0
(assert (= x101 (not x100)))                   ; x101 is true if x97 is not 0

(assert (= x91 (mod rdi 5)))  ; x91 is rdi mod 5
(assert (= x94 (= x91 0)))                     ; x94 is true if x91 is 0
(assert (= x95 (not x94)))                     ; x95 is true if x91 is not 0

(assert (= x89 (= (mod rdi 7) 0)))  ; x89 is true if rdi mod 7 is 0

; Complex assertions based on the previous computations
(assert (= x22660 (or x106 (and x89 x95 x101 x104 x107 (not (= (mod rdi 4294967296) 7))) 
                        (and x94 x101 x104 x107 (not (= (mod rdi 4294967296) 5))) 
                        (and x100 x104 x107 (not (= (mod rdi 4294967296) 3))) 
                        (and x103 x107 (not (= (mod rdi 4294967296) 2))))))

(assert (= x22629 (or x106 (and x89 x95 x101 x104 x107) 
                        (and x94 x101 x104 x107) 
                        (and x100 x104 x107) 
                        (and x103 x107))))

; Final assertion
(assert (and x22629 x22660))

(check-sat)
