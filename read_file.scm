
;; open file port
(define in_file (open-input-file "test_file.txt"))

(define* (explode)
	;; get next char
	(define c (read-char in_file))
	(cond
		((not (eof-object? c))
		(display c)
		(explode))
	)
)

