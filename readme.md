Perl and Tcl Example Scripts
============================

[![Build Status](https://travis-ci.org/jncraton/csc710-perl-tcl.svg?branch=master)](https://travis-ci.org/jncraton/csc710-perl-tcl)

Perl
----

Perl was created by Larry Wall in 1987 in order to make report processing simpler. Perl is notable for the inclusion of one of the powerful early regular expression engines. Perl was one of the first languages to incorporate a web-based module repository (CPAN), allowing easy sharing of code and modules to handle many tasks. The language has diverged into two similar languages. Perl 5 follows the older language design, while Perl 6 introduces many breaking changes.

[Information from https://en.wikipedia.org/wiki/Perl]

Below is the requested example script. It is also available directly as [PROG1.pl](PROG1.pl).

```perl
#!/usr/bin/perl

my $len = scalar(@ARGV);
my $max_index = $len - 1;
my @lex_sort = sort @ARGV;
my @num_sort = sort {$a <=> $b} @ARGV;
my @rev = reverse @ARGV;

my $second = "no second value";

if ($len > 1) {
  $second = @ARGV[1];
}

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
Second element in \@ARGV : $second
********************* THE END ******************
"
```

Tcl
---

Tcl is a language that came out of UC Berkeley in 1988. It was created by by John Ousterhout. Ousterhout was awarded the ACM Software System award in 1997 for Tcl/TK. The name was originally an acronym for Tool Command Language, but it typically written as Tcl instead of all caps.

The language is commonly embedded in C or other application to provide a flexible scripting environment. When combined with TK, Tcl provides a simple GUI engine, notably the default provided by Python. 

[Information from https://en.wikipedia.org/wiki/Tcl]

Below is the requested example script. It is also available directly as [PROG1.tcl](PROG1.tcl).

```tcl
#!/usr/bin/env tclsh

set max_index [expr $argc-1]

set lex_sort [lsort -ascii $argv]
set num_sort [lsort -real $argv]
set rev [lreverse $argv]

set second "no second value"

if {$argc > 1} {
  set second [lindex $argv 1]
}

puts "
********************* PROG 1 ********************
******* by Jon Craton ***************************
*************************************************
# of elements in \@ARGV : $argc
Largest Index in \@ARGV : $max_index
List of elements in \@ARGV : $argv 
Reversed List of Elements : $rev
*************************************************
Sorted \@ARGV by ASCII : $lex_sort
Sorted \@ARGV by number : $num_sort 
Largest numeric value in \@ARGV : [lindex $num_sort end]
Second element in \@ARGV : $second
********************* THE END ******************
"
```

Testing
-------

Both scripts passed the basic tests in the included makefile. These tests are verified by [TravisCI](https://travis-ci.org/jncraton/csc710-perl-tcl). You can also download the code and run the tests yourself.

Examples
--------

./PROG1.pl 11 12 1 2 13 14
```

********************* PROG 1 ********************
******* by Jon Craton ***************************
*************************************************
# of elements in @ARGV : 6
Largest Index in @ARGV : 5
List of elements in @ARGV : 11 12 1 2 13 14 
Reversed List of Elements : 14 13 2 1 12 11
*************************************************
Sorted @ARGV by ASCII : 1 11 12 13 14 2
Sorted @ARGV by number : 1 2 11 12 13 14
Largest numeric value in @ARGV : 14
Second element in @ARGV : 12
********************* THE END ******************
```
./PROG1.tcl 11 12 1 2 13 14
```

********************* PROG 1 ********************
******* by Jon Craton ***************************
*************************************************
# of elements in @ARGV : 6
Largest Index in @ARGV : 5
List of elements in @ARGV : 11 12 1 2 13 14 
Reversed List of Elements : 14 13 2 1 12 11
*************************************************
Sorted @ARGV by ASCII : 1 11 12 13 14 2
Sorted @ARGV by number : 1 2 11 12 13 14 
Largest numeric value in @ARGV : 14
Second element in @ARGV : 12
********************* THE END ******************

```
