#!/usr/bin/perl

my $len = scalar(@ARGV);
my $max_index = $len - 1;
my @lex_sort = sort @ARGV;
my @num_sort = sort {$a <=> $b} @ARGV;
my @rev = reverse @ARGV;

print "
********************* PROG 1 ********************
******* by Jon Craton ***************************
*************************************************
# of elements in \@ARGV : $len
Largest Index in \@ARGV : $max_index
List of elements in \@ARGV : @ARGV 
Reversed List of Elements : @rev
*************************************************
Sorted \@ARGV by ASCII : @lex_sort
Sorted \@ARGV by number : @num_sort
Largest numeric value in \@ARGV : @num_sort[-1]
Second element in \@ARGV : @num_sort[-2] {if none it should print 'no second value'}
********************* THE END ******************
"
