(set-info :status unknown)
(set-logic QF_LIA)                ; Use logic for Quantifier-Free Linear Integer Arithmetic

(declare-fun rdi () Int)          ; Declare integer variable rdi
(declare-fun x61 () Bool)         ; Declare Boolean variable x61
(declare-fun x58 () Bool)         ; Declare Boolean variable x58
(declare-fun x9 () Int)           ; Declare integer variable x9
(declare-fun x42 () Bool)         ; Declare Boolean variable x42
(declare-fun x264 () Bool)        ; Declare Boolean variable x264

; Extract the bits of rdi
(assert (= x9 rdi )) ; x9 is the lower 32 bits of rdi

; Assert that x61 is true if the last 3 bits of rdi are less than or equal to 6
(assert (= x61 (and (<= rdi 6) (>= rdi 0))))

; Assert that x58 is true if bits 31 to 3 of rdi are equal to 0 (i.e., the top 29 bits are zero)
(assert (= x58 (= (div rdi 8) 0))) ; Check if the top 29 bits are zero

; Assert that x42 is true if x9 is less than or equal to 6
(assert (= x42 (<= x9 6)))

; Create the compound condition x264
(assert (= x264 (or (and (not x42) (not (and x58 x61))) 
                     (and x42 x58 x61))))

; Assert the final condition that x264 is true
(assert x264)

(check-sat)
