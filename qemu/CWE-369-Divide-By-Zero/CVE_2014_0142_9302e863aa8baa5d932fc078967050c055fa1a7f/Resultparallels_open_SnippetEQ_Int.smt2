(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun rdi () Int)         ; Declare integer variable rdi
(declare-fun x54 () Bool)        ; Declare Boolean variable x54
(declare-fun x6 () Int)          ; Declare integer variable for extracted bits from rdi
(declare-fun x59 () Bool)        ; Declare Boolean variable for distinct check
(declare-fun x68 () Bool)        ; Declare Boolean variable for comparison of x6 with 4186127
(declare-fun x67 () Bool)        ; Declare Boolean variable for conjunction of x68, x59, and x54
(declare-fun x62 () Bool)        ; Declare Boolean variable for checking if R equals 4294967274
(declare-fun x52 () Bool)        ; Declare Boolean variable for checking if x6 equals 0
(declare-fun x65 () Bool)        ; Declare Boolean variable for conjunction of x68, x52, and x62
(declare-fun x58 () Bool)        ; Declare Boolean variable for checking if R equals 4294967269
(declare-fun x168 () Bool)       ; Declare Boolean variable for comparison of x6 with 4186127
(declare-fun x66 () Bool)        ; Declare Boolean variable for conjunction of x168, x59, and x58
(declare-fun x64 () Bool)        ; Declare Boolean variable for OR operation
(declare-fun x11 () Bool)        ; Declare Boolean variable for greater than or equal check of 4186127 and x6
(declare-fun x172 () Bool)       ; Declare Boolean variable for conjunction of x11 and x54
(declare-fun x41 () Bool)        ; Declare Boolean variable for less than check of 4186127 and x6
(declare-fun x50 () Bool)        ; Declare Boolean variable for conjunction of x41 and x58
(declare-fun x175 () Bool)       ; Declare Boolean variable for OR operation

; Assert that R equals 0
(assert (= x54 (= R 0)))                 ; x54 is true if R equals 0

; Extract the lower 32 bits from rdi
(assert (= x6 rdi))  ; x6 is the lower 32 bits of rdi

; Assert that x59 is true if x6 is distinct from 0
(assert (= x59 (!= x6 0)))      ; x59 is true if x6 is distinct from 0

; Assert that x68 is true if x6 is less than or equal to 4186127
(assert (= x68 (<= x6 4186127)))      ; x68 is true if x6 <= 4186127

; Assert that x67 is true if x68, x59, and x54 are all true
(assert (= x67 (and x68 x59 x54)))    ; x67 is true if x68, x59, and x54 are true

; Assert that x62 is true if R equals 4294967274
(assert (= x62 (= R 4294967274)))     ; x62 is true if R equals 4294967274

; Assert that x52 is true if x6 equals 0
(assert (= x52 (= x6 0)))             ; x52 is true if x6 equals 0

; Assert that x65 is true if x68, x52, and x62 are all true
(assert (= x65 (and x68 x52 x62)))    ; x65 is true if x68, x52, and x62 are true

; Assert that x58 is true if R equals 4294967269
(assert (= x58 (= R 4294967269)))     ; x58 is true if R equals 4294967269

; Assert that x168 is true if x6 is greater than 4186127
(assert (= x168 (> x6 4186127)))      ; x168 is true if x6 > 4186127

; Assert that x66 is true if x168, x59, and x58 are all true
(assert (= x66 (and x168 x59 x58)))   ; x66 is true if x168, x59, and x58 are true

; Assert that x64 is true if any of x66, x65, or x67 are true
(assert (= x64 (or x66 x65 x67)))     ; x64 is true if any of x66, x65, or x67 are true

; Assert that x11 is true if 4186127 is greater than or equal to x6
(assert (= x11 (>= 4186127 x6)))      ; x11 is true if 4186127 >= x6

; Assert that x172 is true if x11 and x54 are both true
(assert (= x172 (and x11 x54)))       ; x172 is true if x11 and x54 are true

; Assert that x41 is true if 4186127 is less than x6
(assert (= x41 (< 4186127 x6)))       ; x41 is true if 4186127 < x6

; Assert that x50 is true if x41 and x58 are both true
(assert (= x50 (and x41 x58)))        ; x50 is true if x41 and x58 are true

; Assert that x175 is true if any of x50 or x172 are true
(assert (= x175 (or x50 x172)))       ; x175 is true if any of x50 or x172 are true

; Assert that the final result is true if both x175 and x64 are true
(assert (and x175 x64))               ; The overall condition to be satisfied

(check-sat)
