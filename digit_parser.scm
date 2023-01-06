;; This function will get the following digit until the first space
(define (get-digit inf)
	(define n (read-char inf))
	(cond
		((string=? (string n) "-")
			(display "negative"))
		((string=? (string n) "+")
		 	(display "positive"))
		(else
			(display "Error"))))
