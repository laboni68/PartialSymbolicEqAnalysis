(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun rdi () Int)         ; Declare integer variable rdi

; Declare boolean variables for the conditions
(declare-fun x201 () Bool)       ; x201 is true if R equals 0
(declare-fun x11 () Bool)        ; x11 is true if 4 >= rdi
(declare-fun x203 () Bool)       ; x203 is the conjunction of x11 and x201
(declare-fun x41 () Bool)        ; x41 is true if rdi > 4
(declare-fun x161 () Bool)       ; x161 is true if rdi > 6
(declare-fun x202 () Bool)       ; x202 is the conjunction of x161, x41, and x201
(declare-fun x209 () Bool)       ; x209 is true if R equals 4294967271
(declare-fun x45 () Bool)        ; x45 is true if 6 >= rdi
(declare-fun x176 () Bool)       ; x176 is true if 1 <= rdi
(declare-fun x178 () Bool)       ; x178 is true if 2 <= rdi
(declare-fun x181 () Bool)       ; x181 is true if 3 <= rdi
(declare-fun x186 () Bool)       ; x186 is true if 4 <= rdi
(declare-fun x182 () Bool)       ; x182 is true if 5 <= rdi
(declare-fun x40 () Bool)        ; x40 is true if 6 > rdi
(declare-fun x210 () Bool)       ; x210 is the conjunction of several conditions
(declare-fun x206 () Bool)       ; x206 is true if R equals 4294967266
(declare-fun x192 () Bool)       ; x192 is true if 6 <= rdi
(declare-fun x187 () Bool)       ; x187 is true if 7 > rdi
(declare-fun x207 () Bool)       ; x207 is the conjunction of several conditions
(declare-fun x211 () Bool)       ; x211 is the disjunction of x207, x210, x202, and x203
(declare-fun x46 () Int)         ; x46 is the result of 5 * rdi
(declare-fun x199 () Bool)       ; x199 is true if R equals x46
(declare-fun x200 () Bool)       ; x200 is the conjunction of x45, x41, and x199
(declare-fun x204 () Bool)       ; x204 is the disjunction of x200, x202, and x203

; Assignments for each variable based on their conditions
(assert (= x201 (= R 0)))          ; R equals 0
(assert (= x11 (>= 4 rdi)))        ; 4 >= rdi
(assert (= x203 (and x11 x201)))   ; x203 is the conjunction of x11 and x201
(assert (= x41 (> rdi 4)))         ; rdi > 4
(assert (= x161 (> rdi 6)))        ; rdi > 6
(assert (= x202 (and x161 x41 x201))) ; x202 is the conjunction of x161, x41, and x201
(assert (= x209 (= R 4294967271))) ; R equals 4294967271
(assert (= x45 (>= 6 rdi)))        ; 6 >= rdi
(assert (= x176 (<= 1 rdi)))       ; 1 <= rdi
(assert (= x178 (<= 2 rdi)))       ; 2 <= rdi
(assert (= x181 (<= 3 rdi)))       ; 3 <= rdi
(assert (= x186 (<= 4 rdi)))       ; 4 <= rdi
(assert (= x182 (<= 5 rdi)))       ; 5 <= rdi
(assert (= x40 (> 6 rdi)))         ; 6 > rdi
(assert (= x210 (and x40 x182 x186 x181 x178 x176 x45 x41 x209))) ; Several conditions for x210
(assert (= x206 (= R 4294967266))) ; R equals 4294967266
(assert (= x192 (<= 6 rdi)))       ; 6 <= rdi
(assert (= x187 (> 7 rdi)))        ; 7 > rdi
(assert (= x207 (and x187 x192 x182 x186 x181 x178 x176 x45 x41 x206))) ; Several conditions for x207
(assert (= x211 (or x207 x210 x202 x203))) ; x211 is the disjunction of x207, x210, x202, and x203
(assert (= x46 (* 5 rdi)))         ; x46 is the result of multiplying 5 by rdi
(assert (= x199 (= R x46)))        ; R equals x46
(assert (= x200 (and x45 x41 x199))) ; x200 is the conjunction of x45, x41, and x199
(assert (= x204 (or x200 x202 x203))) ; x204 is the disjunction of x200, x202, and x203

; Final assertion
(assert (and x204 x211))           ; The overall condition to be satisfied

(check-sat)                        ; Check satisfiability
