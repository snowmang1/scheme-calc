;; 

;; -------------------------------- digit parsers
;; This is the digit parser that will grab sequential digits and stop at the
;; first space
(define (get-digit inf num)
	(define n (read-char inf))
	(cond
		((eof-object? n) num)
		(integer? (string->number (string n))
			(cond
				((string=? (string n) " ") num)
				(else
					(get-digit inf (string-append num (string n))))))
		(else	
			(display "error digits must be consecutive sequence of arabic-numerals"))))

;; This function will serve as the digit parser driver
;; it will see if the number is positive of negative, store this information
;; and call a parset to get the number
(define (get-number inf)
	(define n (read-char inf))
	(cond
		((string=? (string n) "-")
			(string-append (string n) (get-digit inf "")))
		((string=? (string n) "+")
		 	(string-append (string n) (get-digit inf "")))
		(else
			(display "Error"))))
