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
