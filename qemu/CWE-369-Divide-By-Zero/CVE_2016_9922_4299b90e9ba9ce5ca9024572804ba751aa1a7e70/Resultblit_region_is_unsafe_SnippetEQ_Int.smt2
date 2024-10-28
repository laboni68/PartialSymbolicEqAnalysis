(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun x1360 () Bool)      ; Declare Boolean variable x1360
(declare-fun x6 () Int)          ; Declare integer variable for extracted 32 bits from rdi
(declare-fun x949 () Bool)       ; Declare Boolean variable for checking if x6 equals 0
(declare-fun x1407 () Bool)      ; Declare Boolean variable for conjunction of x949 and x1360
(declare-fun x61 () Bool)        ; Declare Boolean variable for distinct check of x6
(declare-fun x7 () Int)          ; Declare integer variable for zero-extended x6
(declare-fun x11 () Int)         ; Declare integer variable for logical shift right of x7
(declare-fun x20 () Int)         ; Declare integer variable for extraction from x11
(declare-fun x27 () Int)         ; Declare integer variable for bitwise AND operation on x20
(declare-fun x26 () Bool)        ; Declare Boolean variable for distinct check of x27
(declare-fun x38 () Int)         ; Declare integer variable for extracted 31st bit from rdi
(declare-fun x77 () Int)         ; Declare integer variable for concatenation of x38
(declare-fun x104 () Int)        ; Declare integer variable for final concatenation
(declare-fun x105 () Int)        ; Declare integer variable for multiplication by 7
(declare-fun x106 () Int)        ; Declare integer variable for addition
(declare-fun x108 () Int)        ; Declare integer variable for logical shift right of x106
(declare-fun x109 () Int)        ; Declare integer variable for extraction from x108
(declare-fun x110 () Bool)       ; Declare Boolean variable for distinct check of x109
(declare-fun x1404 () Bool)      ; Declare Boolean variable for conjunction of x110, x26, x61, and x1360
(declare-fun x37 () Bool)        ; Declare Boolean variable for checking if R equals 0
(declare-fun x53 () Bool)        ; Declare Boolean variable for checking if x27 equals 0
(declare-fun x946 () Int)        ; Declare integer variable for addition
(declare-fun x777 () Bool)       ; Declare Boolean variable for comparison of x946 and max 64-bit integer
(declare-fun x1401 () Bool)      ; Declare Boolean variable for conjunction of x777, x53, x61, and x37
(declare-fun x876 () Bool)       ; Declare Boolean variable for checking if x946 is less than max 64-bit integer
(declare-fun x1336 () Bool)      ; Declare Boolean variable for conjunction of x876, x53, x61, and x1360
(declare-fun x927 () Bool)       ; Declare Boolean variable for checking if x109 equals 0
(declare-fun x1327 () Bool)      ; Declare Boolean variable for conjunction of x927, x26, x61, and x37
(declare-fun x1410 () Bool)      ; Declare Boolean variable for OR operation
(declare-fun x1309 () Bool)      ; Declare Boolean variable for conjunction of x110, x26, and x1360
(declare-fun x1237 () Bool)      ; Declare Boolean variable for conjunction of x777, x53, and x37
(declare-fun x1366 () Bool)      ; Declare Boolean variable for conjunction of x876, x53, and x1360
(declare-fun x51 () Bool)        ; Declare Boolean variable for conjunction of x927, x26, and x37
(declare-fun x1231 () Bool)      ; Declare Boolean variable for OR operation

; Assert that R equals 1
(assert (= R 1))                 ; x1360 is true if R equals 1

; Extract the lower 32 bits from rdi
(assert (= x6 (mod rdi 4294967296))) ; x6 is the lower 32 bits of rdi

; Assert that x949 is true if x6 equals 0
(assert (= x949 (= x6 0)))       ; x949 is true if x6 equals 0

; Assert that x1407 is true if both x949 and x1360 are true
(assert (= x1407 (and x949 x1360))) ; x1407 is true if x949 and x1360 are true

; Assert that x61 is true if x6 is distinct from 0
(assert (= x61 (not (= x6 0))))  ; x61 is true if x6 is distinct from 0

; Zero-extend x6 to 64 bits (in LIA, it is the same as x6)
(assert (= x7 x6))               ; Zero-extension to 64 bits in LIA

; Perform logical shift right of x7 by 31 bits
(assert (= x11 (div x7 (expt 2 31)))) ; Logical shift right by 31 bits is division by 2^31

; Extract the lowest bit of x11
(assert (= x20 (mod x11 2)))     ; x20 is the lowest bit of x11

