test:
	./PROG1.pl 11 12 1 2 13 14 | grep -q "1 2 11 12 13 14" 
	./PROG1.pl 11 12 1 2 13 14 | grep -q "1 11 12 13 14 2" 
	./PROG1.pl 1 2 3 | grep -q "3 2 1" 
	./PROG1.pl 1 | grep -q "no second value" 