all: readme.md PROG1.pl.test PROG1.tcl.test

%.test: %
	./$< 11 12 1 2 13 14 | grep -q "1 2 11 12 13 14" 
	./$< 11 12 1 2 13 14 | grep -q "1 11 12 13 14 2" 
	./$< 1 2 3 | grep -q "3 2 1" 
	./$< 1 | grep -q "no second value" 

readme.md: PROG1.pl PROG1.tcl readme.head.md 
	cat readme.head.md perl.md PROG1.pl tcl.md PROG1.tcl readme.tail.md > readme.md