; Perform bitwise AND of x20 with 1
(assert (= x27 (mod x20 2)))     ; x27 is x20 AND 1

; Assert that x26 is true if x27 is distinct from 0
(assert (= x26 (not (= x27 0)))) ; x26 is true if x27 is distinct from 0

; Extract the 31st bit from rdi (shift rdi right by 31 bits and extract the lowest bit)
(assert (= x38 (mod (div rdi (expt 2 31)) 2))) ; x38 is the 31st bit of rdi

; Concatenation of multiple bits of x38 (essentially, shifting and combining in LIA)
(assert (= x77 (+ (* x38 (expt 2 31)) (* x38 (expt 2 30)) (* x38 (expt 2 29)) (* x38 (expt 2 28)) (* x38 (expt 2 27)) x38)))

; Final concatenation of x38 and x6
(assert (= x104 (+ (* x77 (expt 2 32)) x6))) ; Concatenation in LIA

; Perform multiplication of x104 by 7
(assert (= x105 (* x104 7)))     ; x105 is x104 multiplied by 7

; Perform addition of 50 and x105
(assert (= x106 (+ 50 x105)))    ; x106 is 50 plus x105

; Perform logical shift right of x106 by 63 bits
(assert (= x108 (div x106 (expt 2 63)))) ; Logical shift right by 63 bits is division by 2^63

; Extract the lowest bit of x108
(assert (= x109 (mod x108 2)))   ; x109 is the lowest bit of x108

; Assert that x110 is true if x109 is distinct from 0
(assert (= x110 (not (= x109 0)))) ; x110 is true if x109 is distinct from 0

; Assert that x1404 is true if x110, x26, x61, and x1360 are all true
(assert (= x1404 (and x110 x26 x61 x1360))) ; x1404 is true if x110, x26, x61, and x1360 are true

; Assert that x37 is true if R equals 0
(assert (= x37 (= R 0)))         ; x37 is true if R equals 0

; Assert that x53 is true if x27 equals 0
(assert (= x53 (= x27 0)))       ; x53 is true if x27 equals 0

; Perform addition of 58 and x105
(assert (= x946 (+ 58 x105)))    ; x946 is 58 plus x105

; Assert that x777 is true if x946 is less than or equal to max 64-bit integer
(assert (= x777 (<= x946 18446744073709551615))) ; x777 checks if x946 <= 2^64-1

; Assert that x1401 is true if x777, x53, x61, and x37 are all true
(assert (= x1401 (and x777 x53 x61 x37))) ; x1401 is true if x777, x53, x61, and x37 are true

; Assert that x876 is true if x946 is less than max 64-bit integer
(assert (= x876 (< x946 18446744073709551615))) ; x876 checks if x946 < 2^64-1

; Assert that x1336 is true if x876, x53, x61, and x1360 are all true
(assert (= x1336 (and x876 x53 x61 x1360))) ; x1336 is true if x876, x53, x61, and x1360 are true

; Assert that x927 is true if x109 equals 0
(assert (= x927 (= x109 0)))     ; x927 is true if x109 equals 0

; Assert that x1327 is true if x927, x26, x61, and x37 are all true
(assert (= x1327 (and x927 x26 x61 x37))) ; x1327 is true if x927, x26, x61, and x37 are true

; Assert that x1410 is true if any of x1327, x1336, x1401, or x1404 are true
(assert (= x1410 (or x1327 x1336 x1401 x1404 x1407))) ; x1410 is true if any of x1327, x1336, x1401, x1404, or x1407 are true

; Assert that x1309 is true if x110, x26, and x1360 are all true
(assert (= x1309 (and x110 x26 x1360))) ; x1309 is true if x110, x26, and x1360 are true

; Assert that x1237 is true if x777, x53, and x37 are all true
(assert (= x1237 (and x777 x53 x37))) ; x1237 is true if x777, x53, and x37 are true

; Assert that x1366 is true if x876, x53, and x1360 are all true
(assert (= x1366 (and x876 x53 x1360))) ; x1366 is true if x876, x53, and x1360 are true

; Assert that x51 is true if x927, x26, and x37 are all true
(assert (= x51 (and x927 x26 x37))) ; x51 is true if x927, x26, and x37 are true

; Assert that x1231 is true if any of x51, x1366, x1237, or x1309 are true
(assert (= x1231 (or x51 x1366 x1237 x1309))) ; x1231 is true if any of x51, x1366, x1237, or x1309 are true

; Assert that the final result is true if both x1231 and x1410 are true
(assert (and x1231 x1410))       ; The overall condition to be satisfied

(check-sat)
