(set-logic QF_LIA)               ; Use logic for Quantifier-Free Linear Integer Arithmetic
(declare-fun R () Int)           ; Declare integer variable R
(declare-fun rdi () Int)         ; Declare integer variable rdi

; Declare boolean variables for the conditions
(declare-fun x671 () Bool)       ; isRZero is true if R equals 0
(declare-fun x6 () Bool) ; isR4294967271 is true if R equals 4294967271
(declare-fun x62 () Bool) ; isR4294967266 is true if R equals 4294967266
(declare-fun x716 () Bool)   ; true if rdi < 4
(declare-fun x8 () Bool) ; true if rdi > 4
(declare-fun x198 () Bool) ; true if rdi > 6
(declare-fun x714 () Bool) ; true if rdi > 1
(declare-fun x489 () Bool) ; true if rdi > 2
(declare-fun x229 () Bool) ; true if rdi > 3
(declare-fun x715 () Bool) ; true if rdi > 5
(declare-fun x81 () Bool) ; true if rdi > 7
(declare-fun x712 () Bool)  ; true if rdi > 6
(declare-fun x199 () Bool)    ; true if rdi < 6
(declare-fun x124 () Bool)    ; true if rdi < 7
(declare-fun x713 () Bool)    ; true if rdi < 8
(declare-fun x123 () Bool)    ; true if rdi < 9
(declare-fun x710 () Bool)   ; true if rdi < 10
(declare-fun x () Bool)   ; true if rdi < 11
(declare-fun isLessThan12 () Bool)   ; true if rdi < 12
(declare-fun isLessThan13 () Bool)   ; true if rdi < 13
(declare-fun isLessThan14 () Bool)   ; true if rdi < 14
(declare-fun isLessThan15 () Bool)   ; true if rdi < 15
(declare-fun isLessThan16 () Bool)   ; true if rdi < 16
(declare-fun isLessThan17 () Bool)   ; true if rdi < 17
(declare-fun isLessThan18 () Bool)   ; true if rdi < 18
(declare-fun isLessThan19 () Bool)   ; true if rdi < 19
(declare-fun isLessThan20 () Bool)   ; true if rdi < 20
(declare-fun isLessThan21 () Bool)   ; true if rdi < 21
(declare-fun isLessThan22 () Bool)   ; true if rdi < 22
(declare-fun isLessThan23 () Bool)   ; true if rdi < 23
(declare-fun isLessThan24 () Bool)   ; true if rdi < 24
(declare-fun isLessThan25 () Bool)   ; true if rdi < 25
(declare-fun isLessThan26 () Bool)   ; true if rdi < 26
(declare-fun isLessThan27 () Bool)   ; true if rdi < 27

; Assignments for each variable based on their conditions
(assert (= isRZero (= R 0)))                    ; R equals 0
(assert (= isR4294967271 (= R 4294967271)))      ; R equals 4294967271
(assert (= isR4294967266 (= R 4294967266)))      ; R equals 4294967266
(assert (= isLessThan4 (< rdi 4)))               ; rdi < 4
(assert (= isGreaterThan4 (> rdi 4)))            ; rdi > 4
(assert (= isGreaterThan6 (> rdi 6)))            ; rdi > 6
(assert (= isGreaterThan1 (> rdi 1)))            ; rdi > 1
(assert (= isGreaterThan2 (> rdi 2)))            ; rdi > 2
(assert (= isGreaterThan3 (> rdi 3)))            ; rdi > 3
(assert (= isGreaterThan5 (> rdi 5)))            ; rdi > 5
(assert (= isGreaterThan7 (> rdi 7)))            ; rdi > 7
(assert (= isLessThan6 (< rdi 6)))               ; rdi < 6
(assert (= isLessThan7 (< rdi 7)))               ; rdi < 7
(assert (= isLessThan8 (< rdi 8)))               ; rdi < 8
(assert (= isLessThan9 (< rdi 9)))               ; rdi < 9
(assert (= isLessThan10 (< rdi 10)))             ; rdi < 10
(assert (= isLessThan11 (< rdi 11)))             ; rdi < 11
(assert (= isLessThan12 (< rdi 12)))             ; rdi < 12
(assert (= isLessThan13 (< rdi 13)))             ; rdi < 13
(assert (= isLessThan14 (< rdi 14)))             ; rdi < 14
(assert (= isLessThan15 (< rdi 15)))             ; rdi < 15
(assert (= isLessThan16 (< rdi 16)))             ; rdi < 16
(assert (= isLessThan17 (< rdi 17)))             ; rdi < 17
(assert (= isLessThan18 (< rdi 18)))             ; rdi < 18
(assert (= isLessThan19 (< rdi 19)))             ; rdi < 19
(assert (= isLessThan20 (< rdi 20)))             ; rdi < 20
(assert (= isLessThan21 (< rdi 21)))             ; rdi < 21
(assert (= isLessThan22 (< rdi 22)))             ; rdi < 22
(assert (= isLessThan23 (< rdi 23)))             ; rdi < 23
(assert (= isLessThan24 (< rdi 24)))             ; rdi < 24
(assert (= isLessThan25 (< rdi 25)))             ; rdi < 25
(assert (= isLessThan26 (< rdi 26)))             ; rdi < 26
(assert (= isLessThan27 (< rdi 27)))             ; rdi < 27

; Combine conditions into broader boolean variables
(declare-fun conditionA () Bool)  ; Combine conditions for R
(declare-fun conditionB () Bool)  ; Combine conditions for rdi

(assert (= conditionA (or isRZero isR4294967271 isR4294967266)))  ; Any of the specific R values
(assert (= conditionB (or (and isLessThan4 isGreaterThan5) (and isGreaterThan6 isGreaterThan4)))) ; Conditions for rdi

; Final assertion
(assert (and conditionA conditionB))          ; The overall condition to be satisfied

(check-sat)                                  ; Check satisfiability
