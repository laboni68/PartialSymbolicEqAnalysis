(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun rsi () Int)         ; Declare integer variable rsi
(declare-fun rdx () Int)         ; Declare integer variable rdx
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun x1374 () Bool)      ; Declare Boolean variable x1374
(declare-fun x8 () Int)          ; Declare integer variable for extracted bits from rsi
(declare-fun x10 () Int)         ; Declare integer variable for extracted bits from rdx
(declare-fun x51 () Int)         ; Declare integer variable for sum of x8 and x10
(declare-fun x6 () Int)          ; Declare integer variable for extracted bits from rdi
(declare-fun x1112 () Bool)      ; Declare Boolean variable for comparison of x6 and x51
(declare-fun x1380 () Bool)      ; Declare Boolean variable for conjunction of x1112 and x1374
(declare-fun x1364 () Bool)      ; Declare Boolean variable for checking if R equals 0
(declare-fun x1336 () Bool)      ; Declare Boolean variable for comparison of x6 and x51
(declare-fun x1379 () Bool)      ; Declare Boolean variable for conjunction of x1336 and x1364
(declare-fun x1381 () Bool)      ; Declare Boolean variable for the result of OR operation
(declare-fun x39 () Bool)        ; Declare Boolean variable for comparison of x10 and x6
(declare-fun x1377 () Bool)      ; Declare Boolean variable for conjunction of x39 and x1374
(declare-fun x16 () Bool)        ; Declare Boolean variable for comparison of x10 and x6
(declare-fun x588 () Bool)       ; Declare Boolean variable for comparison of x8 and x6
(declare-fun x1376 () Bool)      ; Declare Boolean variable for conjunction involving x588, x16, and x1374
(declare-fun x71 () Bool)        ; Declare Boolean variable for comparison of x8 and x6
(declare-fun x1375 () Bool)      ; Declare Boolean variable for conjunction of x1112, x71, x16, and x1374
(declare-fun x1359 () Bool)      ; Declare Boolean variable for conjunction of x1336, x71, x16, and x1364
(declare-fun x1378 () Bool)      ; Declare Boolean variable for the final result of OR operations

; Assert that R equals 4294967293
(assert (= x1374 (= R 4294967293)))        ; x1374 is true if R equals 4294967293

; Extract the lower 32 bits from rsi, rdx, and rdi
(assert (= x8 rsi))  ; x8 is the lower 32 bits of rsi
(assert (= x10 rdx)) ; x10 is the lower 32 bits of rdx
(assert (= x6 rdi))  ; x6 is the lower 32 bits of rdi

; Assert that x51 is the sum of x10 and x8
(assert (= x51 (+ x10 x8)))       ; x51 is the sum of x10 and x8

; Assert that x1112 is true if x6 is less than x51
(assert (= x1112 (< x6 x51)))     ; x1112 is true if x6 < x51

; Assert that x1380 is true if both x1112 and x1374 are true
(assert (= x1380 (and x1112 x1374))) ; x1380 is true if x1112 and x1374 are true

; Assert that x1364 is true if R equals 0
(assert (= x1364 (= R 0)))        ; x1364 is true if R equals 0

; Assert that x1336 is true if x6 is greater than or equal to x51
(assert (= x1336 (>= x6 x51)))    ; x1336 is true if x6 >= x51

; Assert that x1379 is true if both x1336 and x1364 are true
(assert (= x1379 (and x1336 x1364))) ; x1379 is true if x1336 and x1364 are true

; Assert that x1381 is true if either x1379 or x1380 is true
(assert (= x1381 (or x1379 x1380))) ; x1381 is true if either x1379 or x1380 is true

; Assert that x39 is true if x10 is greater than x6
(assert (= x39 (> x10 x6)))       ; x39 is true if x10 > x6

; Assert that x1377 is true if both x39 and x1374 are true
(assert (= x1377 (and x39 x1374))) ; x1377 is true if x39 and x1374 are true

; Assert that x16 is true if x10 is less than or equal to x6
(assert (= x16 (<= x10 x6)))      ; x16 is true if x10 <= x6

; Assert that x588 is true if x8 is greater than or equal to x6
(assert (= x588 (>= x8 x6)))      ; x588 is true if x8 >= x6

; Assert that x1376 is true if x588, x16, and x1374 are true
(assert (= x1376 (and x588 x16 x1374))) ; x1376 is true if x588, x16, and x1374 are true

; Assert that x71 is true if x8 is less than x6
(assert (= x71 (< x8 x6)))        ; x71 is true if x8 < x6

; Assert that x1375 is true if x1112, x71, x16, and x1374 are true
(assert (= x1375 (and x1112 x71 x16 x1374))) ; x1375 is true if x1112, x71, x16, and x1374 are true

; Assert that x1359 is true if x1336, x71, x16, and x1364 are true
(assert (= x1359 (and x1336 x71 x16 x1364))) ; x1359 is true if x1336, x71, x16, and x1364 are true

; Assert that x1378 is true if any of the previous results are true
(assert (= x1378 (or x1359 x1375 x1376 x1377))) ; x1378 is true if any of x1359, x1375, x1376, or x1377 are true

; Assert that the final result is true if both x1378 and x1381 are true
(assert (and x1378 x1381))         ; The overall condition to be satisfied

(check-sat)
