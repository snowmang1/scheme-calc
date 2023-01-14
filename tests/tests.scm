(load "../src/parsers.scm") ;; digit parsers
(load "../src/file_read.scm")		;; file parsers

;; test assertion
(define (parser-assert f expected name)
	(display (string-append "Test " (string-append name ", ")))
	(cond
		((string=? f expected)
			(display "Passed\n"))
		(else
			(display (string-append "Failed:\n"))
			(display (string-append "Expected: " (string-append expected "\n")))
			(display (string-append "Recieved: " (string-append f "\n"))))))

;; open file port
(define in_file (open-input-file "digit_test_file.txt"))
;; digit parsers
(parser-assert (get-number in_file) "-687\n" "get-number simple test")

;; open file port
(define in_file (open-input-file "name_test_file.txt"))
;; name parsers
(parser-assert (get-name in_file "") "joe" "get_name simple test")

;; open file port
(define in_file (open-input-file "name_test_file2.txt"))
;; name parsers
(parser-assert (get-name in_file "") "a'" "get_name prime test")
