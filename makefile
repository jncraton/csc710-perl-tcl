all: readme.md PROG1.pl.test PROG1.tcl.test

%.test: %
	./$< 11 12 1 2 13 14 | grep -q "# of elements in @ARGV : 6" 
	./$< 11 12 1 2 13 14 | grep -q "Largest Index in @ARGV : 5" 
	./$< 11 12 1 2 13 14 | grep -q "List of elements in @ARGV : 11 12 1 2 13 14" 
	./$< 11 12 1 2 13 14 | grep -q "Reversed List of Elements : 14 13 2 1 12 11" 

	./$< 11 12 1 2 13 14 | grep -q "Sorted @ARGV by ASCII : 1 11 12 13 14 2" 
	./$< 11 12 1 2 13 14 | grep -q "Sorted @ARGV by number : 1 2 11 12 13 14" 
	./$< 11 12 1 2 13 14 | grep -q "Largest numeric value in @ARGV : 14" 
	./$< 11 12 1 2 13 14 | grep -q "Second element in @ARGV : 12" 

	./$< 1 2 3 -3 | grep -q "Reversed List of Elements : -3 3 2 1" 
	./$< 1 2 3 -3 | grep -q "Sorted @ARGV by number : -3 1 2 3"

	./$< 1 | grep -q "no second value" 
	./$< -1 | grep -q "no second value" 

readme.md: PROG1.pl PROG1.tcl readme.head.md perl.md tcl.md readme.tail.md 
	cat readme.head.md perl.md PROG1.pl tcl.md PROG1.tcl readme.tail.md > readme.md

	echo "./PROG1.pl 11 12 1 2 13 14" >> readme.md
	echo "\`\`\`" >> readme.md
	./PROG1.pl 11 12 1 2 13 14 >> readme.md
	echo "\`\`\`" >> readme.md

	echo "./PROG1.tcl 11 12 1 2 13 14" >> readme.md
	echo "\`\`\`" >> readme.md
	./PROG1.tcl 11 12 1 2 13 14 >> readme.md
	echo "\`\`\`" >> readme.md

clean:
	rm -f readme.md