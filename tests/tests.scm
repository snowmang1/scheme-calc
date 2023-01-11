(load "../src/parsers.scm") ;; digit parsers
(load "../src/file_read.scm")		;; file parsers

;; test assertion
(define (parser-assert f expected name)
	(display (string-append "Test " (string-append name ", ")))
	(cond
		((string=? f expected)
			(display "Passed"))
		(else
			(display (string-append "Failed:\n" ))
			(display (string-append "Expected: " (string-append expected "\n")))
			(display (string-append "Recieved: " (string-append f "\n"))))))

;; open file port
(define in_file (open-input-file "in_file.txt"))

;; digit parsers
(parser-assert (get-number in_file) "-687\n" "get-number simple test")
