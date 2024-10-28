(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun rsi () Int)         ; Declare integer variable rsi
(declare-fun x300 () Bool)       ; Declare Boolean variable x300
(declare-fun x12 () Int)         ; Declare integer variable for extracted 16 bits from rdi
(declare-fun x17 () Bool)        ; Declare Boolean variable for checking if x12 equals 0
(declare-fun x302 () Bool)       ; Declare Boolean variable for conjunction of x17 and x300
(declare-fun x43 () Bool)        ; Declare Boolean variable for distinct check of x12
(declare-fun x76 () Int)         ; Declare integer variable for zero-extended x12
(declare-fun x11 () Int)         ; Declare integer variable for extracted 32 bits from rsi
(declare-fun x78 () Bool)        ; Declare Boolean variable for comparison of x11 and x76
(declare-fun x305 () Bool)       ; Declare Boolean variable for conjunction of x78, x43, and x300
(declare-fun x15 () Int)         ; Declare integer variable for zero-extended x12 to 64 bits
(declare-fun x54 () Int)         ; Declare integer variable for arithmetic shift right of x11
(declare-fun x55 () Int)         ; Declare integer variable for concatenation of x54 and x11
(declare-fun x62 () Int)         ; Declare integer variable for division of x55 by x15
(declare-fun x64 () Int)         ; Declare integer variable for extracted 32 bits from x62
(declare-fun x299 () Bool)       ; Declare Boolean variable for checking if R equals x64
(declare-fun x295 () Bool)       ; Declare Boolean variable for comparison of x11 and x76
(declare-fun x304 () Bool)       ; Declare Boolean variable for conjunction of x295, x43, and x299
(declare-fun x306 () Bool)       ; Declare Boolean variable for OR operation
(declare-fun x301 () Bool)       ; Declare Boolean variable for conjunction of x43 and x299
(declare-fun x303 () Bool)       ; Declare Boolean variable for OR operation

; Assert that R equals 0
(assert (= x300 (= R 0)))                 ; x300 is true if R equals 0

; Extract the lower 16 bits from rdi
(assert (= x12 (= rdi 0))) ; x12 is the lower 16 bits of rdi

; Assert that x17 is true if x12 equals 0
(assert (= x17 (= x12 0)))       ; x17 is true if x12 equals 0

; Assert that x302 is true if both x17 and x300 are true
(assert (= x302 (and x17 x300))) ; x302 is true if x17 and x300 are true

; Assert that x43 is true if x12 is distinct from 0
(assert (= x43 (!= x12 0))) ; x43 is true if x12 is distinct from 0

; Zero-extend x12 to 32 bits
(assert (= x76 x12))             ; Zero-extension doesn't affect the value in LIA

; Extract the lower 32 bits from rsi
(assert (= x11 rsi)) ; x11 is the lower 32 bits of rsi

; Assert that x78 is true if x11 is less than x76
(assert (= x78 (< x11 x76)))     ; x78 is true if x11 < x76

; Assert that x305 is true if x78, x43, and x300 are true
(assert (= x305 (and x78 x43 x300))) ; x305 is true if x78, x43, and x300 are true

; Zero-extend x12 to 64 bits (in LIA, it is the same as x12)
(assert (= x15 x12))             ; Zero-extension to 64 bits in LIA

; Arithmetic shift right of x11 by 31 bits
(assert (= x54 (div x11 (expt 2 31)))) ; x54 is the result of arithmetic shift right by 31 bits

; Concatenate x54 and x11 (in LIA, this concatenation translates to arithmetic operations)
(assert (= x55 (+ (* x54 4294967296) x11))) ; x55 is x54 shifted left and combined with x11

; Perform division of x55 by x15
(assert (= x62 (div x55 x15)))   ; x62 is the division of x55 by x15

; Extract the lower 32 bits of x62
(assert (= x64 x62)) ; x64 is the lower 32 bits of x62

; Assert that x299 is true if R equals x64
(assert (= x299 (= R x64)))      ; x299 is true if R equals x64

; Assert that x295 is true if x11 is greater than or equal to x76
(assert (= x295 (>= x11 x76)))   ; x295 is true if x11 >= x76

; Assert that x304 is true if x295, x43, and x299 are true
(assert (= x304 (and x295 x43 x299))) ; x304 is true if x295, x43, and x299 are true

; Assert that x306 is true if any of x304, x305, or x302 are true
(assert (= x306 (or x304 x305 x302))) ; x306 is true if any of x304, x305, or x302 are true

; Assert that x301 is true if x43 and x299 are true
(assert (= x301 (and x43 x299))) ; x301 is true if x43 and x299 are true

; Assert that x303 is true if any of x301 or x302 are true
(assert (= x303 (or x301 x302))) ; x303 is true if any of x301 or x302 are true

; Assert that the final result is true if both x303 and x306 are true
(assert (and x303 x306))         ; The overall condition to be satisfied

(check-sat)
