#!/usr/bin/perl
#can be used with file-line-numbering.pl using pipe
use 5.18.0;
use warnings;

#take from argv or take default
my $source = shift @ARGV || "test.txt";
#open source file with IN as a handle
open IN, $source or die $!;
#store line by line in array
my @lineStorageArray = <IN>;
#sort array
@lineStorageArray = sort @lineStorageArray;
#output array to STDOUT
print @lineStorageArray;

