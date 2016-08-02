#!/usr/bin/perl
#string functions - length, chomp, chop, substr, lc, uc, ucfirst, reverse
use 5.18.0;
use warnings;

my $sample_string = "Recursion uses stacks to remember function calls and every computer has a stack size limit. So WHY use recursion?\n";
say "length before: " . length $sample_string;
chomp($sample_string);
say "length after chomp: " . length $sample_string;
chop($sample_string);
say "String after chop: " . $sample_string;
say "length after chop: " . length $sample_string;
#starting point and ending point
say substr $sample_string, 0, 10;
#start at 5th character
say substr $sample_string, 5;
substr($sample_string, 0, 10, 'foo ');
say $sample_string;
say "index of 'computer' in the string: ".index $sample_string, 'computer';
say "index of 'xin' in the string: " .index $sample_string, 'xin';
say scalar reverse($sample_string);
say lc $sample_string;
say uc $sample_string;
say ucfirst $sample_string;