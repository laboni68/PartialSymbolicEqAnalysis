(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun rsi () Int)         ; Declare integer variable rsi
(declare-fun rdx () Int)         ; Declare integer variable rdx
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun x1370 () Bool)      ; Declare Boolean variable x1370
(declare-fun x8 () Int)          ; Declare integer variable for extracted bits from rsi
(declare-fun x10 () Int)         ; Declare integer variable for extracted bits from rdx
(declare-fun x52 () Int)         ; Declare integer variable for sum of x10 and x8
(declare-fun x6 () Int)          ; Declare integer variable for extracted bits from rdi
(declare-fun x827 () Bool)       ; Declare Boolean variable for comparison of x6 and x52
(declare-fun x1376 () Bool)      ; Declare Boolean variable for conjunction of x827 and x1370
(declare-fun x1361 () Bool)      ; Declare Boolean variable for checking if R equals x8
(declare-fun x1332 () Bool)      ; Declare Boolean variable for comparison of x6 and x52
(declare-fun x1375 () Bool)      ; Declare Boolean variable for conjunction of x1332 and x1361
(declare-fun x1377 () Bool)      ; Declare Boolean variable for the result of OR operation
(declare-fun x41 () Bool)        ; Declare Boolean variable for comparison of x8 and x6
(declare-fun x1373 () Bool)      ; Declare Boolean variable for conjunction of x41 and x1370
(declare-fun x16 () Bool)        ; Declare Boolean variable for comparison of x8 and x6
(declare-fun x553 () Bool)       ; Declare Boolean variable for comparison of x10 and x6
(declare-fun x1372 () Bool)      ; Declare Boolean variable for conjunction of x553, x16, and x1370
(declare-fun x72 () Bool)        ; Declare Boolean variable for comparison of x10 and x6
(declare-fun x1371 () Bool)      ; Declare Boolean variable for conjunction of x827, x72, x16, and x1370
(declare-fun x1356 () Bool)      ; Declare Boolean variable for conjunction of x1332, x72, x16, and x1361
(declare-fun x1374 () Bool)      ; Declare Boolean variable for the final result of OR operations

; Assert that R equals 0
(assert (= x1370 (= R 0)))                ; x1370 is true if R equals 0

; Extract the lower 32 bits from rsi, rdx, and rdi
(assert (= x8 rsi))  ; x8 is the lower 32 bits of rsi
(assert (= x10 rdx)) ; x10 is the lower 32 bits of rdx
(assert (= x6 rdi))  ; x6 is the lower 32 bits of rdi

; Assert that x52 is the sum of x10 and x8
(assert (= x52 (+ x10 x8)))       ; x52 is the sum of x10 and x8

; Assert that x827 is true if x6 is less than x52
(assert (= x827 (< x6 x52)))      ; x827 is true if x6 < x52

; Assert that x1376 is true if both x827 and x1370 are true
(assert (= x1376 (and x827 x1370))) ; x1376 is true if x827 and x1370 are true

; Assert that x1361 is true if R equals x8
(assert (= x1361 (= R x8)))       ; x1361 is true if R equals x8

; Assert that x1332 is true if x6 is greater than or equal to x52
(assert (= x1332 (>= x6 x52)))    ; x1332 is true if x6 >= x52

; Assert that x1375 is true if both x1332 and x1361 are true
(assert (= x1375 (and x1332 x1361))) ; x1375 is true if x1332 and x1361 are true

; Assert that x1377 is true if either x1375 or x1376 is true
(assert (= x1377 (or x1375 x1376))) ; x1377 is true if either x1375 or x1376 is true

; Assert that x41 is true if x8 is greater than or equal to x6
(assert (= x41 (>= x8 x6)))      ; x41 is true if x8 >= x6

; Assert that x1373 is true if both x41 and x1370 are true
(assert (= x1373 (and x41 x1370))) ; x1373 is true if x41 and x1370 are true

; Assert that x16 is true if x8 is less than x6
(assert (= x16 (< x8 x6)))        ; x16 is true if x8 < x6

; Assert that x553 is true if x10 is greater than or equal to x6
(assert (= x553 (>= x10 x6)))      ; x553 is true if x10 >= x6

; Assert that x1372 is true if x553, x16, and x1370 are true
(assert (= x1372 (and x553 x16 x1370))) ; x1372 is true if x553, x16, and x1370 are true

; Assert that x72 is true if x10 is less than x6
(assert (= x72 (< x10 x6)))        ; x72 is true if x10 < x6

; Assert that x1371 is true if x827, x72, x16, and x1370 are true
(assert (= x1371 (and x827 x72 x16 x1370))) ; x1371 is true if x827, x72, x16, and x1370 are true

; Assert that x1356 is true if x1332, x72, x16, and x1361 are true
(assert (= x1356 (and x1332 x72 x16 x1361))) ; x1356 is true if x1332, x72, x16, and x1361 are true

; Assert that x1374 is true if any of the previous results are true
(assert (= x1374 (or x1356 x1371 x1372 x1373))) ; x1374 is true if any of x1356, x1371, x1372, or x1373 are true

; Assert that the final result is true if both x1374 and x1377 are true
(assert (and x1374 x1377))         ; The overall condition to be satisfied

(check-sat)
