all: PROG1.pl.test PROG1.tcl.test

%.test: %
	./$< 11 12 1 2 13 14 | grep -q "1 2 11 12 13 14" 
	./$< 11 12 1 2 13 14 | grep -q "1 11 12 13 14 2" 
	./$< 1 2 3 | grep -q "3 2 1" 
	./$< 1 | grep -q "no second value" 
