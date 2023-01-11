.PHONY: test

test: tests/tests.scm
	cd tests && guile --r7rs -L . tests.scm
