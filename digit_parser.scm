;; This function will read a value from the current place on the tape
;; to the first space character or eof-object
(define (read-value)
	;;read in whole digit
	(define (aux str)
		(define c (read-char in_file))
		(cond
			((not (string=? c ' '))
			 (aux (string-append str c)))
			((eof-object? c)
			 (values str #f))
			(else (values str #t))
		)
	)
)

