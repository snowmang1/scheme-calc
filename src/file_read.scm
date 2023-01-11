;; These functions will read from file or from prompt and return specified
;; lexme

(define* (explode)
	;; get next char
	(define c (read-char in_file))
	(cond
		((not (eof-object? c))
		(display c)
		(explode))))
